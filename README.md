# iis-builder-helper

Small ps module to simplify calling the iis-builder ps1 script https://github.com/mattou07/iis-builder

Although iis-config.json file has options for site name, pool name and bindings, this script will assume they are the same so only allows for a name to entered using the -Name param.

**Super simple instructions**

1. Download the psm1 file and save to
c:\\users\\\$Username\\Documents\\WindowsPowerShell\\Modules\\IISBuilderHelper\\IISBuilderHelper.psm1

2. Check everything is OK by opening powershell and runing the following command
Get-Module -ListAvailable -Name IISBuilderHelper

You should see _Setup-IIS_ under the ExportedCommands column.

3. Open powershell in the root of the web application.

4. Run the script using the -Name parameter to specify the name of your site
`Setup-IIS -Name `
