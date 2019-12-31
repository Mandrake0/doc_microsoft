# Disk


### Get-Disk

Ressources: https://docs.microsoft.com/en-us/powershell/module/storage/get-disk?view=win10-ps

```powershell 
PS C:\>Get-Disk # shows all Disk's

PS C:\>Get-Disk -Number 6 # by Number

PS C:\>Get-Disk | Where-Object -FilterScript {$_.Bustype -Eq "USB"} # get all USB Disk

PS C:\>Get-Disk | Where-Object -FilterScript {$_.BusType -Eq "iSCSI"} |
Get-IscsiSession | Format-Table # get all iSCSI disks

```

**Example Output:**
```powershell 
PS C:\WINDOWS\system32> get-disk

Number Friendly Name Serial Number                    HealthStatus         OperationalStatus      Total Size Partition
                                                                                                             Style
------ ------------- -------------                    ------------         -----------------      ---------- ----------
0      Crucial_CT...         1347095BD1F8             Healthy              Online                  447.13 GB MBR
```