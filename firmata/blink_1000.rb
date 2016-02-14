require "rubygems"
require "arduino_firmata"

# arduino = ArduinoFirmata.connect  # use default arduino
arduino = ArduinoFirmata.connect "/dev/tty.wchusbserial1410"
# arduino = ArduinoFirmata.connect "/dev/tty.wchusbserial1410", :bps => 57600
# arduino = ArduinoFirmata.connect "/dev/tty.wchusbserial1410", :nonblock_io => true

1000.times do
  arduino.digital_write 13, true
  sleep 0.05
  arduino.digital_write 13, false
end

arduino.close
