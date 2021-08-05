# ages

AGES Gas handling

The AGES gas handling system communicates to an RslogiX A/B PLC to turn on pneumatic valves. 

It also uses mks controllers to read and control gas flows. 

Interlocks are handled at the PLC level. 

ETHER_IP is the The PLC communication EPICS module used. 

not all modules are required. 
epicsEnvSet("ARCH","linux-x86_64")
epicsEnvSet("IOC","iocAGES-Control")
epicsEnvSet("TOP","/home/controls/bl11a/applications/bl11a-SE-AGES-Control")
epicsEnvSet("ETHER_IP","/home/controls/epics/ether_ip/master")
epicsEnvSet("GENERICIO","/home/controls/epics/genericIO/master")
epicsEnvSet("EPICS_BASE","/home/controls/epics/base/master")
epicsEnvSet("EXTENSIONS","/home/controls/epics/extensions/master")
epicsEnvSet("ACCESSSECURITY","/home/controls/epics/AccessSecurity/master")
epicsEnvSet("ASYN","/home/controls/epics/asyn/master")
epicsEnvSet("AUTOSAVE","/home/controls/epics/autosave/master")
epicsEnvSet("BASEV4","/home/controls/epics/basev4/master")
epicsEnvSet("BUSY","/home/controls/epics/busy/master")
epicsEnvSet("CALC","/home/controls/epics/calc/master")
epicsEnvSet("DEVIOCSTATS","/home/controls/epics/devIocStats/master")
epicsEnvSet("SNCSEQ","/home/controls/epics/seq/master")
epicsEnvSet("SSCAN","/home/controls/epics/sscan/master")
epicsEnvSet("STREAMDEVICE","/home/controls/epics/StreamDevice/master")
epicsEnvSet("ICP","/home/controls/epics/icp/master")


