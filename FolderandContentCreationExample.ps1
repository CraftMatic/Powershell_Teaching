# Create a folder named "ENC"
$folderpath = "C:\ENC"
New-Item -ItemType Directory -Path $folderpath
Write-Output "$folderpath was created successfully" 


# create a test document in the "ENC" folder
$filename = "Testbed.txt"
$testfilepath = "$folderpath\$filename"
new-item -ItemType File -Path $testfilepath
Write-Output "$filename was created successfully"


# Prompt the user for what content to add to the file we are creating
$content = Read-Host "Enter the content you would like to add to the document"
Set-Content -Path $testfilepath -Value $content
Write-Output "Content has been added to the test document"