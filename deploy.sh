cd _site
git init
git remote add origin git@github.com:fzred/fzred.github.io.git
git add .
git commit -m "Deploy site"
git push -f origin main:gh-pages
