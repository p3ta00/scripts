#!/bin/bash

# List of Impacket tools
TOOLS=(
    DumpNTLMInfo.py
    Get-GPPPassword.py
    GetADUsers.py
    GetNPUsers.py
    GetUserSPNs.py
    addcomputer.py
    atexec.py
    changepasswd.py
    dcomexec.py
    dpapi.py
    esentutl.py
    exchanger.py
    findDelegation.py
    getArch.py
    getPac.py
    getST.py
    getTGT.py
    goldenPac.py
    karmaSMB.py
    keylistattack.py
    kintercept.py
    lookupsid.py
    machine_role.py
    mimikatz.py
    mqtt_check.py
    mssqlclient.py
    mssqlinstance.py
    net.py
    netview.py
    nmapAnswerMachine.py
    ntfs-read.py
    ntlmrelayx.py
    ping.py
    ping6.py
    psexec.py
    raiseChild.py
    rbcd.py
    rdp_check.py
    reg.py
    registry-read.py
    rpcdump.py
    rpcmap.py
    sambaPipe.py
    samrdump.py
    secretsdump.py
    services.py
    smbclient.py
    smbexec.py
    smbpasswd.py
    smbrelayx.py
    smbserver.py
    sniff.py
    sniffer.py
    split.py
    ticketConverter.py
    ticketer.py
    tstool.py
    wmiexec.py
    wmipersist.py
    wmiquery.py
)

# Create symbolic links
for tool in "${TOOLS[@]}"; do
    sudo ln -s /usr/bin/"$tool" /usr/bin/impacket-"${tool%.*}"
    echo "Created link for impacket-${tool%.*}"
done
