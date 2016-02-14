require "rubygems"
require "arduino_firmata"

arduino = ArduinoFirmata.connect "/dev/tty.wchusbserial1410"
puts "firmata version #{arduino.version}"

loop do
  arduino.digital_write 13, true
  sleep 0.5
  arduino.digital_write 13, false
  sleep 0.5
end
