# commit 1
cat > README.md <<'EOF'
# Sample app

A simple app that do this...
EOF

cat > .gitignore <<'EOF'
.DS_Store
*.log
EOF

git add .
git commit -m "add README and gitignore"

# commit 2
cat > app.py <<'EOF'
def greet(name):
	return f"Hello, {name}!"

print(greet("world!"))
EOF

git add app.py
git commit -m "add greeting feature"

# commit 3
sed -i '' 's/world/World/' app.py 2>/dev/null || \
sed -i 's/world/World/' app.py

git add app.py
git commit -m "standardize greeting capitalization"

# commit 4
cat > USAGE.md <<'EOF'
# Usage

Run the app with:

python app.py
EOF

git add USAGE.md
git commit -m "add instuction on how to run the app"

# commit 5
cat >/app.py <<'EOF'
def greet(name):
    return f"Hello, {name}!"

def main():
    print(greet("World"))

if __name__ == "__main__":
    main()
EOF

git add app.py
git commit -m "extract main entry point"

# Commit 6: small feature
cat >> app.py <<'EOF'

def greet_uppercase(name):
    return greet(name).upper()
EOF

git add app.py
git commit -m "add uppercase greeting helper"

echo "6 commits are added, check with git log --oneline"
