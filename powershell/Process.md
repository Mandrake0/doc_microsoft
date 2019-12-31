# Process Commands

## Get-Process

```powershell 
Get-Process
 
Get-Process -Name "Notepad" #By Name

Get-Process -ID PID # By ID
```

**Example Output:**

*Note: Notepad needs to be started*
```powershell
PS C:\Users\User> Get-Process -Name "Notepad"

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
    223      13     3024      13268       0.06  14404   6 notepad
```

### Sort CPU Usage

```powershell 
Get-Process | Sort-Object -Property cpu -Descending

Get-Process | Sort-Object -Property cpu -Descending | Select-Object -First 10 # Sort CPU first 10 Processes

Get-Process | Sort-Object -Property cpu -Descending | Select-Object -Last 10 # Sort CPU last 10 Processes
```

**Example Output:**
```powershell
PS C:\Users\User>Get-Process | Sort-Object -Property cpu -Descending

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
    317      46   108408     131424     357.34  15040   6 brave
    698      53   369648     258812     153.25  17168   6 brave
   2130      65   197356     262652     112.08   1960   6 brave
   2505      91    88280     149556      99.06   8048   6 explorer
    817      86    80556     128840      91.05  10304   6 TeamViewer
    505      79   212760     239820      79.27   2028   6 brave
   5292      89   152612     235508      57.36  16948   6 OUTLOOK
    840     126   133744     163704      43.41  10988   6 Communicator
    ...
```

### Format Table

```powershell 
Get-Process | Sort-Object -Property cpu -Descending | Format-Table ProcessName, Id, CPU

Get-Process | Select-Object -First 1 | Format-Table -Property *
```

## Stop-Process

```powershell 
Stop-Process -Name "Notepad"
```

Kill Process
```powershell 
Stop-Process -Name "Notepad -Force"
```

### DOS
```dos 
taskkill /pid 1234 /f
```