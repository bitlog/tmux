#!/bin/bash

TTYWIDTH="${1}"
TTYSHORT="50"
TTYMEDIUM="70"
TTYLONG="95"

SHORT="#[fg=brightred]#(~/bin/check-gpg.sh)"
MEDIUM="#[fg=brightyellow]#(~/bin/check-ip.sh)"
LONG="#[fg=brightgreen]#(~/bin/currencies.sh ${TTYWIDTH} ${TTYLONG})"


if [[ "$TTYWIDTH" -ge "${TTYSHORT}" ]]; then
  OUTPUT="${SHORT}"
fi

if [[ "$TTYWIDTH" -ge "${TTYMEDIUM}" ]]; then
  OUTPUT="${OUTPUT}${MEDIUM}"
fi

if [[ "$TTYWIDTH" -ge "$TTYLONG" ]]; then
  OUTPUT="${OUTPUT}${LONG}"
fi

if [[ ! -z "${OUTPUT}" ]]; then
  echo "${OUTPUT}"
fi

exit $?
