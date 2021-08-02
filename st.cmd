#!../../bin/linux-x86_64/AGES-Control

## You may have to change AGES-Control to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/AGES-Control.dbd"

AGES_Control_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/AGES-Control.db")
dbLoadRecords("db/AGES-Control-Debounce.db")

# EtherIP -------------------------------------------------------
EIP_buffer_limit(500)
drvEtherIP_init()
# drvEtherIP_define_PLC <name>, <ip_addr>, <slot>
# The driver/device uses the <name> to indentify the PLC.
#
# <ip_addr> can be an IP address in dot-notation
# or a name about which the IOC knows.
# The IP address gets us to the ENET interface.
# To get to the PLC itself, we need the slot that
# it resides in. The first, left-most slot in the
# ControlLogix crate is slot 0.
# TODO: Change to real PLC's IP address
drvEtherIP_define_PLC("plc1", "10.112.22.130", 0)
EIP_verbosity(7)
#---------------------------------------------------------------



cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=zmaHost"







