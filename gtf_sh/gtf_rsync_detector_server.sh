#!/bin/bash
#
# Usage:
#   gtf_rsync_detector_server.sh -i SRC_SESSION_DIR_NAME -o DST_MIC_DIR_RPATH [-s CRYOEM_SITE_NAME] [-d]
#   
# Arguments & Options:
#   -d                 : Run with GoToFly(JK) debug mode
#   
#   -h                 : Help option displays usage
#   
# Example:
#   $ gtf_rsync_detector_server.sh -d
#   
# Debug Script:
#   gtf_rsync_detector_server_debug.sh
# 
<< DEBUG_NOTES
DEBUG_NOTES
# 

usage_exit() {
        echo "GoToFly(JK): Usage $0 -i SRC_SESSION_DIR_NAME -o DST_MIC_DIR_RPATH [-s CRYOEM_SITE_NAME] [-d]" 1>&2
        echo "GoToFly(JK): Exiting(1)..."
        exit 1
}

# Check if the number of command line arguments is valid
if [[ ($# -gt 7 || $# -lt 4) && $# -ne 1 ]]; then
    echo "GoToFly(JK): Invalid number of arguments ($#)"
    usage_exit
fi

# NOTE 2021/09/23 Must think how to generalize command options and the parameter settings 
# so that this script can support multiple different Cryo-EM sites and on-the-fly systems
#
# NOTE 2021/09/23 Must think how to generalize transfer method to support different system configurations
# e.g. rsync, mount system copy, etc.

# Initialize variables with default values
GTF_INVALID_STR="gtc_invalid_str"
GTF_SRC_SESSION_DIR_NAME=${GTF_INVALID_STR}
GTF_DST_MIC_DIR_RPATH=${GTF_INVALID_STR}
GTC_CRYOEM_SITE_NAME="KEK"    # KEK by default
GTF_DEBUG_MODE=0   # 0 (off) by default

# Parse command line arguments
while getopts i:o:s:dh OPT
do
    case "$OPT" in
        i)  GTF_SRC_SESSION_DIR_NAME=$OPTARG
            echo "GoToFly(JK): GoToFly(JK) Sync source dir is specified"
            ;;
        o)  GTF_DST_MIC_DIR_RPATH=$OPTARG
            echo "GoToFly(JK): GoToFly(JK) Sync destination dir is specified"
            ;;
        s)  GTC_CRYOEM_SITE_NAME=$OPTARG
            echo "GoToFly(JK): GoToFly(JK) Cryo-EM site ID is specified"
            ;;
        d)  GTF_DEBUG_MODE=1
            echo "GoToFly(JK): GoToFly(JK) debug mode is specified"
            ;;
        h)  usage_exit
            ;;
        \?) echo "GoToFly(JK): [gtf_ERROR] Invalid option $OPTARG is specified!"
            usage_exit
            ;;
    esac
done

if [[ ${GTF_SRC_SESSION_DIR_NAME} == ${GTF_SYNC_INVALID} ]]; then
    echo "GoToFly(JK): Sync source dir is not specified. Please provide sync source dir!"
    usage_exit
fi
if [[ ${GTF_DST_MIC_DIR_RPATH} == ${GTF_SYNC_INVALID} ]]; then
    echo "GoToFly(JK): Sync destination dir is not specified. Please provide sync destination dir!"
    usage_exit
fi

echo "GoToFly(JK): Running with following parameters..."
echo "GoToFly(JK):   Sync source dir      : ${GTF_SRC_SESSION_DIR_NAME}"
echo "GoToFly(JK):   Sync destination dir : ${GTF_DST_MIC_DIR_RPATH}"
echo "GoToFly(JK):   Debug Mode           : ${GTF_DEBUG_MODE}"

if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] --------------------------------------------------"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] Hello gtf_rsync_detector_server.sh"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] --------------------------------------------------"; fi

### # NOTE 2021/09/19 These should be stored in configuration file
echo "GoToFly(JK): [GTF_DEBUG] Command name     : $0"
GTF_SH_DIR=`cd $(dirname ${0}) && pwd`
echo "GoToFly(JK): [GTF_DEBUG] GTF_SH_DIR : ${GTF_SH_DIR}"
source ${GTF_SH_DIR}/gtf_global_variables.sh
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] Checking values of global environment variable..."; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_CRYOEM_SITE_NAME=${GTF_SYSTEM_CRYOEM_SITE_NAME}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_OPERATOR_ID=${GTF_SYSTEM_OPERATOR_ID}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_USER_ID=${GTF_SYSTEM_USER_ID}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_SRC_DOMAIN=${GTF_SYSTEM_SRC_DOMAIN}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_SRC_ROOT_DIR_FPATH=${GTF_SYSTEM_SRC_ROOT_DIR_FPATH}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_SRC_SESSION_DIR_NAME=${GTF_SYSTEM_SRC_SESSION_DIR_NAME}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_SRC_SESSION_DATA_DIR_RPATH_PATTEN=${GTF_SYSTEM_SRC_SESSION_DATA_DIR_RPATH_PATTEN}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_SRC_MIC_FILE_NAME_PATTERN=${GTF_SYSTEM_SRC_MIC_FILE_NAME_PATTERN}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_SRC_PATH_PATTERN=${GTF_SYSTEM_SRC_PATH_PATTERN}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_RSYNC_SRC=${GTF_SYSTEM_RSYNC_SRC}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_DST_ROOT_DIR_FPATH=${GTF_SYSTEM_DST_ROOT_DIR_FPATH}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_DST_MIC_DIR_RPATH=${GTF_SYSTEM_DST_MIC_DIR_RPATH}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_DST_MIC_FILE_NAME_PATTERN=${GTF_SYSTEM_DST_MIC_FILE_NAME_PATTERN}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_RSYNC_DST=${GTF_SYSTEM_RSYNC_DST}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_DST_DEPOSITORY_DIR_FPATH=${GTF_SYSTEM_DST_DEPOSITORY_DIR_FPATH}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_STATUS_CHECK_INTERVAL=${GTF_SYSTEM_STATUS_CHECK_INTERVAL}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_STATUS_DISPLAY_INTERVAL=${GTF_SYSTEM_STATUS_DISPLAY_INTERVAL}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_TIME_OUT_NO_UPDATE=${GTF_SYSTEM_TIME_OUT_NO_UPDATE}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_SYSTEM_TIME_OUT_MAX=${GTF_SYSTEM_TIME_OUT_MAX}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi

# GTF_RSYNC_SRC=`echo ${GTF_SYSTEM_RSYNC_SRC/XXX_GTF_SRC_SESSION_DIR_NAME_XXXX/${GTF_SRC_SESSION_DIR_NAME}}`
# GTF_RSYNC_DST=`echo ${GTF_SYSTEM_RSYNC_DST/XXX_GTF_DST_MIC_DIR_RPATH_XXXX/${GTF_DST_MIC_DIR_RPATH}}`
GTF_RSYNC_SRC="${GTF_SYSTEM_RSYNC_SRC/XXX_GTF_SRC_SESSION_DIR_NAME_XXXX/${GTF_SRC_SESSION_DIR_NAME}}"
GTF_RSYNC_DST="${GTF_SYSTEM_RSYNC_DST/XXX_GTF_DST_MIC_DIR_RPATH_XXXX/${GTF_DST_MIC_DIR_RPATH}}"

echo "GoToFly(JK): Starting synchronization of data..."
echo "GoToFly(JK):   Source       : ${GTF_RSYNC_SRC}"
echo "GoToFly(JK):   Desitination : ${GTF_RSYNC_DST}"

GTF_RSYNC_DST_MIC_PATH_PATTERN="${GTF_RSYNC_DST}/${GTF_SYSTEM_DST_MIC_FILE_NAME_PATTERN}"
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_RSYNC_DST_MIC_PATH_PATTERN=${GTF_RSYNC_DST_MIC_PATH_PATTERN}"; fi

# NOTE 2021/09/19 These should be stored in configuration file
GTF_STATUS_CHECK_INTERVAL=${GTF_SYSTEM_STATUS_CHECK_INTERVAL} # in seconds
GTF_STATUS_DISPLAY_INTERVAL=${GTF_SYSTEM_STATUS_DISPLAY_INTERVAL} # number of micrograph movies
GTF_TIME_OUT_NO_UPDATE=${GTF_SYSTEM_TIME_OUT_NO_UPDATE} # in seconds 10 min * 60 sec = 600
GTF_TIME_OUT_MAX=${GTF_SYSTEM_TIME_OUT_MAX} # in seconds 12 hours * 60 min * 60 sec = 43200
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_STATUS_CHECK_INTERVAL=${GTF_STATUS_CHECK_INTERVAL}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_STATUS_DISPLAY_INTERVAL=${GTF_STATUS_DISPLAY_INTERVAL}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_TIME_OUT_NO_UPDATE=${GTF_TIME_OUT_NO_UPDATE}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_TIME_OUT_MAX=${GTF_TIME_OUT_MAX}"; fi

# NOTE 2021/09/24 TO BE IMPLEMETED
# (1) Get oreders status file from the on-the-fly system through rsync and
#     If GTF_ORDERS_STATE is IDEL abord, proceed the process.
#     otherwise (GTF_ORDERS_STATE is not IDEL), abord the process.
# (2) Create orders file and send it to desitination system
# (3) Get oreders status file from the desitnatio system through rsync and
#     Wait until the desitination is ready to recieve data
# 
# GTF_ORDERS_STATE  <<<< Each on-the-fly system can have a state file if the desitnation system is cluster!
# (a) GTF_ORDERS_STATE_IDLE
# (b) GTF_ORDERS_STATE_PREPARE (Create desitination folder)    <<<< This state can do assigning machine if the desitnation system is cluster!
# (c) GTF_ORDERS_STATE_BUSY
# NOTE: Assuming on-the-fly system is a demon process and the status file has been created upon its booting!!!
# NOTE: WARNING! This requires RSA key pair settings!

GTF_START_SEC_DATE=`date +%s` # in seconds
GTF_PREVIOUS_NEWEST_FILE_SEC_DATE=${GTF_START_SEC_DATE} # in seconds. Initialized with start time.
NO_UPDATE_DURATION=0 # in seconds. Initialized with zero.
GTF_PREVIOUS_STATUS_DISPLAY_INTERVAL_COUNTS=-1
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_START_SEC_DATE=${GTF_START_SEC_DATE}"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_PREVIOUS_NEWEST_FILE_SEC_DATE=${GTF_PREVIOUS_NEWEST_FILE_SEC_DATE}"; fi
while :
do
    ### # Syncronize contents of source and desitination
    ### # NOTE (2021/09/19) WARNING! This requires RSA key pair settings!
    ### rsync -avzu -e 'ssh -i ~/.ssh/id_rsa' ${GTF_RSYNC_SRC} ${GTF_RSYNC_DST} ||  {
    # NOTE (2021/10/07) With gotofly account, gtf_rsync_detector_server.sh will be executed on filetransfer server.
    # PF-GPFS is mounted on filetransfer server!
    # That's why RSA key pair is not required for gotofly account
    rsync -rltvzu --chmod=F660,D770 ${GTF_RSYNC_SRC} ${GTF_RSYNC_DST} ||  {
        # NOTE (2021/09/23) This part should set error flag (GTF_ERROR_CODE) and break the loop
        # Then, the script has a chance to do final common operation before exiting...
        echo "GoToFly(JK): [GTF_ERROR] rsync failed..."
        echo "GoToFly(JK): Exiting(1)..."
        exit 1
    }
    
    GTF_MICROGRAPH_COUNTS=`ls -l ${GTF_RSYNC_DST_MIC_PATH_PATTERN} | wc -l`
    GTF_CURRENT_STATUS_DISPLAY_INTERVAL_COUNTS=$(( ${GTF_MICROGRAPH_COUNTS} / ${GTF_STATUS_DISPLAY_INTERVAL} ))
    if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_MICROGRAPH_COUNTS=${GTF_MICROGRAPH_COUNTS}"; fi
    if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_PREVIOUS_STATUS_DISPLAY_INTERVAL_COUNTS=${GTF_PREVIOUS_STATUS_DISPLAY_INTERVAL_COUNTS}"; fi
    if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_CURRENT_STATUS_DISPLAY_INTERVAL_COUNTS=${GTF_CURRENT_STATUS_DISPLAY_INTERVAL_COUNTS}"; fi
    if [[ ${GTF_CURRENT_STATUS_DISPLAY_INTERVAL_COUNTS} -gt ${GTF_PREVIOUS_STATUS_DISPLAY_INTERVAL_COUNTS} ]]; then
        echo "GoToFly(JK): Transfered ${GTF_MICROGRAPH_COUNTS} micrograph movies so far..."
        GTF_PREVIOUS_STATUS_DISPLAY_INTERVAL_COUNTS=${GTF_CURRENT_STATUS_DISPLAY_INTERVAL_COUNTS}
    fi
    
    # It is done when update did not happen for certain period of time
    ### GTF_CURRENT_NEWSET_FILE_NAME=`ls -rt ${GTF_RSYNC_DST_MIC_PATH_PATTERN} | tail -n 1`
    ### GTF_CURRENT_NEWSET_FILE_PATH="${GTF_RSYNC_DST}/${GTF_CURRENT_NEWSET_FILE_NAME}"
    GTF_CURRENT_NEWSET_FILE_PATH=`ls -rt ${GTF_RSYNC_DST_MIC_PATH_PATTERN} | tail -n 1`
    GTF_CURRENT_NEWEST_FILE_SEC_DATE=`date -r ${GTF_CURRENT_NEWSET_FILE_PATH} +%s`
    GTF_UPDATE_ELAPSED_SEC=$((GTF_CURRENT_NEWEST_FILE_SEC_DATE-GTF_PREVIOUS_NEWEST_FILE_SEC_DATE))
    GTF_PREVIOUS_NEWEST_FILE_SEC_DATE=${GTF_CURRENT_NEWEST_FILE_SEC_DATE}
    
    ### if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_CURRENT_NEWSET_FILE_NAME=${GTF_CURRENT_NEWSET_FILE_NAME}"; fi
    if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_CURRENT_NEWSET_FILE_PATH=${GTF_CURRENT_NEWSET_FILE_PATH}"; fi
    if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_CURRENT_NEWEST_FILE_SEC_DATE=${GTF_CURRENT_NEWEST_FILE_SEC_DATE}"; fi
    if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_UPDATE_ELAPSED_SEC=${GTF_UPDATE_ELAPSED_SEC}"; fi
    
    if [ ${GTF_UPDATE_ELAPSED_SEC} -eq 0 ]; then
        let NO_UPDATE_DURATION+=GTF_STATUS_CHECK_INTERVAL
        echo "GoToFly(JK): Update has not been detected for ${NO_UPDATE_DURATION} seconds"
        
        if [ ${NO_UPDATE_DURATION} -gt ${GTF_TIME_OUT_NO_UPDATE} ]; then
            echo "GoToFly(JK): [GTF_WARNINNG] No update is detected for specified duration: ${GTF_TIME_OUT_NO_UPDATE} seconds"
            echo "GoToFly(JK): Total number of transfered micrograph movies: ${GTF_MICROGRAPH_COUNTS}"
            echo "GoToFly(JK): Please check that the number is correct!"
            echo "GoToFly(JK): If not, please run this script again!"
            break
        fi
    else
        if [ ${GTF_UPDATE_ELAPSED_SEC} -lt 0 ]; then
            let NO_UPDATE_DURATION+=GTF_STATUS_CHECK_INTERVAL
            if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] The latest file has been saved before starting this script!"; fi
            if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] Meaning this iteration is first rsync or this session has been transferred already."; fi
            if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] Just ignore this case!"; fi
        fi
        if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] Update is detected! "; fi
        if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] The last file of the current synchronization was updated in ${GTF_UPDATE_ELAPSED_SEC} seconds after the last"; fi
        # Initialize NO_UPDATE_DURATION to zero
        NO_UPDATE_DURATION=0
        if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] NO_UPDATE_DURATION=${NO_UPDATE_DURATION}"; fi
    fi
    
    # It is done when specified time-out condition meets 
    GTF_CURRENT_SEC_DATE=`date +%s` # in seconds
    GTF_TOTAL_ELAPSED_SEC=$((GTF_CURRENT_SEC_DATE-GTF_START_SEC_DATE))
    if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_CURRENT_SEC_DATE=${GTF_CURRENT_SEC_DATE}"; fi
    if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] GTF_TOTAL_ELAPSED_SEC=${GTF_TOTAL_ELAPSED_SEC}"; fi
    if [ ${GTF_TOTAL_ELAPSED_SEC} -gt ${GTF_TIME_OUT_MAX} ]; then
        echo "GoToFly(JK): [GTF_WARNINNG] Processing time exceeded specified maximum duration: ${GTF_TIME_OUT_MAX} seconds"
        echo "GoToFly(JK): Total number of transfered micrograph movies: ${GTF_MICROGRAPH_COUNTS}"
        echo "GoToFly(JK): Please check that the number is correct!"
        echo "GoToFly(JK): If not, please run this script again!"
        break
    fi
        
    # Wait specified duration to execute the next syncronization
    sleep ${GTF_STATUS_CHECK_INTERVAL} 
done

echo "GoToFly(JK): Done"

if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] "; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] --------------------------------------------------"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] Good-bye gtf_rsync_detector_server.sh!"; fi
if [[ ${GTF_DEBUG_MODE} != 0 ]]; then echo "GoToFly(JK): [GTF_DEBUG] --------------------------------------------------"; fi
