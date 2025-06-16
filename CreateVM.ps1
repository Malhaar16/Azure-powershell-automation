$resourceGroup = "Proj7"
$location = "canadacentral"
$vmName = "DevVM"

New-AzResourceGroup -Name $resourceGroup -Location $location

$cred = Get-Credential

New-AzVM `
    -ResourceGroupName $resourceGroup `
    -Name $vmName `
    -Location $location `
    -VirtualNetworkName "$vmName-vnet" `
    -SubnetName "$vmName-subnet" `
    -SecurityGroupName "$vmName-nsg" `
    -PublicIpAddressName "$vmName-ip" `
    -Credential $cred
