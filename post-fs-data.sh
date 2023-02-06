moduledir=/data/adb/modules/gameoptd
[[ ! -d $moduledir/system ]] && (
mkdir $moduledir/system
mkdir $moduledir/system/bin
mv $moduledir/gameoptd  $moduledir/system/bin
chmod 755 $moduledir/system/bin/gameoptd
)

[[ ! -d $moduledir/toggle ]] && (
mkdir $moduledir/toggle
touch $moduledir/toggle/enable_gpu_tune
)

[[ ! -d $moduledir/log ]] && (
mkdir $moduledir/log
)