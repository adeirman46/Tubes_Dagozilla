#include "mbed.h"
#include <ros.h>
#include <control/HardwareCommand.h>
#include <control/EncoderData.h>

ros::NodeHandle  nh;
control::HardwareCommand hc_msg;
control::EncoderData en_msg;

class DCmotor{
    private:
        DigitalOut enable_R;        // the enabler for R rotation
        DigitalOut enable_L;        // the enabler for L rotation
        PwmOut motor_R;             // the pwm channel for R rotation
        PwmOut motor_L;             // the pwm channel for L rotation
        double pwm;                 // the pwm value send by user
    
    public:
        // user defined constructor
        DCmotor(PinName enable_pin_R, PinName enable_pin_L, PinName motor_pin_R, PinName motor_pin_L) : enable_R(enable_pin_R), enable_L(enable_pin_L), motor_R(motor_pin_R), motor_L(motor_pin_L){
            enable_R = 1;
            enable_L = 1;

            motor_R.write(0);
            motor_L.write(0);
        }

        // method to rotate the motor (seting the pwm)
        void rotate(float pwm){
                if (pwm >= 0){
                    motor_L.write(0);
                    motor_R.write(pwm);
                }
                else if (pwm < 0){
                    motor_R.write(0);
                    motor_L.write(abs(pwm));
                }
        }
};

DCmotor motor_FR(D2, D4, D3, D5);
DCmotor motor_FL(D7, D8, D6, D9);
DCmotor motor_BR(D12, D13, D10, D11);


void messageCb( const control::HardwareCommand& hardware_msg) {
    motor_FR.rotate(hardware_msg.motor1);
    motor_FL.rotate(hardware_msg.motor2);
    motor_BR.rotate(hardware_msg.motor3);
    hc_msg.motor1 = hardware_msg.motor1;
    hc_msg.motor2 = hardware_msg.motor2;
    hc_msg.motor3 = hardware_msg.motor3;
    hc_msg.motor4 = hardware_msg.motor4;
}

ros::Subscriber<control::HardwareCommand> sub("control/command/hardware", &messageCb);

ros::Publisher chatter("chatter", &hc_msg);
ros::Publisher enc_chatter("enc_chatter", &en_msg);

int main() {
    nh.initNode();
    nh.advertise(chatter);
    nh.advertise(enc_chatter);
    nh.subscribe(sub);

    en_msg.en_ext1 = 100;
    en_msg.en_ext2 = 110;
    en_msg.en_ext3 = 120;
    en_msg.en_in1 = 130;
    en_msg.en_in2 = 140;
    en_msg.en_in3 = 150;
    en_msg.en_in4 = 160;


    while (1) {
        chatter.publish(&hc_msg);
        enc_chatter.publish(&en_msg);
        nh.spinOnce();
        wait_ms(500);
        en_msg.en_ext1 += 0.1;
        en_msg.en_ext2 += 0.1;
        en_msg.en_ext3 += 0.1;
        en_msg.en_in1 += 0.1;
        en_msg.en_in2 += 0.1;
        en_msg.en_in3 += 0.1;
        en_msg.en_in4 += 0.1;
    }
}
