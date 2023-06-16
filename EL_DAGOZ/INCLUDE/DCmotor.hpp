#include "mbed.h"


class DCmotor{
    private:
        DigitalOut enable;        // the enabler for R rotation
        PwmOut motor_R;             // the pwm channel for R rotation
        PwmOut motor_L;             // the pwm channel for L rotation
        double pwm;                 // the pwm value send by user
    
    public:
        // user defined constructor
        DCmotor(PinName enable_pin, PinName motor_pin_R, PinName motor_pin_L);

        // method to rotate the motor (seting the pwm)
        void rotate(float pwm);
};