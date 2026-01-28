# commit 1
@"
# Sample app

A simple app that do this...
"@ | Set-Content README.md

@"
.DS_Store
*.log
"@ | Set-Content .gitignore

git add .
git commit -m "add README and gitignore"

# commit 2
@"
def greet(name):
    return f"Hello, {name}!"

print(greet("world!"))
"@ | Set-Content app.py

git add app.py
git commit -m "add greeting feature"

# commit 3
(Get-Content app.py) -replace "world", "World" | Set-Content app.py

git add app.py
git commit -m "standardize greeting capitalization"

# commit 4
@"
# Usage

Run the app with:

python app.py
"@ | Set-Content USAGE.md

git add USAGE.md
git commit -m "add instuction on how to run the app"

# commit 5
@"
def greet(name):
    return f"Hello, {name}!"

def main():
    print(greet("World"))

if __name__ == "__main__":
    main()
"@ | Set-Content app.py

git add app.py
git commit -m "extract main entry point"

# Commit 6: small feature
Add-Content app.py @"

def greet_uppercase(name):
    return greet(name).upper()
"@

git add app.py
git commit -m "add uppercase greeting helper"

Write-Host "6 commits are added, check with git log --oneline"

