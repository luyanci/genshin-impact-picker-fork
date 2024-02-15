# 原神抽卡点名器
![原神点名器](https://stats.deeptrain.net/repo/cyanial/genshin-impact-picker/?theme=light)

[![Release](https://github.com/cyanial/genshin-impact-picker/actions/workflows/release.yml/badge.svg)](https://github.com/cyanial/genshin-impact-picker/actions/workflows/release.yml)[![Pages](https://github.com/cyanial/genshin-impact-picker/actions/workflows/page.yml/badge.svg)](https://github.com/cyanial/genshin-impact-picker/actions/workflows/page.yml)[![Build app](https://github.com/cyanial/genshin-impact-picker/actions/workflows/app.yml/badge.svg)](https://github.com/cyanial/genshin-impact-picker/actions/workflows/app.yml)
## Note

> Thanks for [approve](https://github.com/Mantan21/Genshin-Impact-Wish-Simulator/issues/95) from author of [Genshin-Impact-Wish-Simulator](https://github.com/Mantan21/Genshin-Impact-Wish-Simulator).
### 使用
>将网站运行目录设置为genshin-impact-picker-main/electron-static/static文件夹
>
>支持自定义明星，格式为明星+空格+姓名（如5张三，每行一个）
>
>提交名单在页面左上角问号里提交

### Docker部署
```shell
   docker run -d --name ysdm \
      -p 8000:80 \
      maizig/ysdm:1.0.0
```
 > 运行成功后，宿主机映射地址为 `http://localhost:8000`，使用 Nginx / Apache 进行反代是一个不错的选择（以及 SSL 配置）

### 前端开发

前端代码在目录 `Genshin-Impact-Wish-Simulator` . 基于 `Svelte` 框架.

#### 二次开发

```bash
$ npm run install
$ npm run dev
```

### 打包exe

#### 使用Electron打包
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

#### 使用Tauri打包
使用Tauri打包的体积较小，因为其调用系统webview，打包体积可减少200-300M  127M(tauri打包)  418M(electron打包)

ps: tauri由于调用系统webview，因此不支持win10以下的系统，但可通过配置文件内置webview解决，具体见：https://tauri.app/zh-cn/v1/guides/building/windows 的`Supporting Windows 7`这一部分

在 `Genshin-Impact-Wish-Simulator` 中执行

```bash
$ npm run tauri build
```


### Deploy with Vercel

**暂未测试效果**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/cyanial/genshin-impact-picker)

部署成功后，点击 `Settings-General` , 将 `Build & Development Settings` 下的 `Output Directory` 设置为 `.vercel/static`，将 `Root Directory` 设置为 `Genshin-Impact-Wish-Simulator`。回到 `Deployments` 下，点击当前部署最右侧的三个点，选择 `Redeploy`，等待部署完成后访问 Vercel 提供的域名即可使用。
