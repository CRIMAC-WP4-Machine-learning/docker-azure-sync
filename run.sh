#!/bin/bash

/usr/bin/python3 /tmp/AzureFilesFUSE/azfilesfuse.py ${ACCOUNT} ${SHARENAME} "${SAS}" /azureshare > /tmp/azurelog 2>&1 &