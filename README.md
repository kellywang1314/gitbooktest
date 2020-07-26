### 1. gitbook的使用

##### 使用gitbook在同一个项目中管理组件和文档维护

1. 在已有项目内部根目录下增加README.md和SUMMARY.md, 前者是电子书的入口，是必须的，后者是电子书章节目录



2. package.json中增加
  ```javascript
    "scripts": {
      "install:docs": "gitbook install",
      "start:docs": "gitbook serve",
      "build:docs": "gitbook install && rimraf _book && gitbook build "
  },
  ```

3. npm run build:docs,得到编译后的静态文件

4. 在项目根目录运行 sh ./deploy.sh 发布静态文件到gh-pages即可.

