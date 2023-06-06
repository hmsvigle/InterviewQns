$Subscription="SUBSCRIPTION" 
$StorageAccountName="stgac"  
$ResourceGroupName="resource-group-name"
$fileshareName="dev"

$StorageAccountAccessKey = Get-AzStorageAccountKey -ResourceGroupName $ResourceGroupName -AccountName $StorageAccountName | Where-Object  {$_.KeyName -eq "key2"}

$ctx = New-AzStorageContext -StorageAccountName $StorageAccountName -StorageAccountKey $StorageAccountAccessKey.Value

$subDirsList=Get-AzStorageFile -ShareName $fileshareName -context $ctx -Path "stress_test_traces" | Get-AzStorageFile

foreach($appList in $subDirsList)
{
    $path="stress_test_traces/"+$appList.Name
    #Write-Host "$($path)"
    $oldDirList=Get-AzStorageFile -ShareName $fileshareName -context $ctx -Path $path | Get-AzStorageFile
    #echo $oldDirList
    $oldDirs=$oldDirList | Where-Object LastModified -lt (Get-Date).AddDays(-0) 
    echo $oldDirs
    $oldDirs | Remove-AzStorageDirectory
}
