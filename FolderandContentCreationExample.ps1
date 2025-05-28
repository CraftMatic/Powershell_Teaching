Write-output "Hello and welcome to this test script"
pause

# Create a folder named "ENC"
$folderpath = Read-Host "Enter the folder path you wish to be used: "
New-Item -ItemType Directory -Path $folderpath
Write-Output "$folderpath was created successfully" 


# create a test document in the "ENC" folder
$filename = Read-Host "Enter what file name you wish to be created: "
$testfilepath = "$folderpath\$filename"
new-item -ItemType File -Path $testfilepath
Write-Output "$filename was created successfully"


# Prompt the user for what content to add to the file we are creating
$content = Read-Host "Enter the content you would like to add to the document"
Set-Content -Path $testfilepath -Value $content
Write-Output "Content has been added to the test document"
