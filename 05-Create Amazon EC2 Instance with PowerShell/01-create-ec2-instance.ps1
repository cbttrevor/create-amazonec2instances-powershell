# Find IAM roles that can be attached to EC2 instances
Get-IAMInstanceProfileList

help New-EC2Instance

$EC2Params = @{
    ImageId = 'ami-02573c6c93e58be63'
    SecurityGroupId = @('sg-0761cfdc8a3642b2c')
    AssociatePublicIp = $false
    InstanceType = [Amazon.EC2.InstanceType]::T3Medium
}
New-EC2Instance @EC2Params

New-EC2Instance  -ImageId ami-02573c6c93e58be63

[Amazon.EC2.InstanceType] | Get-Member -Static