# test_shorebird

测试 shorebird 热更新
SDK 版本：3.13.9

纯 Flutter、混编项目均已测试跑通 👏🏻👏🏻👏🏻

体验我这里做了一份总结，具体见 Shorebird体验.pdf

## 官方文档
https://docs.shorebird.dev/

## 命令记录（纯 Flutter）

### 支持的版本
shorebird flutter versions list

### 发布
shorebird release android --artifact=apk
shorebird release ios-alpha

shorebird release android --artifact apk

### 预览
shorebird preview

### patch
shorebird patch android 
shorebird patch ios-alpha

(修改代码后，版本号不用修改但需要保持一直，直接 patch 即可)

## 命令记录举例（混编）

### iOS
version：1.0.1
build:1

shorebird release ios-framework-alpha --release-version 1.0.1+1
shorebird patch ios-framework-alpha --release-version 1.0.1+1

## Android
versionName: 1.0.2
versionCode: 2

shorebird release aar --release-version 1.0.2+2
shorebird patch aar --release-version 1.0.2+2

设置 aar 产物版本号：
shorebird release aar --release-version 3.0.3+303 --build-number=3.0.3

原生 Flutter 命令
flutter build aar --no-debug --no-profile --release --build-number=2.0.2

