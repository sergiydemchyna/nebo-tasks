
$sourceDirectory = "source_directory"


if (-not (Test-Path -Path $sourceDirectory)) {
    New-Item -Path $sourceDirectory -ItemType Directory | Out-Null
}


1..5 | ForEach-Object {
    $fileName = "file$_" + ".txt"
    $filePath = Join-Path -Path $sourceDirectory -ChildPath $fileName
    $randomText = Get-Random -Count 1000 -InputObject @(65..90 + 97..122) | ForEach-Object {[char]$_} -join ""
    Set-Content -Path $filePath -Value $randomText
    Write-Host "Random text file $fileName created in $sourceDirectory"
}