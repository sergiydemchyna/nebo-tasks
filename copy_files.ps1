
$sourceDir = "source_directory"
$destinationDir = "destination_directory"


Copy-Item -Path $sourceDir -Destination $destinationDir -Recurse -Force

Write-Host "Files copied recursively from $sourceDir to $destinationDir"