# YQWechat
模拟微信应用 参考：https://github.com/tbl00c/TLChat
commit-1 
设置启动视图：删除默认的launch 可以在buildsetting里设置 Asset Catalog Launch Image Set Name. 
NOTE:一定要在infoPlist里删除对应的launch
加载自定义rootVC：删除默认的mainstoryboard，同时必须删除infoPlist里对应的main。
然后自定义rootVC，同时设置window的rootVC。

commit-2
添加PCH:在buildSetting里设置 PrefixHeader 路径：$(SRCROOT)/ 代表xcodeproj工程文件所在路径
学习： TLChat的代码结构很干净 模块划分清晰 
