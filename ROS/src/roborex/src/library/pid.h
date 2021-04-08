// Greg Attra
// 03/25/2021

#ifndef ROBOREX_PID
#define ROBOREX_PID

namespace roborex
{
    class PID
    {
        private:
            float kP;
            float kI;
            float kD;
            float delta;
            float e_aggregate;
            float e_old;

        public:
            PID(): kP(0), kI(0), kD(0) {}
            PID(float p, float i, float d, float dt): kP(p), kI(i), kD(d), delta(dt) {}
            float regulate(float e);
            void reset();
    };
}

#endif
