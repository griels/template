rm -Rf out
export PATH=/usr/local/bin:$PATH
/usr/local/bin/hackmyresume CONVERT resume-fresh.json TO resume-jrs.json
/usr/local/bin/hackmyresume BUILD resume-jrs.json TO out/resume.all -t ~/node_modules/jsonresume-theme-elegant-leonth-griels

/usr/local/bin/hackmyresume BUILD resume-fresh.json TO out/resume.doc -t ~/node_modules/hackmyresume/node_modules/fresh-themes/themes/compact
#~/node_modules/electroshot/bin/electroshot.js  --delay 3000 --format pdf --out out/resume.electroshot.pdf 1024 out/resume.html
