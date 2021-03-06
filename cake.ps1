[string]$CAKE_SCRIPT_FILE = '0-build/build.cake'
[string]$CAKE_ARGS = '--verbosity=verbose'

$ENV:NUGET_REPOSITORY_API_URL = 'http://nuget-server.test/nuget'
$ENV:NUGET_REPOSITORY_API_KEY = '123456'

dotnet --list-sdks

dotnet tool restore

dotnet format --check --dry-run --verbosity minimal

Write-Host "dotnet cake $CAKE_SCRIPT_FILE $CAKE_ARGS $ARGS" -ForegroundColor GREEN

dotnet cake $CAKE_SCRIPT_FILE $CAKE_ARGS $ARGS
