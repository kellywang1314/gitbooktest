# 一键提交更新
gitbook build
git add .
git commit -m 'update gitbook'
git push origin master
git checkout gh-pages
rm -rf *
git checkout master -- _book
mv _book/* ./
rm -rf _book
rm -rf publish.sh
git add .
git commit -m 'publish gh-pages'
git push origin gh-pages
git checkout master