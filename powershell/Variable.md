# Variable

## Get-Variable
Doc: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-variable?view=powershell-7

```powershell 
Get-Variable
```

### Enviorment Variable

```powershell 
# using Variable
cd $env:programfiles

# Show all Variables
dir env:

# Search
dir env: | ? Value -match 'Program'
```
