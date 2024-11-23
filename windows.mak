
#[Folder Operations]
OOPE_FOLDER_REMOVE = powershell Write-Host "Cleaning $(1)"; Remove-Item -Path $(1) -ErrorAction Ignore
OOPE_FOLDER_CREATE = powershell Write-Host "Creating $(1)$(2)"; $$null = New-Item -Path $(1) -Name $(2) -ItemType "Directory" -ErrorAction Ignore

#[Show]
OOPE_SHOW_DONE = powershell Write-Host "Done" -ForegroundColor Green

#[Test]
OOPE_TEST_A = @powershell Write-Host "Cleaning $(1)"; Write-Host $(1)
