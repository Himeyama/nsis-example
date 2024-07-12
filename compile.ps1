$version = (Get-Date).ToString("yy.M.d")
$date = (Get-Date).ToString("yyyyMMdd")
$size = [Math]::Round((Get-ChildItem ./hikari-server -Force -Recurse -ErrorAction SilentlyContinue | Measure-Object Length -Sum).Sum / 1KB, 0, [MidpointRounding]::AwayFromZero)
.'C:\Program Files (x86)\NSIS\makensis.exe' /DVERSION="$version" /DDATE="$date" /DSIZE="$size" example.nsi