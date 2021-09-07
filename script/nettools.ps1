# "Enabled ICMPv4 Windows Firewall Rule - Allow Ping on target VM
Set-NetfirewallRule -Name FPS-ICMP4-ERQ-In -Enable True -Profile Any
# Systinternals Psping 
Start-BitsTransfer -source "https://live.sysinternals.com/psping.exe" -destination "$env:windir\system32\psping.exe"
# TCPing
Start-BitsTransfer -source "https://download.elifulkerson.com/files/tcping/0.39/x64/tcping64.exe" -destination "$env:windir\system32\tcping.exe"
# Network Monitor using silent install
Start-BitsTransfer -source https://download.microsoft.com/download/7/1/0/7105C7FF-768E-4472-AFD5-F29108D1E383/NM34_x64.exe -destination "$env:windir\temp"
cmd /c "$env:windir\temp\NM34_x64.exe /q"
# Wireshark using silent install

# NTTTCP - Reference: https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-bandwidth-testing
Start-BitsTransfer -source "https://github.com/microsoft/ntttcp/releases/download/v5.35/NTttcp.exe" -destination "$env:windir\system32\NTttcp.exe"