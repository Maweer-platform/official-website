rm -rf ./public
git clone git@github.com:Mashar-io/official-website.git public

sass scss:css
rsync -Rr ./*.html ./public
rsync -Rr ./css ./public
rsync -Rr ./javascript/ ./public/
rsync -Rr ./assets/ ./public/
cd public
git checkout gh-pages
git add .
git commit -m "gh-pages"
git push origin gh-pages