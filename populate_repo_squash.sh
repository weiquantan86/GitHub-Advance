# commit 1
cat > config.txt <<'EOF'
PORT=3000
DEBUG=true
EOF

git add config.txt
git commit -m "add initial config file"

# commit 2
sed -i '' 's/DEBUG=true/DEBUG=false/' config.txt 2>/dev/null || \
sed -i 's/DEBUG=true/DEBUG=false/' config.txt

git add config.txt
git commit -m "disable debug mode"

# commit 3
sed -i '' 's/PORT=3000/PORT=4000/' config.txt 2>/dev/null || \
sed -i 's/PORT=3000/PORT=4000/' config.txt

git add config.txt
git commit -m "change app port"

# commit 4
sed -i '' 's/PORT=4000/PORT=3000/' config.txt 2>/dev/null || \
sed -i 's/PORT=4000/PORT=3000/' config.txt

git add config.txt
git commit -m "revert port change"

# commit 5
sed -i '' 's/DEBUG=false/DEBUG=true/' config.txt 2>/dev/null || \
sed -i 's/DEBUG=false/DEBUG=true/' config.txt

git add config.txt
git commit -m "re-enable debug mode"

# commit 6
sed -i '' 's/DEBUG=true/DEBUG=false/' config.txt 2>/dev/null || \
sed -i 's/DEBUG=true/DEBUG=false/' config.txt

git add config.txt
git commit -m "disable debug mode again"

