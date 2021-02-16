# Find all the commands in the EC2 module
Get-AWSCmdletName -Service EC2

# If you know the API name, but not the PowerShell command, you can discover it
Get-AWSCmdletName -ApiOperation RebootInstances

help Restart-EC2Instance

# Wow, that is a lot of PowerShell commands!
$CommandList = Get-Command -Module AWS.Tools.EC2

$CommandList.Count

# Examine commands by their verb
$CommandList | Group-Object -Property Verb