#!/bin/bash

export KETTLE_FLDR=/opt/pentaho/data-integration
export KETTLE_HOME=/opt/dw_schibsted/bomnegocio_bi/dw_blocketdb

log_file="/opt/dw_schibsted/bomnegocio_bi/dw_blocketdb/logs/`date +%y.%m.%d.%H.%M.%S`_jb_stg_ads_approval.log"

cp $KETTLE_HOME/.kettle/kettle_br.properties $KETTLE_HOME/.kettle/kettle.properties

cd $KETTLE_FLDR

echo ""
echo "log file: $log_file"
echo ""

./kitchen.sh -file=$KETTLE_HOME/stg/total_load/jb_stg_ads_approval.kjb  -level=Basic > $log_file

