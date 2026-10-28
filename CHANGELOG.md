# T-link 1.0.0 — 2026-10-27

- 完全对齐原厂 CarLink 2.0 的 CarPlay 显示算法（`h/c.java#b`）：横屏按 1920×1080、竖屏按 1080×1920 等比缩放，再向下对齐 8 像素；移除 T-link 额外加入的“禁止放大”限制。当前 768×880 竖屏窗口现在协商为 1080×1232，而不是低分辨率画布。
- 修复启动阶段误把车机底部 144px 导航栏算进 CarPlay 窗口：服务启动时改用 `Display#getMetrics()` 的应用可视区，实测得到 768×880；投屏页完成布局后再用真实窗口校正，避免命令 218 使用 768×1024。
- 修复 768×1024 竖屏首页顶栏溢出：窄竖屏下隐藏装饰性导航文字并缩小右上角按钮，Logo、语言、外观、设置和“车机主页”全部保持在可视范围内。
- 按原厂 `h/g.java` 将 MediaCodec 输出改为独立高优先级线程，读流/送帧不再与取画面互相阻塞；新增每 6 秒的 `video output fps`、`inputFps`、画布尺寸及解码延迟诊断，便于区分源帧率、解码积压和渲染问题。
- 修复无线 CarPlay 连上蓝牙后画面一直出不来（server state 停在 2、到不了 wireless-4）：T-link 先发 `CMD 200` 再由引擎回调 109 触发热点和 `CMD 225`，此时引擎状态已经不是 0，而蓝牙宣告被限制成“仅空闲态才同步”，导致 `CMD 226` 身份与 `IB/US/UU…/UE` 从未发出，iAP2 握手起不来。现在按原厂 CarLink 2.0 的语义——只要链路还未建立就持续宣告手机，并在 `CMD 200` 与 `CMD 225` 后各排一次 800ms 同步、未收到 `AT#SP` 前每 5 秒重试。
- 修复热点被反复重启打断无线握手：原厂 CarLink 用 `JobInfo.MIN_BACKOFF_MILLIS`（30 秒）给热点请求去抖，T-link 之前是 10 秒，会在 iPhone 正在加入 Wi-Fi 时重新拉起软 AP。现改为 30 秒。
- 对齐原厂 CarLink 2.0 的显示协商：物理宽度提示改用 CarLink 的常量 331（原为 221），并在 `CMD 218` 之后补发 `CMD 219`（`e/k.a` 的 link setup 序列里同样是空参数紧跟 218）。
- 修复浅色外观下窗口底色仍是启动图深色：首帧绘制完成后窗口背景跟随当前配色，状态栏/导航栏配色逻辑不变。
- 修复无线 CarPlay 一直停在“正在打开 CarPlay”：BLINK 蓝牙栈不维护 Android 的 UUID 缓存，`fetchUuidsWithSdp` 恒返回 0 个 UUID，导致手机身份与 CarPlay 服务 UUID 从未宣告给引擎（日志里反复 `SDP UUID refresh completed count=0 carplay=false`、`bluetoothAdvertised=false`），iAP2 无法起握手。现在手机来自 FYT 蓝牙模块时按原厂 CarLink 的做法直接宣告固定 CarPlay 服务 UUID，并在车机名为空时回退读取 `bluetooth_name`。
- 修复无线协商被自身恢复逻辑打断：会话在 wireless-1..3 握手阶段 30 秒无变化就会重连/重启引擎，而完整握手（含 WirelessConnectMonitorLoop）远超 30 秒。握手阶段现在给 120 秒宽限，避免引擎被打回 wireless-0 并堵死 BLINK 的 UART 队列。
- 修复车机热点无法自动开启：本机固件没有在 127.0.0.1:5555 上运行 adbd，此前新增的“静默 `appops set ... WRITE_SETTINGS allow`”永远不可能成功，反而每次白等约 7 秒（热点预算仅 15 秒）。现在该补授最多占用 4 秒并会超时中止；若 `WRITE_SETTINGS` 仍缺失且车机热点当前是关闭的，改为打开系统“修改系统设置”页面一次性授权（热点已经开启时不需要该权限，直接开始会话）。
- 修复 FYT 手机蓝牙已连接但 Android 标准配对表为空时无线 CarPlay 一直停留在“正在打开 CarPlay”的问题：按原厂 CarLink 2.0 逻辑直接使用 FYT 模块返回的手机 MAC 获取远端设备，标准配对列表仅作为普通 Android 设备的后备。热点启动继续使用已验证的 Android 10 `startTethering` 接口（该固件上 `setWifiApEnabled` 是直接返回 false 的空实现，不再调用）；连接前若 `WRITE_SETTINGS` 授权缺失，会通过车机自身 adbd 静默补授（`appops set ... WRITE_SETTINGS allow`），不再弹出任何授权弹窗，也不依赖用户手动操作。

- 在“关于 T-link”中加入在线更新入口，通过 GitHub Releases 最新版本接口检查版本，并优先下载 `T-Link` 命名的 APK 发布附件；当前发布仓库切换为 `Leolty0511/FYT-Carlink`。
- 启动画面改为真实布局（不再是插进去的一整张图）：删除原横屏构图的车舱启动图（`home_background_landscape/portrait.png` 及横屏版启动背景 drawable），改为简笔画线稿矢量（手机 ⇢ 虚线链路 ⇢ 车机），并拆成 `layout/launch_screen.xml`（竖屏上下排列）与 `layout-land/launch_screen.xml`（横屏左右排列）两套真实 View 布局；系统启动窗口 `launch_window_background.xml`/`drawable-land` 用 `layer-list` 的 gravity + dp 偏移镜像同一套矢量，保证 starting window 与 Activity 覆盖层像素对齐、冷启动不黑屏。矢量按 dp 排列，任意分辨率和横竖屏车机都不会拉伸变形。
- 精简设置信息架构：设置导航栏与搜索索引只保留“总览 / 显示 / 音频 / 语言 / 关于 / 诊断”六项，车辆（Vehicle）和导航（Navigation）不再作为独立分类入口，高级设置（Advanced）整类移除；“关于”页只保留版本号与在线更新入口，删除“公开预览”说明、备份设置入口和开源项目鸣谢段落（四种语言文案同步清理）。CarPlay 投屏页原“车辆”分区标题改为“CarPlay”，并移除针对特定车型的通话弹窗开关，界面内不再出现该品牌字样。
- 首页恢复纯色工作界面并重新平衡布局：横屏将“选择连接方式”面板整体居中，无线与 USB 入口等宽横向排列，不再把全部操作挤在右侧；竖屏和紧凑窗口自动改为上下排列。
- 语言选择入口移到首页右上角，并同步覆盖 1280×800 横屏、768×1024 竖屏、紧凑窗口及中俄文大字体截图回归测试；连接入口继续绑定真实 CarPlay 功能，不展示尚未实现的 Android Auto 假入口。
- 修复 FYT 有线 CarPlay 启动顺序：USB Host 切换成功后立即向原厂 CarplayServer 发送有线启动命令，由原厂系统服务接管只读的 `ls_carplay`、USB 供电与设备枚举，不再由普通应用在启动服务前空等 iPhone。

- 精简并重新适配首页：设置入口改为车机主页按钮旁的顶部齿轮，删除首页重复的设置按钮、CarPlay 大图标、设置说明及“公开预览/版本号”文字；1280×800 横屏使用介绍与连接区并排布局，768×1024 竖屏使用上下布局，并覆盖大字体与 RTL 排列。
- 修复 FYT UIS8581A 有线 CarPlay 无反应：对照原厂 CarLink 2.0 的 Apple `VID 1452 / PID 4776` 分类和有线启动顺序，点击“通过 USB 连接”后先将车机 OTG 控制器从 `device` 切到 `host`，只有系统实际枚举到 iPhone 后才启动厂商 `CMD 200 / 0` 有线会话；加入 60 秒等待、取消、重复广播去重、短暂重枚举防抖和会话结束后的 USB device 模式恢复，并将角色节点与切换过程写入诊断报告。
- 补齐原厂 CarLink 2.0 的 CarPlay 通话与麦克风路由：处理 `CarplayServer` 的电话/语音状态回调，向 FYT 主机同步通话与语音状态，并按语音会话申请和释放通话音频焦点，避免车机麦克风仍被普通蓝牙 HFP 占用。

- 修复无线 CarPlay 建立后立即断联：实机日志确认在会话状态 `4` 主动发送 FYT 蓝牙 `C_LINK_CUT` 会制造电话蓝牙断开并触发会话停止；T-link 不再发送该命令，保留原厂 `156/159` 通话与麦克风状态同步，并继续在用户忽略配对等真实断开后返回主页。
- 修复反复忽略、重连后卡在 CarPlay 界面：关闭会话时主动唤醒并等待旧视频 socket 监听线程退出，避免下一次连接仍被无界面的旧接收器抢走；FYT 电话蓝牙由未连接变为 `state=2` 后自动启动无线 CarPlay，不再要求返回 T-link 后再点一次“开启 CarPlay”。
- 补齐首页连接入口：未连接时直接显示“无线 CarPlay”和“通过 USB 连接”，不再把有线入口藏在已移除的连接设置中；会话运行后仍收敛为单一“开启 CarPlay”入口，避免误切换传输方式。
- 对齐原厂 CarLink 2.0 的 USB 发现方式：T-link 首页前台动态监听 Apple USB 插拔并扫描已经接入的 iPhone，关闭 USB 调试、车机 USB 口恢复 Host 模式后可自动请求 FYT 有线会话；重复的广播和设备扫描按 USB 设备去重。
- 扩充 T-link 诊断报告：新增 FYT `CarplayServer` 连接/会话/传输状态、最近厂商事件、协商显示与视频尺寸，以及当前 USB 设备 VID/PID 和 Apple 识别结果，避免报告只显示旧通用投屏会话而无法定位厂商有线链路。
- 修复 FYT 无线 CarPlay 在热点桥并入主应用后错误弹出 ADB 授权的问题：无线连接不再通过 ADB 恢复 `WRITE_SETTINGS`，热点启动直接尝试车机接口；既有本机 ADB 仅可作为静默兜底，未授权时绝不提交新公钥或显示调试授权弹窗。
- 将 FYT 热点配置读取能力整合进主应用：T-link 通过已授权的本机 ADB/shell 从自身 APK 启动一次性读取器，不再安装或唤起独立热点桥；构建、CI 与 Android Studio 工程现在只生成一个可安装的 APK，热点密码仅在进程间协议中编码传递且不会写入日志。实机 FYT Wi-Fi 服务仅对前台包名包含 `com.zjinnova` 的应用开放保存热点配置，因此最终 applicationId 使用 `FYT.Tlink.com.zjinnova`，显示名称仍为 `T-link`。
- 精简项目结构：只保留当前车机 APK、共用核心、FYT 热点桥和必要构建配置，移除未引用的 Automotive/示例模块、网站、旧 APK、日志、截图、重复逆向副本和说明文档；原厂 CarLink 2.0 的 JADX 反编译源码继续保留用于调试。
- 应用语言收敛为英语、简体中文、西班牙语和俄语；升级前保存的阿拉伯语、繁体中文或乌克兰语选择自动回到系统语言。
- 主应用包名前缀改为 `FYT.Tlink`，调试与正式构建使用同一 `FYT.Tlink.com.zjinnova` applicationId 并相互覆盖，不再使用 `.hudtest` 后缀；同步更新应用内广播和 HUD 白名单。Android 会将其视为新应用，旧包的数据与授权不会自动迁移。
- 暂时移除在线更新检查、后台更新任务、下载和安装入口，避免在 T-link 尚无 GitHub 仓库时继续访问原 DiPlay 发布地址；仓库和发布地址确定后再重新接入。
- 修复 USB 自动授权命令的 shell `case` 语法，避免部分车机 shell 拒绝执行；热点修复事务的私有日志改为显式原子替换，每次更新都校验完整字节并保留断电恢复备份。
- 修复 Android Studio 继承失效的 `DIPLAY_AUTH_ASSETS_DIR` 后构建中止的问题：仅在外部目录包含完整认证文件时采用该目录，否则自动回退到项目本地认证资源。
- 将应用显示名称、Android Studio 工程名及界面内品牌文字统一改为 `T-link`；连接协议的内部标识保持不变，后续导出的诊断报告改存到 `Downloads/T-link`。
- 修复 FYT 厂商会话的前后台与断开状态：已建立的 CarPlay 从车机主页重新进入 T-link 时先显示内存中的最后一帧，新视频帧到达后无缝切回实时 Surface，不再重复显示连接等待页或露出黑屏；iPhone 忽略蓝牙或电话蓝牙明确断开后，即使厂商状态残留为 `wireless-4`，也会在 2 秒防抖后结束会话并返回应用主页。
- 修复恢复已有 CarPlay 会话后残留的延迟启动任务：iPhone 随后忽略车机蓝牙时，T-link 返回主页后不会再次被旧任务拉进“连接中”页面。
- 移除设置中的“连接”分类、旧热点/USB/等待等手动配置入口和整套设置向导，保留厂商热点授权、蓝牙配对与 CarPlay 服务链路在后台自动工作。
- 修复厂商模式约每分钟闪屏和 1280×800 画面发糊：活动 CarPlay 会话不再因静止画面没有新增解码帧而误触发服务恢复及热点配置页；显示协商按原厂 CarLink 2.0 保留 1280×800、768×1024 等原生尺寸并使用原厂物理宽度参数，避免先降到 1080×672 再放大。
- 对齐原厂 CarLink 2.0 的无线蓝牙与主机音源逻辑：活动会话的 RFCOMM 控制链路异常中断后自动重新公告并恢复，FYT 电话蓝牙断开时发送原厂 `IA` 状态；解析 `$CarPlay.AudioState`，在 CarPlay 前台开始播放或从蓝牙音乐返回时自动请求主机 `APP_ID=10`，后台不抢占当前音源。
- 修复 FYT 厂商模式遗留会话误恢复：iPhone 忽略车机或应用进程重启后，不再凭旧的手机地址和会话标记直接进入“Opening CarPlay”；首页只有在厂商电话蓝牙明确连接时才启动投屏，否则打开原厂配对页。
- 对齐原厂 CarLink 2.0 的画面内返回键：收到 CarplayServer 事件 101 时，通过 `com.syu.ms` 向主机模块发送原厂的 UI 返回命令，回到车机界面且不主动断开 CarPlay 会话。
- 重做厂商投屏的过渡画面：用全屏 DiPlay/CarPlay 品牌等待界面和连接进度替代纯黑底顶部小字，并在视频首帧或直出会话就绪时整体隐藏。
- 修复调试包重装后热点控制授权丢失仍进入投屏等待页的问题：连接前先检查并通过现有 ADB 流程恢复 `WRITE_SETTINGS`，授权未完成时不启动厂商会话；首页也不再用旧配对记录显示已忽略的 iPhone，只有 FYT 电话蓝牙当前连接后才显示设备名。
- 修复 FYT 无线 CarPlay 在手机服务 UUID 尚未进入系统缓存时一直停留在“Opening CarPlay”的问题：按 Android 官方 SDP 流程刷新已选手机的真实 UUID，仅在目标手机返回原厂认可的 CarPlay RFCOMM UUID 后继续公告和连接，并加入超时、去重与重试节流。
- 修复 FYT 厂商模式在 1280×800 车机上未占满屏幕的问题：投屏窗口改用不透明沉浸式全屏主题，视频保持等比适配；同时按原厂解码节奏等待 MediaCodec 输入缓冲，不再因 10 毫秒超时丢参考帧或截断大帧，减少局部模糊、马赛克和花屏。
- 修复 FYT 无线 CarPlay 热点链路：不再创建随机 `LocalOnlyHotspot`，改为通过已验证的 Android 10 系统接口启动车机保存的普通热点，并从厂商固件允许的前台兼容入口读取同一热点的 SSID、密码、信道、安全类型和频段后发送 `225`，与原厂 CarLink 2.0 的处理保持一致。
- 对齐 FYT 厂商电话蓝牙：主页“连接手机”打开原厂配对设备页，并通过 `com.syu.ms` 的蓝牙模块实时读取电话连接状态和设备名；电话已连接时按钮立即切换为“开启 CarPlay”，不再误读 OBD“蓝牙 2”或显示过期状态。
- 对齐 Carlink 2.0 的显示协商：按最长边 1080、8 像素对齐生成视频画布，使用完整等比适配和动态触摸坐标映射，避免 1280×800 等横屏画面裁剪、拉伸或触摸错位。
- 厂商 Carlink 2.0 兼容链路改由常驻前台服务持有 Binder、视频 socket 和解码器；界面重建或切到后台不再主动断开，并在会话长期无进展时依次重绑服务、重启厂商引擎和重建视频监听。
- 对齐车机 Carlink 2.0 2.26.0920.1143 的无线启动协议：连接开始时并行启动车机热点并同步 AP 配置，传递蓝牙身份与 CarPlay UUID、转发 RFCOMM 数据并响应热点控制回调，修复点击连接后 iPhone 无提示且车机热点不启动；不再把 208 电话按键命令误作会话启动。
- 修复厂商模式触摸坐标错位和事件未送达；按原厂平台属性在 Surface 直出与本地解码之间二选一，避免双重渲染导致偶发黑屏；无线握手完成后再打开投屏页，并在出帧后隐藏连接调试文字。
- Keep wired sessions running when a USB read finishes as DiPlay stops waiting for it, start wired CarPlay on Android 7.1 head units, when a head-unit USB audio driver holds the iPhone, and without a VPN dialog over approved network ADB (#625, #614, #618).
- Stop discarding music packets after a 10 ms wait, and log the /feedback position against the received audio (#618, #625).
- Show the real connection stage in every app language, stop with a clear cause when a head unit's Bluetooth cannot reach the iPhone, and find the connected iPhone through sink-role Bluetooth profiles (#624, #590, #585).
- Wheel next/previous on the CarPlay screen without the wheel-key service, Geely/Lynk `geely_fx11` wheel keys and Siri, wheel-key service restore retries, and next/previous to answer or decline with CarPlay call keys (#600, #626, #622, #625).
- Settings backup and restore from a phone, an installer choice for updates, and About inside Settings (#598, #593, #597).
- Experimental, off-by-default options: Harman full screen with 32-bit x86 libraries, square corners, clearer navigation voice over USB, MediaTek low-latency decoding, a media-key audio focus opt-out, car phone audio for calls, a cluster speedometer and FCE cluster guidance (#613, #596, #622, #608, #615, #595, #607, #599).

# DiPlay 0.2.17 — 2026-10-10

- Keep wired sessions running after a damaged NCM block, retry identification without unsupported CarPlay messages for older iOS, recognize the Android 10+ and Chinese USB permission prompts, explain refused wired mode switches and retry NCM interface claims (#575).
- Add an iPhone charging choice for wired USB: Normal 2.4 A, Reduced 1.5 A or Low 0.5 A (#583).
- Recommend the built-in car hotspot, and pause the car's Wi-Fi network search during Wi-Fi Direct on Android 7.1 and later when network ADB is approved (#570).
- Record the head-unit microphone for app voice notes and clock Opus 16 kHz microphone packets at 16 kHz (#548, #547).
- Check daily for updates with an Update available notice, recognize the DiLink generation from the controller version, and save Android 9 reports to Download/DiPlay (#488, #531, #541).
- Add album-cover ambient lighting and fix saving ambient settings on hotfix firmware; add experimental BYD call popup hiding and external controller keys (#537, #550, #539, #549).

# DiPlay 0.2.16 — 2026-10-09

- Send the Siri and call microphone on Android 7.1–9 head units without an Opus encoder through a bundled software Opus encoder, and offer Opus only when it can be encoded; accepted on a BOS Mini A1 (Android 9) with an iPhone 12 on iOS 27 (#468, #483).
- Fix wired NCM receive framing and Android 8 USB reads, and retry rejected large USB reads at smaller sizes (#478, #495).
- Refresh hotspot addresses after a first wireless timeout, request Android 17 local-network permission, handle missing VPN authorization screens and add WPA3 car-hotspot security (#474, #465, #517, #501).
- Add experimental Low-latency decoding and Direct video output, an FPS counter, a hardware low-latency Smooth video decoder and bounded video backlog recovery (#496, #456, #347).
- Add inline Settings search, confirm before the quick menu discards staged changes, allow turning off the swipe-down gesture, and refine Settings layout and reconnect prompts (#450, #500, #487, #486, #482, #490, #491).
- Place the dashboard car marker with 1% sliders, give the small-window turn card its own placement, theme the cluster waiting screen, show the full DiLink 3 arrival time, declare initial appearance and add side-panel resizing (#494, #493, #481, #458, #346, #480).
- Add experimental, off-by-default car Bluetooth pause, music-following ambient lighting, navigation wheel volume and a Platform 21 instrument route; refine call echo alignment, buffered-audio pacing and audio diagnostics (#307, #345, #344, #348, #421, #484, #499).

# DiPlay 0.2.15 — 2026-10-08

- Lower the minimum to Android 7.1/API 25 with compatibility fallbacks; Android 7.1–8.1 vehicle validation remains pending (#407).
- Add the first-launch DiLink setup guide and manual GitHub update checks in About (#416, #413).
- Add Light/Dark/Auto app appearance and refine compact layouts, fullscreen handling, Language and About navigation (#422, #420).
- Recover the music prebuffer after underruns, including corrected retained-audio accounting, and supply a main-decoder operating-rate hint with fallback (#401, #417).
- Add Wi-Fi Direct automatic band choices and optional selected-iPhone Bluetooth launch; experimental Bluetooth audio remains off by default (#432, #439).
- Correct square-canvas physical dimensions, refine turn-card placement to 1% steps and add optional small-window marker layouts with experimental Auto following (#404, #440, #438).
- Add explicit experimental ADB boot-start repair and correct Ukrainian wording (#441, #399).

# DiPlay 0.2.14 — 2026-10-07

- Group Settings by driver goal with search, adaptive layouts, quick controls and reconnect notices (#369).
- Add an independent Interface size control, preserving CarPlay geometry and following real density/window changes (#378).
- Add a default automatic-connection choice, scheduled day/night mode and launcher return to active CarPlay (#373, #365, #376).
- Improve custom car-button image selection and clarify the main app's source-build instructions (#364, #377, #374).
- Repair the captured USBMUX diagnostic trailer, wake drained Bluetooth receive queues and retry explicitly rejected large USB reads once at 16 KiB; improve stream diagnostics (#362).
- Select compatible video output without window hardware acceleration; use Android video decryption when available and retain a fallback (#362, #332).
- Add default-off experimental Smooth video pacing with explicit latency/picture-adjustment limits (#367).
- Preserve usable hotspot interface addresses and authenticated Bluetooth control on the observed rendered-session handoff fallback (#394, #396).
- Add configurable steering-wheel Siri, bounded microphone-source fallback and optional audio-focus handling (#360, #371, #339).
- Repair BYD call-watcher/audio-status behavior and add opt-in, default-off experimental software call echo cancellation and voice filtering (#370).
- Preserve artwork proportions, correct system-bar-aware split/rotation geometry and recognize the specifically observed 1280×480 DiLink 3 cluster surface (#375, #389, #388).

# DiPlay 0.2.13 — 2026-10-06

- Enable the legacy Android 9 Wi-Fi Direct group path with generated credentials and serialized ownership/cleanup; requested frequency remains unverified on Android 9 (#282).
- Prefer current IPv4 hotspot endpoints, preserve scoped IPv6 fallback, and refine Auto channel priorities beside a 5 GHz station without guaranteeing a band (#283, #309).
- Avoid unused Android NSD and USB-service dependencies for wireless startup; retain only rendered sessions on the guarded handoff fallback (#313, #300, #258).
- Add explicit experimental hotspot join Check/Apply/Restore on eligible Android 13+, user-configured 5 GHz hotspots, with complete private recovery state and no automatic mutation (#251).
- Switch wireless to USB within the host activity, verify requested permissions independently, preserve other accessibility services and cancel stale permission work (#268).
- Preserve validated USBMUX payload replies with narrow four-byte trailer recovery (#298).
- Add optional live dock/split-screen areas, square-canvas screen rotation and the selected-decoder square check; add a default-off experimental side panel (#246, #277, #284, #245).
- Preserve DiLink 4 native casting mode, offer pre-connection calibration and apply live cluster picture adjustments (#260, #265).
- Retain a recent dashboard turn card only across wireless replacement within its stale window; add a Smaller map choice (125%) and the checked DiLink 3 full-then-half projection sequence with compensation (#304, #306, #296).
- Restore battery reads when only sys.car.protocol is populated and recover eligible unbound wheel services using already-authorized ADB (#285, #297).
- Add independent default-off experimental DiLink 3 call keys and dashboard calls, with initialized watcher readiness, unique ownership, pristine-safe cancellation and retryable dirty cleanup; target-car acceptance remains requested (#243).
- Correct the observed 24 kHz Siri microphone RTP clock while retaining 48 kHz for telephony/unobserved formats; add bounded, default-off experimental AAC-LC buffered music and single-session renderer ownership (#295, #308).
- Set TCP_NODELAY on the touch event channel; contributor latency observations remain device-specific (#311).
- Improve full-size multi-window home/settings appearance, ambient-setting visibility and shared menu persistence; add main-settings car-button customization (#252, #239, #281, #302).
- Add light waiting/cluster placeholders and a 300 ms cluster fade; the main waiting screen follows CarPlay day/night mode (#305, #317).
- Add Traditional Chinese (Taiwan) as the seventh app language, preserve explicit script selection and correct Simplified Chinese hotspot wording (#314, #286). The release website also gains a Traditional Chinese edition.
- Retain the multilingual website groundwork, add the smooth-wireless guide and make buffered-ownership tests deterministic without runtime/API changes (#240, #310, #312).

# DiPlay 0.2.12 — 2026-10-04

- Add Existing Wi-Fi / Same LAN wireless CarPlay with scoped IPv4/IPv6 discovery and network-change cleanup (#223).
- Wait for a stable car-hotspot interface and recover bounded wireless attempts when no AirPlay TCP follows StartSession (#229); add observed-state, authorized-ADB hotspot fallback on firmware exposing supported commands (#235).
- Improve Apple USB attach matching and narrowly scoped optional USB-prompt assistance (#170, #224).
- Pause Android 10 station scans during eligible hotspot/P2P sessions, preserving Same LAN, with controller leases and durable retryable restoration (#225).
- Improve split-screen, launcher cards, short-screen preparation and virtual cluster/floating-map geometry (#171, #172, #181).
- Add independent system-bar controls and correct in-session save/cancel and Local/USB-CH341 authentication selection (#191, #194).
- Add system, light-sensor, day and night CarPlay appearance modes, richer custom turn cards, and live main-video picture controls (#178, #193, #211).
- Offer custom integer resolution from 30% to 160%, with shared limits, correct 30%/160% labels and decoder/canvas capability fallback; refresh connection settings on resume (#179, #230, #196).
- Reconcile opt-in DiLink 4 cluster routing/calibration into one decoder owner, retain verified HUD gates, and journal exact stock-map holds and recovery (#213, #187).
- Add DiLink 3 guidance text and projection-display support with committed recovery before mutation, partial-setup compensation and retryable stock restoration (#182).
- Add opt-in wheel map zoom and main-screen joystick while preserving press/release and call behavior; reject stale queued work across phone/screen changes (#214, #231).
- Switch supported dashboard contents live using actual delivery and safely retained paused choices; preserve selection across stream/phone replacement (#232).
- Add a five-second dashboard-song-on-change window with timer invalidation, and retain album art while the next transfer is pending (#215, #228).
- Export reports through Downloads, document picker, app-external or private fallback storage, with explicit View/Share actions (#185, #219).

# DiPlay 0.2.11 — 2026-10-03

- Add preferred Wi-Fi Direct channel selection for the next connection; Auto remains the default, and manual channel rejection/mismatch reports an error (#175).
- Add a movable custom dashboard turn card with 2% position steps; leave unknown arrows blank and clear expired guidance (#155).
- Offer two-, three- or four-finger settings swipes, keeping three as the default (#156).
- Add opt-in read-only legacy vehicle-data detection while preserving default DiLink 5.0 mode; reject unaccepted/stale probe publication and fix accepted-battery lock ordering (#158, integrated through #173).
- Keep wireless location/vehicle data on its runtime Wi-Fi link and defer parked-video decisions until SETUP/event readiness (#157).
- Add optional automatic car-hotspot startup, off by default, with verified own-package authorization and unified vehicle settings (#164/#173).
- Support Android TV/remote controls while preserving head-unit touchscreen Back and absolute knob X/Y; keep its workflow source-only (#146).
- Retain artists across partial title updates and publish song metadata/artwork only when changed (#161, #162).
- Correct Android 9 audio API use, release failed codecs, reconnect with settled geometry/readiness, and require own-app VPN scope (#168 and local corrections).
- Add one guarded Auto-mode API 29 P2P recovery for the exact reported pre-create Builder error, plus bounded wireless/media/theme/own-app-exit diagnostics without payload recording or automatic uploads.

# DiPlay 0.2.10 — 2026-10-03

- Publish CarPlay song metadata, position and artwork to Android media sessions; bound artwork queues and reject stale work across sessions (#82).
- Preserve normal USBMUX frames while handling narrowly validated handshake padding (#114); let USB connect without saved wireless-hotspot credentials (#130).
- Handle unknown reported Wi-Fi Direct security types, retry busy channels and allow bounded 5 GHz fallback (#121).
- Select an available AirPlay port and advertise it over Bonjour and wired/wireless iAP2; close sockets on failed setup/notification (#143).
- Enable available platform echo cancellation and noise suppression for calls, restoring the previous mode afterward (#116).
- Detect BYD CAN/CANFD battery protocols and clear unsupported/stale readings (#123).
- Add a saved show/hide setting for the home-screen dashboard-map mirror (#133).
- Improve optional parked video with seeking and ten-second skip controls; validate media URLs and redirects (#129).
- Extend Ukrainian translations, including the new map-mirror setting (#128 and release localization).
- Add bounded anonymous Bluetooth/USB/boot and microphone capture/encode/send diagnostics to exported reports; omit audio and packet contents.

# DiPlay 0.2.9 — 2026-10-02

- Follow BYD head-unit day/night changes while CarPlay is visible, including firmware that does not reliably deliver Android configuration callbacks.
- Restore media and navigation audio stream selection to 0–20 and inherit older saved navigation settings when no new selection exists. Vendor-specific outputs depend on head-unit support.
- Keep CarPlay connected through normal surround-view window changes, preserving video proportions and touch alignment. A connection started in a narrow camera window reconnects once when the window grows to restore the full-screen canvas.
- Add Ukrainian to the app language picker, Android app-language settings, and website. Correct its audio help to describe streams 1–20.
- Add an optional CarPlay song title, artist, and play/pause display on the BYD instrument cluster, using the existing network ADB connection.
- Add a CarPlay navigation widget for launchers that host standard Android widgets, with the next turn, road, distance, arrival information, and song. Clear expired guidance and explicitly cleared song titles.
- Add an optional floating copy of the dashboard map on the centre screen, with drag, pinch-to-resize, and tap-to-open controls. Requires permission to draw over other apps; Usage Access restricts it to home screens.
- Fix floating-map resizing on head units that ignore small pinch gestures.
- Let compatible launchers embed the live dashboard map on Android 11 and newer. Sharing is off by default; turning it off closes existing shared map views.
- Add map-host and DiPlay Home sample apps for developers. DiPlay Home combines the live map, standard Android widgets, a clock, and an app list; sample builds, lint, and Home back-navigation tests are checked in CI.
- Leave the GPS course empty when its direction is unknown, instead of reporting north. Valid GPS directions are preserved.
- Thanks to @lpcheng1208 for PRs [#71](https://github.com/shihabal3amri/DiPlay/pull/71), [#88](https://github.com/shihabal3amri/DiPlay/pull/88), and [#89](https://github.com/shihabal3amri/DiPlay/pull/89).
- Thanks to @romanchukg-cloud for PRs [#93](https://github.com/shihabal3amri/DiPlay/pull/93), [#101](https://github.com/shihabal3amri/DiPlay/pull/101), [#105](https://github.com/shihabal3amri/DiPlay/pull/105), [#106](https://github.com/shihabal3amri/DiPlay/pull/106), [#107](https://github.com/shihabal3amri/DiPlay/pull/107), [#108](https://github.com/shihabal3amri/DiPlay/pull/108), and [#109](https://github.com/shihabal3amri/DiPlay/pull/109).

# DiPlay 0.2.8 — 2026-09-30

- Keep iPhone location reporting active across the wireless Bluetooth-to-Wi-Fi CarPlay handoff; limit location updates to one per second on wireless and USB.
- Add optional ADB wheel-speed and gear reporting for iPhone dead reckoning when GPS is unavailable. Tunnel use has not yet been verified.
- Add optional iOS 27 video playback on the car screen while parked, with iPhone, touchscreen and steering-wheel controls; close playback when leaving P.
- Explain unsupported DRM-protected video such as Apple TV+, which requires a licensed FairPlay receiver.
- Improve playback error reporting and preserve CarPlay when the head unit cannot play a video.

# DiPlay 0.2.7 — 2026-09-29

- App interface in English, Simplified Chinese, Arabic, Russian and Spanish; synchronized Android app-language settings.
- Steering-wheel media controls and long-press Siri on supported BYD firmware while CarPlay is on screen.
- Dashboard display choices: map, turn card, or both; corrected dashboard keyframe recovery.
- Optional ADB feature on supported DiLink 5.0: pause the dashboard map stream when its display mode hides the map.
- Optional ADB battery reporting for Apple Maps, with warning threshold, charging-connector selection and a checked reconnect action.
- Audio playback reliability fixes and clearer dashboard settings.
- Clarify the BYD-only support scope on the README and all five website editions.

# 0.2.0 — BYD navigation and connection improvements

- Standalone windshield HUD arrows, distance and street names on the verified DiLink5.1 firmware; no ADB, root or computer helper.
- Retain contributor cluster/SOME-IP navigation, route parsing, BYD CarPlay icon and display-size presets.
- Fix Car hotspot startup by using scoped IPv6 when available and binding discovery/probing to the AP interface. Physically confirmed on the development car.
- Drain asynchronously decoded audio during packet gaps and rebuild the music buffer after starvation. Wi-Fi Direct is much better in the user retest; occasional audio cutouts remain for a later version.
- Preserve bounded music-buffer choices, USB read improvements and decoder recovery; fix USB request/close races and keep vendor output outside phone callbacks.
- Save audio/video/receive timing and discovery diagnostics without road names or protocol payloads.
- HUD cleanup on normal end/disconnect/off/stale input; interrupted sessions recover on the next app launch. Force-stop may leave guidance visible until reopening.
- Thanks to @romanchukg-cloud and @georgiyrr for PR #3 and vehicle testing.

# 0.1.0 release restored — 2026-09-25

- Rebuilt and signed the APK locally with explicitly supplied runtime authentication assets.
- Restored release downloads; no app behavior or version-code change from 0.1.0.
- Accessory identity remains in the APK only. No credential files enter Git or the source archive.
- Retained generated test identities and public-source credential checks.
- Source/CI builds omit runtime identity assets by default; local packaging requires an explicit external directory.

# Source reset — 2026-09-25

- Withdrew the 0.1.0 APK and removed its release tag.
- Reset the public branch after preserving restricted local incident records.
- Removed static synthetic test private keys; generate test identities at runtime.
- Removed automatic private-asset packaging and disabled the old release build script.
- Added a build guard rejecting credential asset files.
- Replaced the download site with a five-language suspension notice.

The APK was subsequently rebuilt and restored as described above. Existing copies cannot be recalled by a Git history reset.
# 未发布

- 修复 FYT 车机允许 CarPlay 后长期停留在“Opening CarPlay”的问题：由系统动态创建并读取本机热点配置，按原厂 CarLink 2.0 协议同步 SSID、密码、信道、安全类型和频段，不再依赖固定热点信息；兼容固件自动选择的 2.4 GHz 热点，并将厂商电话蓝牙模块返回的无分隔符地址规范化后匹配系统已绑定手机，同时自动重试 CarPlay RFCOMM 公告。
- 修复厂商 CarPlay 会话切到后台后，从桌面重新进入 DiPlay 仍需手动点击“开启 CarPlay”的问题；现在直接恢复既有投屏界面，不重启热点或连接会话，设置页入口不受影响。
- 修复厂商会话恢复期间误跳到车机蓝牙配对页的问题：只在车机蓝牙模块明确报告手机断开时打开配对页，运行中的会话即使尚未恢复到投屏状态也直接返回 CarPlay；CarPlay 返回键现在保留连接并回到车机界面。

