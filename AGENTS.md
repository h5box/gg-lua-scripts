# 项目导航
- GG 脚本库站点，收集 GameGuardian Lua 脚本并提供 PHP 上传/下载入口。
- 根入口：`index.php` 上传与 Lua 云脚本加载，`api.php`/`download.php` 提供查询下载。
- `lua/` 是云脚本接口模块，依赖根目录 `conn.php` 和 `func.php`。
- `app/` 是 PHP 文件浏览器前端，含 `src/`、`views/`、`config/`、`vendor/`。
- 脚本按游戏中文目录归档；文件名通常含日期前缀和脚本名。

# 项目文档
- `.docs/project.md`：项目结构、发布注意事项和运行入口。
- `.docs/runtime-files.md`：运行时写入文件和初始化建议。
- `readme.md`：面向访客的简要使用说明。
- 新增文档存放于 `.docs/*.md`，开头必须保留 `目录` 板块。

# 项目约束
- 不擅自修改脚本内容；仅在明确要求时调整 PHP/Lua 功能。
- 公开发布时忽略运行日志、缓存、ACME 验证文件和临时备份产物。
- `conn.php` 当前为空数据库占位；真实部署凭据不得提交。
- 无 Composer 清单，`app/vendor` 暂视为运行所需依赖，不自动删除。
- `jb.txt`、`times.txt`、聊天中转文本和 `send.json` 属于运行数据。

# 项目记忆
- 06-04 21:15 初始化 GitHub 开源准备，未发现真实数据库密码。
- 06-04 21:15 `.log/` 与 `.well-known/acme-challenge/` 判定为服务器运行残留。
- 06-04 21:15 运行计数、聊天中转和临时上传文本改为不提交。
- 06-04 22:05 GitHub 仓库更名为 `h5box/gg-lua-scripts`。
