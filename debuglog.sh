#!/system/bin/sh

LOG_FILE="/data/log_debug_venue8_3030.txt"

/system/bin/date >> ${LOG_FILE}
echo "==== BEGIN ====" >> ${LOG_FILE}

while [ true ]
do
  /system/bin/date >> ${LOG_FILE}
  /system/bin/dmesg >> ${LOG_FILE}
  /system/bin/logcat -d >> ${LOG_FILE}
  echo "=======================================================================" >> ${LOG_FILE}
  /system/bin/sleep 30
done
