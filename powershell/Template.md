# Template
[Ressource](https://9to5it.com/powershell-script-template-version-2/)  
[Ressource Block](https://gallery.technet.microsoft.com/scriptcenter/PowerShell-Comment-Block-373a1d9b)

```powershell
#requires -version 4
<#
.SYNOPSIS
  <Overview of script>

.DESCRIPTION
  <Brief description of script>

.PARAMETER <Parameter_Name>
  <Brief description of parameter input required. Repeat this attribute if required>

.INPUTS
  <Inputs if any, otherwise state None>

.OUTPUTS Log File
  The script log file stored in C:\Windows\Temp\<name>.log

.NOTES
  Version:        1.0
  Author:         <Name>
  Creation Date:  <Date>
  Purpose/Change: Initial script development

.EXAMPLE
  <Example explanation goes here>
  
  <Example goes here. Repeat this attribute for more than one example>
#>

#---------------------------------------------------------[Script Parameters]------------------------------------------------------

Param (
  #Script parameters go here
)

#---------------------------------------------------------[Initialisations]--------------------------------------------------------

#Set Error Action to Silently Continue
$ErrorActionPreference = 'SilentlyContinue'

#Import Modules & Snap-ins
Import-Module PSLogging

#----------------------------------------------------------[Declarations]----------------------------------------------------------

#Script Version
$sScriptVersion = '1.0'

#Log File Info
$sLogPath = 'C:\Windows\Temp'
$sLogName = '<script_name>.log'
$sLogFile = Join-Path -Path $sLogPath -ChildPath $sLogName

#-----------------------------------------------------------[Functions]------------------------------------------------------------

<#

Function <FunctionName> {
  Param ()

  Begin {
    Write-LogInfo -LogPath $sLogFile -Message '<description of what is going on>...'
  }

  Process {
    Try {
      <code goes here>
    }

    Catch {
      Write-LogError -LogPath $sLogFile -Message $_.Exception -ExitGracefully
      Break
    }
  }

  End {
    If ($?) {
      Write-LogInfo -LogPath $sLogFile -Message 'Completed Successfully.'
      Write-LogInfo -LogPath $sLogFile -Message ' '
    }
  }
}

#>

#-----------------------------------------------------------[Execution]------------------------------------------------------------

Start-Log -LogPath $sLogPath -LogName $sLogName -ScriptVersion $sScriptVersion
#Script Execution goes here
Stop-Log -LogPath $sLogFile
```

## Example HEllo World

```powershell
#requires -version 4
<#
.SYNOPSIS
  Simple Hello World Example

.DESCRIPTION
  Simple Hello World Example how a Powershell script should look like

.PARAMETER FirstValue
  First Input Value
.PARAMETER SecondValue
  Second Input Value

.INPUTS
  <Inputs if any, otherwise state None>

.OUTPUTS Log File
  The script log file stored in C:\Windows\Temp\<name>.log

.NOTES
  Version:        1.0
  Author:         Your Name
  Creation Date:  1.1.1970
  Purpose/Change: Example script development

.EXAMPLE
  hworld "Hello"


#>

#---------------------------------------------------------[Script Parameters]------------------------------------------------------

Param (
  #Script parameters go here
)

#---------------------------------------------------------[Initialisations]--------------------------------------------------------

#Set Error Action to Silently Continue
$ErrorActionPreference = 'SilentlyContinue'

#Import Modules & Snap-ins
Import-Module PSLogging

#----------------------------------------------------------[Declarations]----------------------------------------------------------

#Script Version
$sScriptVersion = '1.0'

#Log File Info
$sLogPath = 'C:\Windows\Temp'
$sLogName = 'hworld.log'
$sLogFile = Join-Path -Path $sLogPath -ChildPath $sLogName

#-----------------------------------------------------------[Functions]------------------------------------------------------------

Function hworld
  { 
    [OutputType([String])]     
    [CmdletBinding()] 
    Param 
      ( 
          [Parameter(Mandatory = $true, Position=0)] 
          [String]$FirstValue 
 
        , [Parameter(Mandatory = $false)] 
          [String]$SecondValue 
      ) 
 
    return "$FirstValue $SecondValue" 
 
    <# TODO: Add you function code here #> 
 
  }

#-----------------------------------------------------------[Execution]------------------------------------------------------------

Start-Log -LogPath $sLogPath -LogName $sLogName -ScriptVersion $sScriptVersion
hworld $FirstValue $SecondValue 
Stop-Log -LogPath $sLogFile
```