SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true
CLEANSERVICE=true
DEBUG=false
MODDIR=/data/adb/modules
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
REPLACE="
"
print_modname() {
    ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    sleep 1.5
    ui_print "
 ______     ______     ______   __     _____    
/\  == \   /\  __ \   /\  == \ /\ \   /\  __-.  
\ \  __<   \ \  __ \  \ \  _-/ \ \ \  \ \ \/\ \ 
 \ \_\ \_\  \ \_\ \_\  \ \_\    \ \_\  \ \____- 
  \/_/ /_/   \/_/\/_/   \/_/     \/_/   \/____/ 
                                                "
    sleep 1.5
    ui_print "
 ______   __  __     ______     ______    
/\  ___\ /\ \/\ \   /\  ___\   /\  ___\   
\ \  __\ \ \ \_\ \  \ \___  \  \ \  __\   
 \ \_\    \ \_____\  \/\_____\  \ \_____\ 
  \/_/     \/_____/   \/_____/   \/_____/ 
                                          "
    ui_print ""
    ui_print "Powered by Zyarexx Made by Love"
    ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    sleep 1.5
    ui_print ""
    ui_print "▌UNIVERSAL "
    ui_print " "
    sleep 1
    ui_print "▌VERSION ▰ v0.1"
    ui_print "▌DEVICE INFORMATIONS..."
    sleep 2
    ui_print "▌MODEL ▰ $(getprop ro.build.product)"
    ui_print "▌DEVICE ▰ $(getprop ro.product.model)"
    ui_print "▌BRAND ▰ $(getprop ro.product.system.manufacturer)"
    ui_print "▌PROCESSOR ▰ $(getprop ro.product.board)"
    ui_print "▌CPU ▰ $(getprop ro.hardware)"
    ui_print "▌ANDROID VERSION ▰ $(getprop ro.build.version.release)"
    ui_print "▌KERNEL ▰ $(uname -r)"
    ui_print "▌RAM ▰ $(free | grep Mem | awk '{print $2}')"
    sleep 2
    ui_print " "
    ui_print "▌Give Me Star On Github"
    ui_print ""
    sleep 1
    ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    sleep 1
    ui_print " "
    ui_print "╔▌Checking which ARM ur device has..."
    sleep 2
    ui_print "║"
    ui_print "╠▌Your ARM Is ▰ $(getprop ro.product.cpu.abi)"
    sleep 1
    ui_print "║"
    ui_print "╠▌Extracting and Moving files for ▰ $(getprop ro.product.cpu.abi)"
    [[ "$IS64BIT" == "true" ]] && tar -xf "$MODPATH/rapid.tar.xz" -C "$MODPATH" || tar -xf "$MODPATH/rapid.tar.xz" -C "$MODPATH"
    sleep 2.5
    ui_print "║"
    ui_print "╚══⇒ DONE .. All Scripts Placed Successfully!"
    ui_print ""
    ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    sleep 2
    ui_print " "
    ui_print "▌This Module is UNIVERSAL For All Devices!"
    ui_print " "
    ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print " "
    sleep 2
    ui_print "▌I Am Not Responsible For Any Problems "
    ui_print "▌You Will Face From This MODULE!"
    ui_print ""
    ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    sleep 1
}
on_install() {
    ui_print "▌Installing RapidFuse ▌"
    ui_print " "
    sleep 2
    ui_print " "
    ui_print "▌DONE ▌"
    rm -rf $TMPR
}
set_permissions() {
    set_perm_recursive $MODPATH 0 0 0755 0644
    set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}
SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
