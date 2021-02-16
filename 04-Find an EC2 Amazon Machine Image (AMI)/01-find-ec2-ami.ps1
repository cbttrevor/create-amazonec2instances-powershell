
help Get-EC2Image

# Find Amazon Machine Images owned by this AWS account
Get-EC2Image -Owner self
Get-EC2Image -Owner self | Format-Table -Property Architecture, CreationDate, ImageId, OwnerId, Name, RootDeviceType, State, Description

# Find Amazon Machine Images owned by another AWS account
Get-EC2Image -Owner 665453315198

Get-EC2Image 

$FilterList = @()

$Filter = [Amazon.EC2.Model.Filter]::new()
$Filter.Name = 'platform'
$Filter.Values = 'windows'
$FilterList += $Filter

$Filter = [Amazon.EC2.Model.Filter]::new()
$Filter.Name = 'architecture'
$Filter.Values = 'x86_64'
$FilterList += $Filter

$ImageList = Get-EC2Image -Filter $FilterList

$FilteredList = $ImageList | ? CreationDate -match '2021-02'
$FilteredList = $ImageList | ? CreationDate -match '2021-02'
$Win2019 = $FilteredList | ? Name -match 'Windows_Server-2019'
# The list view is kind of hard to read. Let's change to a tabular view.
$FilteredList | Format-Table

# That's still hard to read, and we're missing tons of properties
$Win2019 | Format-Table -Property ImageId, CreationDate, ImageType, State, Name, Description
