.class final Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LegacyServiceMapHolder"
.end annotation


# static fields
.field static final SERVICES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x16

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    const-class v2, Landroid/telephony/SubscriptionManager;

    .line 15
    .line 16
    const-string/jumbo v3, "telephony_subscription_service"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-class v2, Landroid/app/usage/UsageStatsManager;

    .line 23
    .line 24
    const-string/jumbo v3, "usagestats"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    const/16 v2, 0x15

    .line 31
    .line 32
    if-lt v1, v2, :cond_1

    .line 33
    .line 34
    const-class v2, Landroid/appwidget/AppWidgetManager;

    .line 35
    .line 36
    const-string v3, "appwidget"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-class v2, Landroid/os/BatteryManager;

    .line 42
    .line 43
    const-string v3, "batterymanager"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-class v2, Landroid/hardware/camera2/CameraManager;

    .line 49
    .line 50
    const-string v3, "camera"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-class v2, Landroid/app/job/JobScheduler;

    .line 56
    .line 57
    const-string v3, "jobscheduler"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-class v2, Landroid/content/pm/LauncherApps;

    .line 63
    .line 64
    const-string v3, "launcherapps"

    .line 65
    .line 66
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-class v2, Landroid/media/projection/MediaProjectionManager;

    .line 70
    .line 71
    const-string v3, "media_projection"

    .line 72
    .line 73
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-class v2, Landroid/media/session/MediaSessionManager;

    .line 77
    .line 78
    const-string v3, "media_session"

    .line 79
    .line 80
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-class v2, Landroid/content/RestrictionsManager;

    .line 84
    .line 85
    const-string v3, "restrictions"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-class v2, Landroid/telecom/TelecomManager;

    .line 91
    .line 92
    const-string/jumbo v3, "telecom"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-class v2, Landroid/media/tv/TvInputManager;

    .line 99
    .line 100
    const-string/jumbo v3, "tv_input"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_1
    const/16 v2, 0x13

    .line 107
    .line 108
    if-lt v1, v2, :cond_2

    .line 109
    .line 110
    const-class v2, Landroid/app/AppOpsManager;

    .line 111
    .line 112
    const-string v3, "appops"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const-class v2, Landroid/view/accessibility/CaptioningManager;

    .line 118
    .line 119
    const-string v3, "captioning"

    .line 120
    .line 121
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    const-class v2, Landroid/hardware/ConsumerIrManager;

    .line 125
    .line 126
    const-string v3, "consumer_ir"

    .line 127
    .line 128
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    const-class v2, Landroid/print/PrintManager;

    .line 132
    .line 133
    const-string v3, "print"

    .line 134
    .line 135
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_2
    const/16 v2, 0x12

    .line 139
    .line 140
    if-lt v1, v2, :cond_3

    .line 141
    .line 142
    const-class v2, Landroid/bluetooth/BluetoothManager;

    .line 143
    .line 144
    const-string v3, "bluetooth"

    .line 145
    .line 146
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_3
    const/16 v2, 0x11

    .line 150
    .line 151
    if-lt v1, v2, :cond_4

    .line 152
    .line 153
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 154
    .line 155
    const-string v3, "display"

    .line 156
    .line 157
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-class v2, Landroid/os/UserManager;

    .line 161
    .line 162
    const-string/jumbo v3, "user"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_4
    const/16 v2, 0x10

    .line 169
    .line 170
    if-lt v1, v2, :cond_5

    .line 171
    .line 172
    const-class v1, Landroid/hardware/input/InputManager;

    .line 173
    .line 174
    const-string v2, "input"

    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    const-class v1, Landroid/media/MediaRouter;

    .line 180
    .line 181
    const-string v2, "media_router"

    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-class v1, Landroid/net/nsd/NsdManager;

    .line 187
    .line 188
    const-string v2, "servicediscovery"

    .line 189
    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    :cond_5
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 194
    .line 195
    const-string v2, "accessibility"

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const-class v1, Landroid/accounts/AccountManager;

    .line 201
    .line 202
    const-string v2, "account"

    .line 203
    .line 204
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const-class v1, Landroid/app/ActivityManager;

    .line 208
    .line 209
    const-string v2, "activity"

    .line 210
    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    const-class v1, Landroid/app/AlarmManager;

    .line 215
    .line 216
    const-string v2, "alarm"

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    const-class v1, Landroid/media/AudioManager;

    .line 222
    .line 223
    const-string v2, "audio"

    .line 224
    .line 225
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    const-class v1, Landroid/content/ClipboardManager;

    .line 229
    .line 230
    const-string v2, "clipboard"

    .line 231
    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    const-class v1, Landroid/net/ConnectivityManager;

    .line 236
    .line 237
    const-string v2, "connectivity"

    .line 238
    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 243
    .line 244
    const-string v2, "device_policy"

    .line 245
    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    const-class v1, Landroid/app/DownloadManager;

    .line 250
    .line 251
    const-string v2, "download"

    .line 252
    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    const-class v1, Landroid/os/DropBoxManager;

    .line 257
    .line 258
    const-string v2, "dropbox"

    .line 259
    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    .line 265
    const-string v2, "input_method"

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    const-class v1, Landroid/app/KeyguardManager;

    .line 271
    .line 272
    const-string v2, "keyguard"

    .line 273
    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    const-class v1, Landroid/view/LayoutInflater;

    .line 278
    .line 279
    const-string v2, "layout_inflater"

    .line 280
    .line 281
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    const-class v1, Landroid/location/LocationManager;

    .line 285
    .line 286
    const-string v2, "location"

    .line 287
    .line 288
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    const-class v1, Landroid/nfc/NfcManager;

    .line 292
    .line 293
    const-string v2, "nfc"

    .line 294
    .line 295
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const-class v1, Landroid/app/NotificationManager;

    .line 299
    .line 300
    const-string v2, "notification"

    .line 301
    .line 302
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    const-class v1, Landroid/os/PowerManager;

    .line 306
    .line 307
    const-string v2, "power"

    .line 308
    .line 309
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    const-class v1, Landroid/app/SearchManager;

    .line 313
    .line 314
    const-string v2, "search"

    .line 315
    .line 316
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    const-class v1, Landroid/hardware/SensorManager;

    .line 320
    .line 321
    const-string v2, "sensor"

    .line 322
    .line 323
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    const-class v1, Landroid/os/storage/StorageManager;

    .line 327
    .line 328
    const-string/jumbo v2, "storage"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 335
    .line 336
    const-string v2, "phone"

    .line 337
    .line 338
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const-class v1, Landroid/view/textservice/TextServicesManager;

    .line 342
    .line 343
    const-string/jumbo v2, "textservices"

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    const-class v1, Landroid/app/UiModeManager;

    .line 350
    .line 351
    const-string/jumbo v2, "uimode"

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    const-class v1, Landroid/hardware/usb/UsbManager;

    .line 358
    .line 359
    const-string/jumbo v2, "usb"

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    const-class v1, Landroid/os/Vibrator;

    .line 366
    .line 367
    const-string/jumbo v2, "vibrator"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    const-class v1, Landroid/app/WallpaperManager;

    .line 374
    .line 375
    const-string/jumbo v2, "wallpaper"

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 382
    .line 383
    const-string/jumbo v2, "wifip2p"

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    const-class v1, Landroid/net/wifi/WifiManager;

    .line 390
    .line 391
    const-string/jumbo v2, "wifi"

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    const-class v1, Landroid/view/WindowManager;

    .line 398
    .line 399
    const-string/jumbo v2, "window"

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
