#!/bin/bash

TTYWIDTH="${1}"

TTYSHORT="40"
TTYMEDIUM="80"
TTYLONG="90"

SHORT="$(date +'%T') | "
MEDIUM="$(date '+%F %T') | "
LONG="$(date '+%A %F %T') | "


if [[ "$TTYWIDTH" -ge "$TTYLONG" ]]; then
  OUTPUT="${LONG}"

elif [[ "$TTYWIDTH" -ge "$TTYMEDIUM" ]]; then
  OUTPUT="${MEDIUM}"

elif [[ "$TTYWIDTH" -ge "$TTYSHORT" ]]; then
  OUTPUT="${SHORT}"
fi


if [[ ! -z "${OUTPUT}" ]]; then
  echo "${OUTPUT}"
fi

exit $?
