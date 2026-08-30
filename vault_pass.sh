#!/usr/bin/env bash

if [ -z "${ANSIBLE_VAULT_PASSWORD}" ]; then
  echo "ERROR: ANSIBLE_VAULT_PASSWORD is not set" >&2
  exit 1
fi
printf '%s\n' "${ANSIBLE_VAULT_PASSWORD}"