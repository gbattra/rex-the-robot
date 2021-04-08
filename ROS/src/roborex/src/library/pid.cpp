// Greg Attra
// 03/25/2021

#include "pid.h"

float roborex::PID::regulate(float e)
{
    float e_dot = e - e_old;
    e_aggregate += e;
    e_old = e;

    float u = (kP * e) + (kD * delta * e_dot) + (kI * delta * e_aggregate);

    return u;
}

void roborex::PID::reset()
{
    e_aggregate = 0;
}