require "rubygems"
require "arduino_firmata"

arduino = ArduinoFirmata.connect "/dev/tty.wchusbserial1410"

arduino.pin_mode 2, ArduinoFirmata::INPUT # the number of the pushButton pin

loop do
  if arduino.digital_read 2
    puts "pin 2 on"
  else
    puts "pin 2 off"
  end
  sleep 0.1
end

# arduino.close
