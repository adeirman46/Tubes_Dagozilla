#ifndef ENCODER_HPP
#define ENCODER_HPP

#include "mbed.h"

class Encoder {
public:
    Encoder(PinName pinA, PinName pinB);

    int getCount() const;

private:
    InterruptIn m_encoderA;
    InterruptIn m_encoderB;
    int m_count;

    void encoderISR();
};

#endif // ENCODER_HPP
