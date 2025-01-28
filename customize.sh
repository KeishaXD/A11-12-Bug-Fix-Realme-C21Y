LATESTARTSERVICE=true

#!/system/bin/sh

# Menampilkan informasi awal
ui_print "=========================================="
ui_print "    A11 & A12 Bug Fix For GSI Realme C21Y"
ui_print "               By: KeishaXD"
ui_print "=========================================="
ui_print " "
sleep 1.5

# Menampilkan informasi perangkat
ui_print "📱 DEVICE INFORMATION 📱"
ui_print "------------------------------------------"
ui_print "    DEVICE         : $(getprop ro.build.product)"
ui_print "    MODEL          : $(getprop ro.product.model)"
ui_print "    MANUFACTURER   : $(getprop ro.product.manufacturer)"
ui_print "    PROCESSOR      : $(getprop ro.product.board)"
ui_print "    CPU            : $(getprop ro.hardware)"
ui_print "    ANDROID VERSION: $(getprop ro.build.version.release)"
ui_print "    KERNEL VERSION : $(uname -r)"
ui_print "    RAM            : $(free -m | grep Mem | awk '{print $2" MB"}')"
ui_print "------------------------------------------"
ui_print " "
sleep 1.5

# Menampilkan status pemasangan modul
ui_print "📦 INSTALLING MODULES... 📦"
ui_print "=========================================="
ui_print " "
sleep 1.5

