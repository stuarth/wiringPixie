(ns wiring-pixie.gpio
  (require pixie.ffi-infer :as f))

(f/with-config {:library "wiringPi"
                :cxx-flag "-lwiringPi"
                :includes ["wiringPi.h"]}

  ;; CONSTS
  ;; modes
  (f/defglobal INPUT)
  (f/defglobal OUTPUT)
  (f/defglobal LOW)
  (f/defglobal HIGH)

  ;; pull up / down / none
  (f/defglobal PUD_OFF)
  (f/defglobal PUD_DOWN)
  (f/defglobal PUD_UP)

  ;; pwm
  (f/defglobal PWM_MODE_MS)
  (f/defglobal PWM_MODE_BAL)
  
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
  (f/defcfn analogWrite))
