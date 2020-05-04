# Exchnag Powershell Commands


## Get-MessageTrackingLog 
[Microsoft Doc](https://docs.microsoft.com/en-us/powershell/module/exchange/mail-flow/get-messagetrackinglog?view=exchange-ps)

Lists Message Tracking Log

```powershell
# shows the last 1000 Entry's
Get-MessageTrackingLog 

# shows last 1000 faild Events
Get-MessageTrackingLog -EventId "Fail"

# shows last 200 Events
Get-MessageTrackingLog -ResultSize 200

```

