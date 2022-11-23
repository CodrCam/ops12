#Script: Ops 201 Class 11 Ops Challenge Solution
#Author: Cameron Griffin
#Date of latest revision: 11-22-2022
#Purpose: A Powershell that automates Ping hits, Printer Sharing, Enable ICMP, Remote Manage, Remove Bloatware, Enable Hyper-V, Toggle SMBv1

#Run IP Config
Get-IpConfig > ipStuff.txt

#Selects a string within the text doc created above.
Select-String -path "ipStuff.txt" -Pattern "IPv4" Write-Output

#Tests the internet connection and pings the lab computer
Test-Connection -ping 192.168.0.154 Write-Output

#Removes the file 
rm "ipStuff.txt"
