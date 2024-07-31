#!/system/bin/sh

# Define log file and modules path
LOG_FILE="/tmp/recovery.log"
MODULES_DIR="/lib/modules"

# Function to log messages with timestamps
log_message() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" >> $LOG_FILE
}

# Start logging
log_message "==================="
log_message "= LOADING MODULES ="
log_message "==================="

# Function to load a module with error handling
load_module() {
    MODULE_NAME=$1
    if lsmod | grep -q "$MODULE_NAME"; then
        log_message "$MODULE_NAME already loaded."
    else
        insmod $MODULES_DIR/$MODULE_NAME.ko
        if [ $? -eq 0 ]; then
            log_message "Loaded $MODULE_NAME successfully."
        else
            log_message "Failed to load $MODULE_NAME."
        fi
    fi
}

# Load necessary modules
load_module "exfat"
load_module "utags"
load_module "mmi_sys_temp"
load_module "mmi_annotate"
load_module "mmi_info"
load_module "sensors_class"
load_module "moto_f_usbnet"
load_module "watchdogtest"
load_module "qpnp_adaptive_charge"
load_module "mmi_relay"
load_module "mmi-smbcharger-iio"
load_module "ilitek_v3_mmi"

# Finish logging
log_message "============================"
log_message "= FINISHED LOADING MODULES ="
log_message "============================"

exit 0
