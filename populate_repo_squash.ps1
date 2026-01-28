# commit 1
@"
PORT=3000
DEBUG=true
"@ | Set-Content config.txt

git add config.txt
git commit -m "add initial config file"

# commit 2
(Get-Content config.txt) -replace "DEBUG=true", "DEBUG=false" | Set-Content config.txt

git add config.txt
git commit -m "disable debug mode"

# commit 3
(Get-Content config.txt) -replace "PORT=3000", "PORT=4000" | Set-Content config.txt

git add config.txt
git commit -m "change app port"

# commit 4
(Get-Content config.txt) -replace "PORT=4000", "PORT=3000" | Set-Content config.txt

git add config.txt
git commit -m "revert port change"

# commit 5
(Get-Content config.txt) -replace "DEBUG=false", "DEBUG=true" | Set-Content config.txt

git add config.txt
git commit -m "re-enable debug mode"

# commit 6
(Get-Content config.txt) -replace "DEBUG=true", "DEBUG=false" | Set-Content config.txt

git add config.txt
git commit -m "disable debug mode again"