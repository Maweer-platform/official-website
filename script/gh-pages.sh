rm -rf ./public
sass scss:css
rsync -Rr ./*.html ./public
rsync -Rr ./css ./public
cd public
git init
git remote add origin git@github.com:Mashar-io/official-website.git
git checkout -b gh-pages
git pull
git add .
git commit -m "gh-pages"
git push origin gh-pages