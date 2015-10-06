#!/bin/bash

export KETTLE_FLDR=/opt/pentaho/data-integration
export KETTLE_HOME=/opt/dw_schibsted/bomnegocio_bi/dw_blocketdb

log_file="/opt/dw_schibsted/bomnegocio_bi/dw_blocketdb/logs/`date '+%y.%m.%d.%H.%M.%S'`_jb_etl_dm_incremental.log"

cp $KETTLE_HOME/.kettle/kettle_br.properties $KETTLE_HOME/.kettle/kettle.properties

cd $KETTLE_FLDR

echo ""
echo "log file: $log_file"
echo ""

./kitchen.sh -file=$KETTLE_HOME/dm/jb_etl_dm_incremental.kjb -level=Basic > $log_file
