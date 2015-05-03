# wiringPi(xie)

Control a RaspberryPI's GPIO with [Pixie](http://github.com/pixie-lang/pixie)

```clj
(require wiring-pixie.gpio :refer :all)

(def pin 7)

(wiringPiSetup)         ;; required first!
(pinMode pin OUTPUT)    ;; pin to OUTPUT
(digitalWrite pin HIGH) ;; set pin 7 to HIGH
```
## Installation

Add wiringPixie to your project.edn's dependencies

`[stuarth/wiringPixie "0.1.0-alpha"]`

Follow the [instructions on wiringPi's site](http://wiringpi.com/download-and-install/) to install wiringPi on your Raspberry Pi.

## About

wiringPixie is based on [wiringPi](http://wiringpi.com/)

## Addressing Pins

Pin numbers follow the [convention used by wiringPi](http://wiringpi.com/pins/)
