
Write-Host "Loading Logic App resources..."
$LogicApps = Get-AzLogicApp

do{
    
    #variables
    $Path = ""
    $Value = ""
    $resource = @()
    $ResourcesFound = @()
    $option = ""
    $option2 = ""
    $position = 0
    $ResourceCollection = @()
    $counter = 0
    $trigger = ""
    $action = ""
    $LastRunID = ""

    #menu
    Write-Host "`nMenu:`n`n1 = Logic App name`n2 = Location`n3 = Access Endpoint `n4 = CreatedTime `n5 = ChangedTime`n6 = State`n7 = Integration Account name`n8 = Trigger name`n9 = Action name`ne = End Script`n"
    $option = Read-Host -Prompt "Enter a number to select the search criteria"

    Switch($option){

        #option to search by logic app name
        1{$Value = Read-Host -Prompt "Enter Logic App name"
        foreach($resource in $LogicApps){

            if($Value -eq $resource.name){
                
                $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                $ResourcesFound.Id = $resource.Id
                $ResourcesFound.Name = $resource.Name
                $ResourcesFound.Location = $resource.Location
                $ResourcesFound.CreatedTime = $resource.CreatedTime
                $ResourcesFound.ChangedTime = $resource.ChangedTime
                $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                $ResourcesFound.State = $resource.State
                $ResourcesFound.Version = $resource.Version
                $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                $ResourceCollection += $ResourcesFound
                $Path = $home+"\Desktop\SearchbyLogicAppName.csv"
                $counter++
                
            }

        }

        }

        #option to search by location
        2{$Value = Read-Host -Prompt "Enter the Location"
        foreach($resource in $LogicApps){

            if($Value -eq $resource.Location){
                
                $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                $ResourcesFound.Id = $resource.Id
                $ResourcesFound.Name = $resource.Name
                $ResourcesFound.Location = $resource.Location
                $ResourcesFound.CreatedTime = $resource.CreatedTime
                $ResourcesFound.ChangedTime = $resource.ChangedTime
                $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                $ResourcesFound.State = $resource.State
                $ResourcesFound.Version = $resource.Version
                $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                $ResourceCollection += $ResourcesFound
                $Path = $home+"\Desktop\SearchbyLocation.csv"
                $counter++

            }

        }
    
        }

        #option to search by access endpoint
        3{$Value = Read-Host -Prompt "Enter the Access Endpoint"
        foreach($resource in $LogicApps){

            if($Value -eq $resource.AccessEndpoint){
            
                $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                $ResourcesFound.Id = $resource.Id
                $ResourcesFound.Name = $resource.Name
                $ResourcesFound.Location = $resource.Location
                $ResourcesFound.CreatedTime = $resource.CreatedTime
                $ResourcesFound.ChangedTime = $resource.ChangedTime
                $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                $ResourcesFound.State = $resource.State
                $ResourcesFound.Version = $resource.Version
                $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                $ResourceCollection += $ResourcesFound
                $Path = $home+"\Desktop\SearchbyAccessEndpoint.csv"
                $counter++

            }

        }

        }

        #option to search by logic app created time
        4{$Value = Read-Host -Prompt "Enter the CreatedTime (month/day/year example: 0/0/0000)"
        foreach($resource in $LogicApps){

            if($Value -eq $resource.CreatedTime.ToShortDateString()){
            
                $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                $ResourcesFound.Id = $resource.Id
                $ResourcesFound.Name = $resource.Name
                $ResourcesFound.Location = $resource.Location
                $ResourcesFound.CreatedTime = $resource.CreatedTime
                $ResourcesFound.ChangedTime = $resource.ChangedTime
                $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                $ResourcesFound.State = $resource.State
                $ResourcesFound.Version = $resource.Version
                $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                $ResourceCollection += $ResourcesFound
                $Path = $home+"\Desktop\SearchbyCreatedTime.csv"
                $counter++

            }

        }

        }

        #option to search by logic app changed time
        5{$Value = Read-Host -Prompt "Enter the ChangedTime (month/day/year example: 0/0/0000)"
        foreach($resource in $LogicApps){

            if($Value -eq $resource.ChangedTime.ToShortDateString()){
            
                $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                $ResourcesFound.Id = $resource.Id
                $ResourcesFound.Name = $resource.Name
                $ResourcesFound.Location = $resource.Location
                $ResourcesFound.CreatedTime = $resource.CreatedTime
                $ResourcesFound.ChangedTime = $resource.ChangedTime
                $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                $ResourcesFound.State = $resource.State
                $ResourcesFound.Version = $resource.Version
                $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                $ResourceCollection += $ResourcesFound
                $Path = $home+"\Desktop\SearchbyChangedTime.csv"
                $counter++

            }

        }

        }

        #option to search by logic app state
        6{$Value = Read-Host -Prompt "`n1 = Enabled`n2 = Disabled`n`nEnter a number to select the state"
        switch($Value){ 1{$value = "Enabled"} 2{$Value = "Disabled"} default{Write-Host -Verbose Invalid Input}}
        foreach($resource in $LogicApps){

            if($Value -eq $resource.State){
            
                $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                $ResourcesFound.Id = $resource.Id
                $ResourcesFound.Name = $resource.Name
                $ResourcesFound.Location = $resource.Location
                $ResourcesFound.CreatedTime = $resource.CreatedTime
                $ResourcesFound.ChangedTime = $resource.ChangedTime
                $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                $ResourcesFound.State = $resource.State
                $ResourcesFound.Version = $resource.Version
                $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                $ResourceCollection += $ResourcesFound
                $Path = $home+"\Desktop\SearchbyState.csv"
                $counter++

            }

        }

        }

        #option to search by Integration Account name
        7{$Value = Read-Host -Prompt "Enter the Integration Account name"
        foreach($resource in $LogicApps){

            if($Value -eq $resource.IntegrationAccount){
            
                $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                $ResourcesFound.Id = $resource.Id
                $ResourcesFound.Name = $resource.Name
                $ResourcesFound.Location = $resource.Location
                $ResourcesFound.CreatedTime = $resource.CreatedTime
                $ResourcesFound.ChangedTime = $resource.ChangedTime
                $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                $ResourcesFound.State = $resource.State
                $ResourcesFound.Version = $resource.Version
                $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                $ResourceCollection += $ResourcesFound
                $Path = $home+"\Desktop\SearchbyIntegrationAccount.csv"
                $counter++

            }

        }

        }

        #option to search by logic app trigger
        8{$Value = Read-Host -Prompt "Enter the Trigger name (please do not add spaces, example: my_trigger_name)"
        Write-Host "Searching trigger name among all your Logic Apps... please wait"
        foreach($resource in $LogicApps){

        $trigger = Get-AzLogicAppTrigger -ResourceGroupName $resource.Id.Split("/")[4] -Name $resource.name

            if($Value -eq $trigger.Name){
            
                $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                $ResourcesFound.Id = $resource.Id
                $ResourcesFound.Name = $resource.Name
                $ResourcesFound.Location = $resource.Location
                $ResourcesFound.CreatedTime = $resource.CreatedTime
                $ResourcesFound.ChangedTime = $resource.ChangedTime
                $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                $ResourcesFound.State = $resource.State
                $ResourcesFound.Version = $resource.Version
                $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                $ResourceCollection += $ResourcesFound
                $Path = $home+"\Desktop\SearchbyIntegrationAccount.csv"
                $counter++

            }

        }

        }

        #option to search by logic app actions
        9{$Value = Read-Host -Prompt "Enter the Action name (please do not add spaces, example: my_action_name)"
        Write-Host "Searching action name among all your Logic Apps... please wait"
        foreach($resource in $LogicApps){
            $LastRunID = ""
            $LastRunID = (Get-AzLogicAppRunHistory -ResourceGroupName $resource.Id.Split("/")[4] -Name $resource.Name)[0]
            
            if($LastRunID -ne ""){
            
                $action =  Get-AzLogicAppRunAction -ResourceGroupName $resource.Id.Split("/")[4] -Name $resource.Name -RunName $LastRunID.Name

                foreach($CheckActions in $action){
        
                    if($Value -eq $CheckActions.Name){
            
                            $ResourcesFound = "" | Select Id, Name, Location, CreatedTime , ChangedTime, AccessEndpoint , State , Version, IntegrationAccount
                            $ResourcesFound.Id = $resource.Id
                            $ResourcesFound.Name = $resource.Name
                            $ResourcesFound.Location = $resource.Location
                            $ResourcesFound.CreatedTime = $resource.CreatedTime
                            $ResourcesFound.ChangedTime = $resource.ChangedTime
                            $ResourcesFound.AccessEndpoint = $resource.AccessEndpoint
                            $ResourcesFound.State = $resource.State
                            $ResourcesFound.Version = $resource.Version
                            $ResourcesFound.IntegrationAccount = $resource.IntegrationAccount
                            $ResourceCollection += $ResourcesFound
                            $Path = $home+"\Desktop\SearchbyIntegrationAccount.csv"
                            $counter++

                        }
        
                }

            }

        }

        }

        #break the loop and end the script
        e{$option2=4
        break}

        default{Write-Host -Verbose Invalid Input -ForegroundColor Red
        $option2 = 3}

    }

    If($option2 -eq 4){break}
    If($option2 -ne 3){
    
    If($counter -eq 0){
        
        #output when the script does not find any Logic App
        Write-Host "`nNo Logic Apps found"
        #Menu
        $option2 = Read-Host -Prompt "`nMenu:`n`n1 = Run the script again`nOr press any other key to end the script`n`nSelect an option"

        if($option2 -eq 1){
        
            $option2 = 3
        
        }
        else{break}

    }
    else{
    
    #output when Logic Apps are found
    Write-Host `n$counter "Logic Apps found:`n"
    $ResourceCollection

    #Menu
    $option2 = Read-Host -Prompt "`nMenu:`n`n1 = Export output to CSV file and run the script again`n2 = Export output to CSV file and end the script`n3 = Run the script again`nOr press any other key to end the script`n`nSelect an option"
    
    switch($option2){

        1{
        $option2 = 3 
        $ResourceCollection | Export-Csv $Path -NoTypeInformation
        Write-Host -Verbose File has been exported in this path: $Path
        }

        2{
        $ResourceCollection | Export-Csv $Path -NoTypeInformation
        Write-Host -Verbose File has been exported in this path: $Path
        break
        }

        #no need to add 3{} option in the switch since the value selected will be 3 so the script will run again

        default{break}

    }

    }

    }

    
}
until($option2 -ne 3)

