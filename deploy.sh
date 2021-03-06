#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build:docs
# 进入生成的文件夹
cd ./_book
git add -A
git commit -m '更新文档'
# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:kellywang1314/gitbooktest.git master:gh-pages
rm -rf ./_book
