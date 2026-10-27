#!/data/data/com.termux/files/usr/bin/bash
# الاستخدام: bash push.sh https://github.com/USERNAME/amin-mahmoud.git
git init -b main && git add . && git commit -m "Amin Mahmoud app" 
git remote add origin "$1" && git push -u origin main
