lunch_others_targets=()
for device in $(curl -s https://raw.githubusercontent.com/Fluid-Extended/vendor_fluid/ten/fluid.devices)
do
    for var in user userdebug eng; do
        lunch_others_targets+=("fluid_$device-$var")
    done
done
