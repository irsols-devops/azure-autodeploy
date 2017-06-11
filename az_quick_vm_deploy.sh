#!/bin/bash
# define resource group and AZ region/location
export RGName="DevServers"
export AZLocation="centralus"

echo 
echo "This script assumes that you've manually logged into Azure and set your subscription ID " 
echo "We're also going to create a new resource group to create a VM deployment " 
echo "Also change the default username , password , VM Size and VM deployment name to suite your needs"
echo " By default this will quickly create a Azure Standard_A0 size Ubuntu 16.04 LTS VM with username irsols "
az group create -n $RGName -l $AZLocation
az group deployment create --name A0ub -g $RGName  --template-file azuredeploy_custom.json  --verbose 



