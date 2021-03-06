#!/bin/bash

if [ ! -f "${1}" ]
then
	echo "Usage: ${0} param-file"
	exit 9
fi

SCRIPT_DIR=${0%/*}
. ${1}

LOG_DIR=${DATA_DIR}/log
mkdir -p ${DATA_DIR}
mkdir -p ${LOG_DIR}

. ${SCRIPT_DIR}/01-convert-gwas.sh
. ${SCRIPT_DIR}/02-gwama.sh
. ${SCRIPT_DIR}/03-filter.sh
. ${SCRIPT_DIR}/05-annovar.sh
. ${SCRIPT_DIR}/06-filter-sort.sh

