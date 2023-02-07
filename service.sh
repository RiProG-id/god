moduledir="/data/adb/modules/gameoptd"
while [[ -z $(getprop sys.boot_completed) ]]; do sleep 5; done
gameoptd &
[[ "$(cat "$moduledir/toggler/enable_notification")" == "1" ]] && (su -lp 2000 -c "cmd notification post -S bigtext -t 'Game Optimization Daemon' tag 'Running correctly'")
