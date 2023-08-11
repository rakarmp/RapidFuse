wait_until_login() {
while [[ `getprop sys.boot_completed` -ne 1 && -d "/sdcard" ]]
do
sleep 2
done
local test_file="/sdcard/.PERMISSION_TEST"
touch "$test_file"
while [ ! -f "$test_file" ]; do
touch "$test_file"
sleep 2
done
rm "$test_file"
}
wait_until_login
nl_mode=$(getprop persist.extreme.gaming)
if [[ "$nl_mode" == "1" ]]; then
extreme-gaming.sh
elif [[ "$nl_mode" == "0" ]]; then
ext-stock.sh
fi