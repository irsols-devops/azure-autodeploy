With the reecent introduction of <a href="https://docs.microsoft.com/en-us/cli/azure/"> AZ CLI 2.0 </a> some of the functionality and syntax of the official Azure deploy.sh has been broken. So we decided to write up our own tools to  automate quick deployment of resources . Here's how you can get started : 

First step is to login to the Azure CLI using:

```
$ az login 
To sign in, use a web browser to open the page https://aka.ms/devicelogin and enter the code XXXXXXXXX to authenticate.
```

Once logged in - it's possible to list the Subscriptions associated with the account via:

Validate that you've successfully logged in by executing following command : 

$ az account list
The output (similar to below) will display one or more Subscriptions - with the ID field being the subscription_id field referenced above.
```
[
  {
    "cloudName": "AzureCloud",
    "id": "00000000-0000-0000-0000-000000000000",
    "isDefault": true,
    "name": "PAYG Subscription",
    "state": "Enabled",
    "tenantId": "00000000-0000-0000-0000-000000000000",
    "user": {
      "name": "user@example.com",
      "type": "user"
    }
  }
]
```

Note : id is your subscription id from above output.

Next step is to set your Subscription, which you can specify by executing following: 
```
$ az account set --subscription="YOUR_AZURE_SUBSCRIPTION_ID"
```

Optionally : You can find which regions are available and closer to you (in United States ) 
by executing following and setting that appropriately in irsols quick deploy wrapper:

az account list-locations | grep US | grep name
    "displayName": "Central US",
    "name": "centralus",
    "displayName": "East US",
    "name": "eastus",
    ....

  That's it . You're now set to create your VM by issuing az_quick_vm_deploy.sh which 
  will use the parameters in the json file. Please dont forget to change username
  and password in the json file to suit your needs. 

