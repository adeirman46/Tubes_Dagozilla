#include "PinNamesTypes.h"
#include "mbed.h"
#include <ros.h>
#include <control/HardwareCommand.h>
#include <control/EncoderData.h>
#include "INCLUDE/DCmotor.hpp"
#include "INCLUDE/Encoder.hpp"

ros::NodeHandle  nh;
control::HardwareCommand hc_msg;
control::EncoderData en_msg;

// constructor
DCmotor::DCmotor(PinName enable_pin, PinName motor_pin_R, PinName motor_pin_L) : enable(enable_pin), motor_R(motor_pin_R), motor_L(motor_pin_L){
    enable = 1;
    motor_R.period(0.0001);
    motor_L.period(0.0001);
    motor_R.write(0);
    motor_L.write(0);
}

// rotate method
void DCmotor::rotate(float pwm){
    if (pwm >= 0){
        motor_L.write(0);
        motor_R.write(pwm);
    }
    else if (pwm < 0){
        motor_R.write(0);
        motor_L.write(abs(pwm));
    }
}

DCmotor motor_FR(PB_9, PB_4, PB_14);
DCmotor motor_FL(PB_8, PB_5, PB_13);
DCmotor motor_BR(PA_7, PA_10, PB_2);
DCmotor motor_BL(PA_6, PB_3, PB_15);

// Encoder::Encoder(PinName pinA, PinName pinB)
//     : m_encoderA(pinA), m_encoderB(pinB), m_count(0) {
//     m_encoderA.rise(callback(this, &Encoder::encoderISR));
//     m_encoderA.fall(callback(this, &Encoder::encoderISR));
//     m_encoderB.rise(callback(this, &Encoder::encoderISR));
//     m_encoderB.fall(callback(this, &Encoder::encoderISR));
// }

// int Encoder::getCount() const {
//     return m_count;
// }

// void Encoder::encoderISR() {
//     bool a = m_encoderA.read();
//     bool b = m_encoderB.read();

//     if (a != b) {
//         m_count++;
//     } else {
//         m_count--;
//     }
// }

// Encoder en_ext1(PA_8, PA_9);
// Encoder en_ext2(PA_15, PB_3);
// Encoder en_ext3(PB_4, PB_5);


void messageCb( const control::HardwareCommand& hardware_msg) {
    motor_FR.rotate(hardware_msg.motor1);
    motor_FL.rotate(hardware_msg.motor2);
    motor_BR.rotate(hardware_msg.motor3);
    motor_BL.rotate(hardware_msg.motor4);
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


    while (1) {
        // en_msg.en_ext1 = en_ext1.getCount();
        // en_msg.en_ext2 = en_ext2.getCount();
        // en_msg.en_ext3 = en_ext3.getCount();
        chatter.publish(&hc_msg);
        enc_chatter.publish(&en_msg);
        nh.spinOnce();
        wait(0.05);
    }
}
