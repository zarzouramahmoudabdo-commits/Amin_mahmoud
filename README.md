# Amin Mahmoud — تطبيق صيانة الموبايلات
1. أنشئ مشروع في supabase.com ← SQL Editor ← الصق محتوى supabase.sql ← Authentication > Users > Add user (إيميلك وباسورد).
2. عدّل www/config.js (رقم الواتساب + SUPABASE_URL + SUPABASE_KEY).
3. أنشئ repo على GitHub وارفع الملفات: bash push.sh <رابط الريبو>
4. Settings > Pages > Source: Deploy from branch > gh-pages (بعد أول تشغيل للـ Actions).
5. Actions > Build > Artifacts > Amin-Mahmoud-APK ← نزّل الـ APK.
تحديث التطبيق: عدّل www/ وغيّر VERSION في config.js و version.json، ارفع، وبعدها زر 🔄 جوه التطبيق يجيب النسخة الجديدة بدون APK جديد.
