# C:\Alexandersucala.com\autopull.ps1
$ErrorActionPreference = "Stop"

$repo = "C:\Alexandersucala.com"
if (!(Test-Path $repo)) { throw "Repo path missing: $repo" }

Set-Location $repo

# If git isn't available, fail loud
git --version | Out-Null

# Pull latest
git pull --ff-only
