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

# loop do
#   an = arduino.analog_read 0
#   puts an
#   arduino.analog_write 11, an/4
#   sleep 0.1
# end

# arduino.on :digital_read do |pin, status|
#   puts "hi"
#   if pin == 13
#     puts "digital pin #{pin} changed : #{status}"
#   end
# end

# arduino.close
