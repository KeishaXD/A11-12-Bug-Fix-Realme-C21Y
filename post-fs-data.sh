#!/system/bin/sh
# Max 10W Charger Limit for Realme C21Y
# Runs at boot

MODLOG=/data/local/tmp/max10w_charger.log
echo "Max 10W Charger Module Running..." > $MODLOG

# Ensure root
if [ "$(id -u)" != "0" ]; then
  echo "Not running as root!" >> $MODLOG
  exit 1
fi

# Realme C21Y USB charging current limits (example paths, may vary)
# Check actual sysfs paths in /sys/class/power_supply/usb/

USB_PATH="/sys/class/power_supply/usb"

# Set max charging voltage and current
# 5V = 5000 mV, 2A = 2000 mA
for file in max_voltage_mv input_current_ma constant_charge_current_max_ma; do
  if [ -f "$USB_PATH/$file" ]; then
    echo "Setting $file..." >> $MODLOG
    case $file in
      max_voltage_mv)
        echo 5000 > "$USB_PATH/$file"
        ;;
      input_current_ma|constant_charge_current_max_ma)
        echo 2000 > "$USB_PATH/$file"
        ;;
    esac
  fi
done

echo "Charging limited to 5V 2A (10W)." >> $MODLOG



# Enable OTG 
echo "1" > /sys/class/power_supply/usb/otg_switcher