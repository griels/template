rm -Rf out
export PATH=/usr/local/bin:$PATH
export PREFIX=.
export BIO_JRS=$PREFIX/_data/bio.json
export FRESH=$PREFIX/_data/resume-fresh.json
export ASSETS=$PREFIX/./_assets
/usr/local/bin/hackmyresume CONVERT $FRESH TO $BIO_JRS
/usr/local/bin/hackmyresume BUILD $BIO_JRS TO $ASSETS/resume.all -t ~/node_modules/jsonresume-theme-elegant-leonth-griels

/usr/local/bin/hackmyresume BUILD $FRESH TO $ASSETS/resume.doc -t ~/node_modules/hackmyresume/node_modules/fresh-themes/themes/compact
#git commit _assets -m "auto-generated assets"
#git push origin gh-pages
#~/node_modules/electroshot/bin/electroshot.js  --delay 3000 --format pdf --out out/resume.electroshot.pdf 1024 out/resume.html
