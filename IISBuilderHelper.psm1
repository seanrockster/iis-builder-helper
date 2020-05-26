
function Setup-IIS {
<#
.SYNOPSIS
.EXAMPLE
.PARAMETER

#>
[CmdletBinding()]
param(
    [string]$Name
) # end params
process {
    
    
    if($Name.Length -le 0){
        Write-Host "You need to supply a name for the iis site. using -Name param"
        return
    }

    
    # download script
    (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/mattou07/iis-builder/master/IIS-Builder.ps1','IIS-Builder.ps1')
    
    # download config
    (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/mattou07/iis-builder/master/iis-config.json','iis-config.json')
    
    Write-Host "creating site $Name"

    # replace test-site in the .config with the name parameter
    (Get-Content "iis-config.json").replace("test-site",$Name) | Set-Content "iis-config.json"
    
    # run iis-builder.ps1
    Invoke-Expression ".\iis-builder.ps1"
    } # end process
}

Export-ModuleMember -Function Setup-IIS