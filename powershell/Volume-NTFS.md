# NTFS

## Healt check

### Get-Volume

Get-Volume gets all status from all Drives.

Ressources: https://docs.microsoft.com/en-us/powershell/module/storage/get-volume?view=win10-ps

```powershell 
Get-Volume
```

**Example Output:**
```powershell 
PS C:\Users\User> Get-Volume

DriveLetter FriendlyName      FileSystemType DriveType HealthStatus OperationalStatus SizeRemaining      Size
----------- ------------      -------------- --------- ------------ ----------------- -------------      ----
            System-reserviert NTFS           Fixed     Healthy      OK                    465.54 MB    500 MB
                              NTFS           Fixed     Healthy      OK                    331.01 MB    849 MB
C                             NTFS           Fixed     Healthy      OK                    309.74 GB 445.81 GB
```

### Get-VolumeCorruptionCount

With Get-VolumeCorruptionCount you get also Error counts

*NOTE: In needs Administrator Rights*

Ressources: https://docs.microsoft.com/en-us/powershell/module/storage/get-volumecorruptioncount?view=win10-ps

```powershell 
Get-Volume | Get-VolumeCorruptionCount
```

**Example Output:**
```powershell 
PS C:\WINDOWS\system32> Get-Volume | Get-VolumeCorruptionCount
0
0
0
```

### Repair-Volume

Command for Repairing Volume 

Ressources: https://docs.microsoft.com/en-us/powershell/module/storage/get-volumecorruptioncount?view=win10-ps

```powershell 
Repair-Volume -FileSystemLabel "Name of Volume" -OfflineScanAndFix # By Drive Label

Repair-Volume -DriveLetter c -OfflineScanAndFix # By Drive Letter
```

### Set-Volume 

Set Volume Attributes, example change label name 

Ressources: https://docs.microsoft.com/en-us/powershell/module/storage/set-volume?view=win10-ps

```powershell 
PS C:\>Set-Volume -FileSystemLabel "Test" -NewFileSystemLabel "TestData" # change label
```

### Format-Volume 

-FileSystem options: **FAT, FAT32, exFAT, NTFS, ReFS**

Ressources: https://docs.microsoft.com/en-us/powershell/module/storage/format-volume?view=win10-ps

```powershell 
Format-Volume -DriveLetter D # quick Format

Format-Volume -DriveLetter D -FileSystem FAT32 -Full -Force # FAT32 Format

```

