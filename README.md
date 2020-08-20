# LogicApp_ValueSearch
This script can help you to find Logic Apps in your subscription based on the available value you have (the search criteria can be: Logic App name, Location, Access Endpoint, Created Time, Changed Time, State, Integration Account, Trigger name, Action name) 



Before running the script check the following steps:
-------------------------------------------------------------------------------------------

1 - First you need to install the AZ module: (if already installed, skip this step)
Install-Module AZ
 
 
2 - Connect to your azure account:
Connect-AzAccount
 
 
3 - if you need to change the subscription run this command to see the subscriptions you have access to:
Get-AzSubscription

4 - then select your subscription running this command:
Select-AzSubscription -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

If you cannot run scripts due to the execution policy run this command:
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine
