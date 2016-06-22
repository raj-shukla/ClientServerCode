#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#define ROWS 5
#define COLUMNS 24
#define THRESHHOLD 0
#define constA -10000
#define constB -10000

int globMinState[ROWS][COLUMNS] ;

float FindEnergy(float weight[ROWS][COLUMNS][ROWS][COLUMNS], int state[ROWS][COLUMNS], float input[ROWS][COLUMNS]) ;
void SwitchState(int *state) ;
void SaveSate(int *state) ;
int Constraint(int state[ROWS][COLUMNS]) ;

int main()
{
    float input[ROWS][COLUMNS] ;
    int state[ROWS][COLUMNS] ;
    float weight[ROWS][COLUMNS][ROWS][COLUMNS] ;
    float deviceOpTime[ROWS] = {0.5, 2.3, 0.28, 4.5, 9.0} ;
    float costTimeSlot[COLUMNS] ={92.84, 94.39, 92.2, 91.42, 92.58, 98.41, 96.48, 96.7, 96.91, 99.27, 96.89, 100.46, 97.66, 93.03, 94.05, 97.98, 92.04, 94.95, 96.32, 93.46, 94.77, 95.01, 92.74, 94.27};
    float T = 1 ;
    float energy, E1, E2, deltaE ;
    float  EnergyGlobMinCurr ; 
    float EnergyGlobMinPrev = 1000000;
    float switchP, randP ;
    int iteration, repetition ;
    int locX, locY ;
    float sum = 0 ;
    int i, j, k, l ;



    for(i = 0; i<ROWS; i++)
    {
        for(j=0; j<COLUMNS; j++)
        {
            for(k= 0; k<ROWS; k++)
            {
                for(l=0; l<COLUMNS; l++)
                {
                    if(i == k)
                    {
                        if(j == l)
                        {


                            weight[i][j][k][l] = 0 ;
                        }
                        else
                        {
                            weight [i][j][k][l] = constA/2 ;

                        }
                    }
                    else if (j == l)
                    {
                        if(i == k)
                        {
                            weight[i][j][k][l] = 0 ;
                        }
                        else
                        {
                            weight[i][j][k][l] = constB/2 ;
                        }

                    }
                    else
                    {
                        weight[i][j][k][l] = 0 ;
                    }
                }
            }
        }
    }

    for(i=0; i<ROWS; i++)
    {
        for(j=0; j<COLUMNS; j++)
        {
            input[i][j] = deviceOpTime[i]*costTimeSlot[j];
            state[i][j] = 0 ;

        }
    }

    state[3][2] = 1 ;



//    for(iteration =0; iteration <20; iteration ++)
		while (T > 0.0001)
    {
        for(repetition =0; repetition < 20; repetition++)
        {
            locX = rand()%ROWS ;
            locY = rand()%COLUMNS ;
            sum = 0 ;
            for(i=0; i<ROWS; i++)
            {
                for(j=0; j<COLUMNS; j++)
                {
                    sum = sum + state[i][j]*weight[i][j][locX][locY] ;
                }
            }
            sum = sum + input[locX][locY] ;
            if(sum > THRESHHOLD)
            {
                state[locX][locY] = 1 ;
            }
            else
            {
                E1 = FindEnergy(weight, state, input);
                SwitchState(&state[locX][locY]) ;
                E2 = FindEnergy(weight, state, input) ;
                SwitchState(&state[locX][locY]) ;
                deltaE = E2 - E1 ;
                randP = (rand()%1000)/1000.0 +0.00001;
                switchP = 1/(1 + (exp(-deltaE*(2/5))/T))  ;
                if ( switchP > randP)
                {
                    state[locX][locY] = 1 ;

                }
                else
                {
                    state[locX][locY] = 0 ;
                }


            }
            
            if( (FindEnergy(weight, state, input) > 0) &&  Constraint(state) == 1 )
            {
                EnergyGlobMinCurr = FindEnergy(weight, state, input); 
                if(EnergyGlobMinCurr <= EnergyGlobMinPrev)
                    {
                        SaveState(state);
                        EnergyGlobMinPrev = EnergyGlobMinCurr;
                    }
                
            }
            
            
        }
        T = 0.85*T ;
    }

    for(i = 0; i<ROWS; i++)
	  {
		    for(j=0; j<COLUMNS; j++)
		    {
			      printf("state[%d][%d] = %d \n", i, j, globMinState[i][j]) ;
		    }
    }
    
    printf("Energy =  %f", FindEnergy(weight, globMinState, input)) ;

    return 0 ;
}

float FindEnergy(float weight[ROWS][COLUMNS][ROWS][COLUMNS], int state[ROWS][COLUMNS], float input[ROWS][COLUMNS])
{
    float energy1 =0, energy2=0, energy = 0 ;
    int i, j, k, l ;
    for(i=0; i<ROWS; i++)
    {
        for(j=0;j<COLUMNS; j++)
            {
                for(k=0;k<ROWS; k++)
                {
                    for(l=0;l<COLUMNS; l++)
                    {
                        energy1 = energy1 + weight[i][j][k][l]*state[i][j]*state[k][l] ;
                    }

                }

            }
    }

    for(i=0; i<ROWS; i++)
    {
        for(j=0; j<COLUMNS; j++)
        {
            energy2 = energy2 + input[i][j]*state[i][j] ;
        }
    }

    energy = energy1 + energy2 ;
    return energy ;
}


void SaveState(int state[ROWS][COLUMNS])
{
    int i, j;
    for(i=0; i<ROWS; i++)
    {
        for(j=0; j<COLUMNS; j++)
        {
            globMinState[i][j] = state[i][j];
        }
    }
}

void SwitchState(int *state)
{
    if (*state == 0)
    {
        *state = 1;
    }
    else
    {
        *state = 0 ;
    }
}



int Constraint(int state[ROWS][COLUMNS])
{
    int sum ;
    int statusReturn = 1 ;
    int status[ROWS] ;
    int i, j;
    
    for(i=0; i<ROWS; i++)
    {
        sum = 0 ;
        for(j=0; j<COLUMNS; j++)
        {
            sum = sum + state[i][j] ;
        }
        status[i] = sum ;
    }
    
    for(i = 0; i< ROWS; i++)
    {
        if (status[i] != 1)
        {
            statusReturn = 0 ;
        }
    }
    
    
    return statusReturn ;
}
