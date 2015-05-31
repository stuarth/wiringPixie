(ns wiring-pixie.gpio
  (require pixie.ffi-infer :as f))

(f/with-config {:library "wiringPi"
                :cxx-flag "-lwiringPi"
                :includes ["wiringPi.h"]}

  ;; CONSTS
  ;; modes
  (f/defconst INPUT)
  (f/defconst OUTPUT)
  (f/defconst LOW)
  (f/defconst HIGH)

  ;; pull up / down / none
  (f/defconst PUD_OFF)
  (f/defconst PUD_DOWN)
  (f/defconst PUD_UP)

  ;; pwm
  (f/defconst PWM_MODE_MS)
  (f/defconst PWM_MODE_BAL)
  
  ;; FUNCTIONS
  (f/defcfn wiringPiSetup)
  (f/defcfn wiringPiSetupSys)
  (f/defcfn wiringPiSetupGpio)
  (f/defcfn wiringPiSetupPhys)
  (f/defcfn pinModeAlt)
  (f/defcfn pinMode)
  (f/defcfn pullUpDnControl)
  (f/defcfn digitalRead)
  (f/defcfn digitalWrite)
  (f/defcfn pwmWrite)
  (f/defcfn analogRead)
  (f/defcfn analogWrite)

  ;; pwm
  (f/defcfn pwmSetMode)
  (f/defcfn pwmSetRange)
  (f/defcfn pwmSetClock)
  (f/defcfn gpioClockSet)

  ;; additional arduino fns
  (f/defcfn delay)
  (f/defcfn delayMicroseconds)
  (f/defcfn millis)
  (f/defcfn micros))
