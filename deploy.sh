#!/bin/bash

bundle exec jekyll b

# 进入 _site 文件夹
cd _site || { echo "_site directory not found"; exit 1; }

# 初始化一个新的 git 仓库
git init

# 添加远程仓库
git remote add origin git@github.com:fzred/fzred.github.io.git

# 添加所有文件
git add .

# 提交更改
git commit -m "Deploy to gh-pages"

# 强制推送到 gh-pages 分支
git push -f origin master:gh-pages

# 返回到原来的目录
cd ..

echo "Deployment to gh-pages branch completed."
