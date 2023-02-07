moduledir=/data/adb/modules/gameoptd
[[ ! -d $moduledir/system ]] && (
mkdir $moduledir/system
mkdir $moduledir/system/bin
mv $moduledir/gameoptd  $moduledir/system/bin
chmod 755 $moduledir/system/bin/gameoptd
mv $moduledir/gmenu  $moduledir/system/bin
chmod 755 $moduledir/system/bin/gmenu
)
[[ ! -d $moduledir/toggler ]] && (
mkdir $moduledir/toggler
echo "0" > $moduledir/toggler/enable_gpu_tune
echo "1" > $moduledir/toggler/enable_notification
)
[[ ! -d $moduledir/log ]] && (
mkdir $moduledir/log
)