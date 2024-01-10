# Genshin-impact-picker
[点击这里来在线体验](https://genshin-picker.netlify.app)

## Note

> Thanks for [approve](https://github.com/Mantan21/Genshin-Impact-Wish-Simulator/issues/95) from author of [Genshin-Impact-Wish-Simulator](https://github.com/Mantan21/Genshin-Impact-Wish-Simulator).

### 前端开发

前端代码在目录 `Genshin-Impact-Wish-Simulator` . 基于 `Svelte` 框架.

#### 二次开发

```bash
$ npm run install
$ npm run dev
```

### 打包exe

在 `Genshin-Impact-Wish-Simulator` 中执行

```bash
$ npm run build
```

将生成的静态文件 `.vercel/static` 拷贝到 `electron-static/static` 目录中, 覆盖掉.

进入 `electron-static` 目录执行

```bash
$ npm install
$ npm run build (生成当前系统可执行文件)
$ npm run build-win (生成win32-x64)
```
## 网站部署

### Deploy with Vercel

**暂未测试效果**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/cyanial/genshin-impact-picker)

部署成功后，点击 `Settings-General` , 将 `Build & Development Settings` 下的 `Output Directory` 设置为 `.vercel/static`，将 `Root Directory` 设置为 `Genshin-Impact-Wish-Simulator`。回到 `Deployments` 下，点击当前部署最右侧的三个点，选择 `Redeploy`，等待部署完成后访问 Vercel 提供的域名即可使用。

### Deploy with Netlify&other

Fork此仓库后 到Netlify点击'Add new site'然后选择本仓库并按照以下设置
- Base Directory: 'Genshin-Impact-Wish-Simulator'
- Publish Directory: '.vercel/output/static'
然后等待部署完成，完成后访问Netlify提供的域名即可