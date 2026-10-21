.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;
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

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static sServiceCacheSize:I


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
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v1, Landroid/app/SystemServiceRegistry$1;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "accessibility"

    .line 21
    .line 22
    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    .line 23
    .line 24
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/app/SystemServiceRegistry$2;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "captioning"

    .line 33
    .line 34
    const-class v3, Landroid/view/accessibility/CaptioningManager;

    .line 35
    .line 36
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroid/app/SystemServiceRegistry$3;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "account"

    .line 45
    .line 46
    const-class v3, Landroid/accounts/AccountManager;

    .line 47
    .line 48
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroid/app/SystemServiceRegistry$4;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "activity"

    .line 57
    .line 58
    const-class v3, Landroid/app/ActivityManager;

    .line 59
    .line 60
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Landroid/app/SystemServiceRegistry$5;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "alarm"

    .line 69
    .line 70
    const-class v3, Landroid/app/AlarmManager;

    .line 71
    .line 72
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroid/app/SystemServiceRegistry$6;

    .line 76
    .line 77
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "audio"

    .line 81
    .line 82
    const-class v3, Landroid/media/AudioManagerEx;

    .line 83
    .line 84
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 85
    .line 86
    .line 87
    const-class v1, Landroid/media/AudioManager;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    new-instance v1, Landroid/app/SystemServiceRegistry$7;

    .line 93
    .line 94
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v2, "media_router"

    .line 98
    .line 99
    .line 100
    const-class v3, Landroid/media/MediaRouter;

    .line 101
    .line 102
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Landroid/app/SystemServiceRegistry$8;

    .line 106
    .line 107
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v2, "bluetooth"

    .line 111
    .line 112
    const-class v3, Landroid/bluetooth/BluetoothManager;

    .line 113
    .line 114
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Landroid/app/SystemServiceRegistry$9;

    .line 118
    .line 119
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string/jumbo v2, "hdmi_control"

    .line 123
    .line 124
    .line 125
    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    .line 126
    .line 127
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Landroid/app/SystemServiceRegistry$10;

    .line 131
    .line 132
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string/jumbo v2, "textclassification"

    .line 136
    .line 137
    .line 138
    const-class v3, Landroid/view/textclassifier/TextClassificationManager;

    .line 139
    .line 140
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 141
    .line 142
    .line 143
    new-instance v1, Landroid/app/SystemServiceRegistry$11;

    .line 144
    .line 145
    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v2, "clipboard"

    .line 149
    .line 150
    const-class v3, Landroid/content/ClipboardManager;

    .line 151
    .line 152
    invoke-static {v2, v3, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 153
    .line 154
    .line 155
    const-class v1, Landroid/text/ClipboardManager;

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    new-instance v0, Landroid/app/SystemServiceRegistry$12;

    .line 161
    .line 162
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v1, "connectivity"

    .line 166
    .line 167
    const-class v2, Landroid/net/ConnectivityManager;

    .line 168
    .line 169
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Landroid/app/SystemServiceRegistry$13;

    .line 173
    .line 174
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v1, "connectionEx"

    .line 178
    .line 179
    const-class v2, Landroid/net/ConnectivityManagerEx;

    .line 180
    .line 181
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 182
    .line 183
    .line 184
    new-instance v0, Landroid/app/SystemServiceRegistry$14;

    .line 185
    .line 186
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string/jumbo v1, "ipsec"

    .line 190
    .line 191
    .line 192
    const-class v2, Landroid/net/IpSecManager;

    .line 193
    .line 194
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Landroid/app/SystemServiceRegistry$15;

    .line 198
    .line 199
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v1, "country_detector"

    .line 203
    .line 204
    const-class v2, Landroid/location/CountryDetector;

    .line 205
    .line 206
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 207
    .line 208
    .line 209
    new-instance v0, Landroid/app/SystemServiceRegistry$16;

    .line 210
    .line 211
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v1, "device_policy"

    .line 215
    .line 216
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    .line 217
    .line 218
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Landroid/app/SystemServiceRegistry$17;

    .line 222
    .line 223
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v1, "download"

    .line 227
    .line 228
    const-class v2, Landroid/app/DownloadManager;

    .line 229
    .line 230
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 231
    .line 232
    .line 233
    new-instance v0, Landroid/app/SystemServiceRegistry$18;

    .line 234
    .line 235
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v1, "batterymanager"

    .line 239
    .line 240
    const-class v2, Landroid/os/BatteryManager;

    .line 241
    .line 242
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Landroid/app/SystemServiceRegistry$19;

    .line 246
    .line 247
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string/jumbo v1, "nfc"

    .line 251
    .line 252
    .line 253
    const-class v2, Landroid/nfc/NfcManager;

    .line 254
    .line 255
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Landroid/app/SystemServiceRegistry$20;

    .line 259
    .line 260
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v1, "dropbox"

    .line 264
    .line 265
    const-class v2, Landroid/os/DropBoxManager;

    .line 266
    .line 267
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 268
    .line 269
    .line 270
    new-instance v0, Landroid/app/SystemServiceRegistry$21;

    .line 271
    .line 272
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string/jumbo v1, "input"

    .line 276
    .line 277
    .line 278
    const-class v2, Landroid/hardware/input/InputManager;

    .line 279
    .line 280
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 281
    .line 282
    .line 283
    new-instance v0, Landroid/app/SystemServiceRegistry$22;

    .line 284
    .line 285
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v1, "display"

    .line 289
    .line 290
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 291
    .line 292
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Landroid/app/SystemServiceRegistry$23;

    .line 296
    .line 297
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string/jumbo v1, "input_method"

    .line 301
    .line 302
    .line 303
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 304
    .line 305
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 306
    .line 307
    .line 308
    new-instance v0, Landroid/app/SystemServiceRegistry$24;

    .line 309
    .line 310
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string/jumbo v1, "textservices"

    .line 314
    .line 315
    .line 316
    const-class v2, Landroid/view/textservice/TextServicesManager;

    .line 317
    .line 318
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 319
    .line 320
    .line 321
    new-instance v0, Landroid/app/SystemServiceRegistry$25;

    .line 322
    .line 323
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string/jumbo v1, "keyguard"

    .line 327
    .line 328
    .line 329
    const-class v2, Landroid/app/KeyguardManager;

    .line 330
    .line 331
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 332
    .line 333
    .line 334
    new-instance v0, Landroid/app/SystemServiceRegistry$26;

    .line 335
    .line 336
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string/jumbo v1, "layout_inflater"

    .line 340
    .line 341
    .line 342
    const-class v2, Landroid/view/LayoutInflater;

    .line 343
    .line 344
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 345
    .line 346
    .line 347
    new-instance v0, Landroid/app/SystemServiceRegistry$27;

    .line 348
    .line 349
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    .line 350
    .line 351
    .line 352
    const-string/jumbo v1, "location"

    .line 353
    .line 354
    .line 355
    const-class v2, Landroid/location/LocationManager;

    .line 356
    .line 357
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 358
    .line 359
    .line 360
    new-instance v0, Landroid/app/SystemServiceRegistry$28;

    .line 361
    .line 362
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    .line 363
    .line 364
    .line 365
    const-string/jumbo v1, "netpolicy"

    .line 366
    .line 367
    .line 368
    const-class v2, Landroid/net/NetworkPolicyManager;

    .line 369
    .line 370
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 371
    .line 372
    .line 373
    new-instance v0, Landroid/app/SystemServiceRegistry$29;

    .line 374
    .line 375
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    .line 376
    .line 377
    .line 378
    const-string/jumbo v1, "notification"

    .line 379
    .line 380
    .line 381
    const-class v2, Landroid/app/NotificationManager;

    .line 382
    .line 383
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Landroid/app/SystemServiceRegistry$30;

    .line 387
    .line 388
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string/jumbo v1, "servicediscovery"

    .line 392
    .line 393
    .line 394
    const-class v2, Landroid/net/nsd/NsdManager;

    .line 395
    .line 396
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 397
    .line 398
    .line 399
    new-instance v0, Landroid/app/SystemServiceRegistry$31;

    .line 400
    .line 401
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    .line 402
    .line 403
    .line 404
    const-string/jumbo v1, "power"

    .line 405
    .line 406
    .line 407
    const-class v2, Landroid/os/PowerManager;

    .line 408
    .line 409
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 410
    .line 411
    .line 412
    new-instance v0, Landroid/app/SystemServiceRegistry$32;

    .line 413
    .line 414
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    .line 415
    .line 416
    .line 417
    const-string/jumbo v1, "power_ex"

    .line 418
    .line 419
    .line 420
    const-class v2, Landroid/os/AbsPowerManager;

    .line 421
    .line 422
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Landroid/app/SystemServiceRegistry$33;

    .line 426
    .line 427
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string/jumbo v1, "recovery"

    .line 431
    .line 432
    .line 433
    const-class v2, Landroid/os/RecoverySystem;

    .line 434
    .line 435
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 436
    .line 437
    .line 438
    new-instance v0, Landroid/app/SystemServiceRegistry$34;

    .line 439
    .line 440
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    .line 441
    .line 442
    .line 443
    const-string/jumbo v1, "search"

    .line 444
    .line 445
    .line 446
    const-class v2, Landroid/app/SearchManager;

    .line 447
    .line 448
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 449
    .line 450
    .line 451
    new-instance v0, Landroid/app/SystemServiceRegistry$35;

    .line 452
    .line 453
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    .line 454
    .line 455
    .line 456
    const-string/jumbo v1, "sensor"

    .line 457
    .line 458
    .line 459
    const-class v2, Landroid/hardware/SensorManager;

    .line 460
    .line 461
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 462
    .line 463
    .line 464
    new-instance v0, Landroid/app/SystemServiceRegistry$36;

    .line 465
    .line 466
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    .line 467
    .line 468
    .line 469
    const-string/jumbo v1, "statusbar"

    .line 470
    .line 471
    .line 472
    const-class v2, Landroid/app/StatusBarManager;

    .line 473
    .line 474
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 475
    .line 476
    .line 477
    new-instance v0, Landroid/app/SystemServiceRegistry$37;

    .line 478
    .line 479
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    .line 480
    .line 481
    .line 482
    const-string/jumbo v1, "storage"

    .line 483
    .line 484
    .line 485
    const-class v2, Landroid/os/storage/StorageManager;

    .line 486
    .line 487
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 488
    .line 489
    .line 490
    new-instance v0, Landroid/app/SystemServiceRegistry$38;

    .line 491
    .line 492
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    .line 493
    .line 494
    .line 495
    const-string/jumbo v1, "storagestats"

    .line 496
    .line 497
    .line 498
    const-class v2, Landroid/app/usage/StorageStatsManager;

    .line 499
    .line 500
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 501
    .line 502
    .line 503
    new-instance v0, Landroid/app/SystemServiceRegistry$39;

    .line 504
    .line 505
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string/jumbo v1, "phone"

    .line 509
    .line 510
    .line 511
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 512
    .line 513
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 514
    .line 515
    .line 516
    new-instance v0, Landroid/app/SystemServiceRegistry$40;

    .line 517
    .line 518
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    .line 519
    .line 520
    .line 521
    const-string/jumbo v1, "phone_ex"

    .line 522
    .line 523
    .line 524
    const-class v2, Landroid/telephony/TelephonyManagerEx;

    .line 525
    .line 526
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 527
    .line 528
    .line 529
    new-instance v0, Landroid/app/SystemServiceRegistry$41;

    .line 530
    .line 531
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    .line 532
    .line 533
    .line 534
    const-string/jumbo v1, "telephony_subscription_service"

    .line 535
    .line 536
    .line 537
    const-class v2, Landroid/telephony/SubscriptionManager;

    .line 538
    .line 539
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 540
    .line 541
    .line 542
    new-instance v0, Landroid/app/SystemServiceRegistry$42;

    .line 543
    .line 544
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    .line 545
    .line 546
    .line 547
    const-string v1, "carrier_config"

    .line 548
    .line 549
    const-class v2, Landroid/telephony/CarrierConfigManager;

    .line 550
    .line 551
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 552
    .line 553
    .line 554
    new-instance v0, Landroid/app/SystemServiceRegistry$43;

    .line 555
    .line 556
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    .line 557
    .line 558
    .line 559
    const-string v1, "carrier_config_ex"

    .line 560
    .line 561
    const-class v2, Landroid/telephony/CarrierConfigManagerEx;

    .line 562
    .line 563
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 564
    .line 565
    .line 566
    new-instance v0, Landroid/app/SystemServiceRegistry$44;

    .line 567
    .line 568
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    .line 569
    .line 570
    .line 571
    const-string/jumbo v1, "telecom"

    .line 572
    .line 573
    .line 574
    const-class v2, Landroid/telecom/TelecomManager;

    .line 575
    .line 576
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 577
    .line 578
    .line 579
    new-instance v0, Landroid/app/SystemServiceRegistry$45;

    .line 580
    .line 581
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    .line 582
    .line 583
    .line 584
    const-string v1, "euicc_service"

    .line 585
    .line 586
    const-class v2, Landroid/telephony/euicc/EuiccManager;

    .line 587
    .line 588
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 589
    .line 590
    .line 591
    new-instance v0, Landroid/app/SystemServiceRegistry$46;

    .line 592
    .line 593
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    .line 594
    .line 595
    .line 596
    const-string/jumbo v1, "uimode"

    .line 597
    .line 598
    .line 599
    const-class v2, Landroid/app/UiModeManager;

    .line 600
    .line 601
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 602
    .line 603
    .line 604
    new-instance v0, Landroid/app/SystemServiceRegistry$47;

    .line 605
    .line 606
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    .line 607
    .line 608
    .line 609
    const-string/jumbo v1, "usb"

    .line 610
    .line 611
    .line 612
    const-class v2, Landroid/hardware/usb/UsbManager;

    .line 613
    .line 614
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 615
    .line 616
    .line 617
    new-instance v0, Landroid/app/SystemServiceRegistry$48;

    .line 618
    .line 619
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    .line 620
    .line 621
    .line 622
    const-string/jumbo v1, "serial"

    .line 623
    .line 624
    .line 625
    const-class v2, Landroid/hardware/SerialManager;

    .line 626
    .line 627
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 628
    .line 629
    .line 630
    new-instance v0, Landroid/app/SystemServiceRegistry$49;

    .line 631
    .line 632
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    .line 633
    .line 634
    .line 635
    const-string/jumbo v1, "vibrator"

    .line 636
    .line 637
    .line 638
    const-class v2, Landroid/os/Vibrator;

    .line 639
    .line 640
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 641
    .line 642
    .line 643
    new-instance v0, Landroid/app/SystemServiceRegistry$50;

    .line 644
    .line 645
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    .line 646
    .line 647
    .line 648
    const-string/jumbo v1, "wallpaper"

    .line 649
    .line 650
    .line 651
    const-class v2, Landroid/app/WallpaperManager;

    .line 652
    .line 653
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 654
    .line 655
    .line 656
    new-instance v0, Landroid/app/SystemServiceRegistry$51;

    .line 657
    .line 658
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    .line 659
    .line 660
    .line 661
    const-string/jumbo v1, "lowpan"

    .line 662
    .line 663
    .line 664
    const-class v2, Landroid/net/lowpan/LowpanManager;

    .line 665
    .line 666
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 667
    .line 668
    .line 669
    new-instance v0, Landroid/app/SystemServiceRegistry$52;

    .line 670
    .line 671
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    .line 672
    .line 673
    .line 674
    const-string/jumbo v1, "wifi"

    .line 675
    .line 676
    .line 677
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 678
    .line 679
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 680
    .line 681
    .line 682
    new-instance v0, Landroid/app/SystemServiceRegistry$53;

    .line 683
    .line 684
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    .line 685
    .line 686
    .line 687
    const-string/jumbo v1, "wifip2p"

    .line 688
    .line 689
    .line 690
    const-class v2, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 691
    .line 692
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 693
    .line 694
    .line 695
    new-instance v0, Landroid/app/SystemServiceRegistry$54;

    .line 696
    .line 697
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    .line 698
    .line 699
    .line 700
    const-string/jumbo v1, "wifiaware"

    .line 701
    .line 702
    .line 703
    const-class v2, Landroid/net/wifi/aware/WifiAwareManager;

    .line 704
    .line 705
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 706
    .line 707
    .line 708
    new-instance v0, Landroid/app/SystemServiceRegistry$55;

    .line 709
    .line 710
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    .line 711
    .line 712
    .line 713
    const-string/jumbo v1, "wifiscanner"

    .line 714
    .line 715
    .line 716
    const-class v2, Landroid/net/wifi/WifiScanner;

    .line 717
    .line 718
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 719
    .line 720
    .line 721
    new-instance v0, Landroid/app/SystemServiceRegistry$56;

    .line 722
    .line 723
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    .line 724
    .line 725
    .line 726
    const-string/jumbo v1, "rttmanager"

    .line 727
    .line 728
    .line 729
    const-class v2, Landroid/net/wifi/RttManager;

    .line 730
    .line 731
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 732
    .line 733
    .line 734
    new-instance v0, Landroid/app/SystemServiceRegistry$57;

    .line 735
    .line 736
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    .line 737
    .line 738
    .line 739
    const-string v1, "ethernet"

    .line 740
    .line 741
    const-class v2, Landroid/net/EthernetManager;

    .line 742
    .line 743
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 744
    .line 745
    .line 746
    new-instance v0, Landroid/app/SystemServiceRegistry$58;

    .line 747
    .line 748
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    .line 749
    .line 750
    .line 751
    const-string/jumbo v1, "window"

    .line 752
    .line 753
    .line 754
    const-class v2, Landroid/view/WindowManager;

    .line 755
    .line 756
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 757
    .line 758
    .line 759
    new-instance v0, Landroid/app/SystemServiceRegistry$59;

    .line 760
    .line 761
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    .line 762
    .line 763
    .line 764
    const-string/jumbo v1, "user"

    .line 765
    .line 766
    .line 767
    const-class v2, Landroid/os/UserManager;

    .line 768
    .line 769
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 770
    .line 771
    .line 772
    new-instance v0, Landroid/app/SystemServiceRegistry$60;

    .line 773
    .line 774
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    .line 775
    .line 776
    .line 777
    const-string v1, "appops"

    .line 778
    .line 779
    const-class v2, Landroid/app/AppOpsManager;

    .line 780
    .line 781
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 782
    .line 783
    .line 784
    new-instance v0, Landroid/app/SystemServiceRegistry$61;

    .line 785
    .line 786
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    .line 787
    .line 788
    .line 789
    const-string v1, "camera"

    .line 790
    .line 791
    const-class v2, Landroid/hardware/camera2/CameraManager;

    .line 792
    .line 793
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 794
    .line 795
    .line 796
    new-instance v0, Landroid/app/SystemServiceRegistry$62;

    .line 797
    .line 798
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    .line 799
    .line 800
    .line 801
    const-string/jumbo v1, "launcherapps"

    .line 802
    .line 803
    .line 804
    const-class v2, Landroid/content/pm/LauncherApps;

    .line 805
    .line 806
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 807
    .line 808
    .line 809
    new-instance v0, Landroid/app/SystemServiceRegistry$63;

    .line 810
    .line 811
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    .line 812
    .line 813
    .line 814
    const-string/jumbo v1, "restrictions"

    .line 815
    .line 816
    .line 817
    const-class v2, Landroid/content/RestrictionsManager;

    .line 818
    .line 819
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 820
    .line 821
    .line 822
    new-instance v0, Landroid/app/SystemServiceRegistry$64;

    .line 823
    .line 824
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    .line 825
    .line 826
    .line 827
    const-string/jumbo v1, "print"

    .line 828
    .line 829
    .line 830
    const-class v2, Landroid/print/PrintManager;

    .line 831
    .line 832
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 833
    .line 834
    .line 835
    new-instance v0, Landroid/app/SystemServiceRegistry$65;

    .line 836
    .line 837
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    .line 838
    .line 839
    .line 840
    const-string v1, "companiondevice"

    .line 841
    .line 842
    const-class v2, Landroid/companion/CompanionDeviceManager;

    .line 843
    .line 844
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 845
    .line 846
    .line 847
    new-instance v0, Landroid/app/SystemServiceRegistry$66;

    .line 848
    .line 849
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    .line 850
    .line 851
    .line 852
    const-string v1, "consumer_ir"

    .line 853
    .line 854
    const-class v2, Landroid/hardware/ConsumerIrManager;

    .line 855
    .line 856
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 857
    .line 858
    .line 859
    new-instance v0, Landroid/app/SystemServiceRegistry$67;

    .line 860
    .line 861
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    .line 862
    .line 863
    .line 864
    const-string/jumbo v1, "media_session"

    .line 865
    .line 866
    .line 867
    const-class v2, Landroid/media/session/MediaSessionManager;

    .line 868
    .line 869
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 870
    .line 871
    .line 872
    new-instance v0, Landroid/app/SystemServiceRegistry$68;

    .line 873
    .line 874
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    .line 875
    .line 876
    .line 877
    const-string/jumbo v1, "trust"

    .line 878
    .line 879
    .line 880
    const-class v2, Landroid/app/trust/TrustManager;

    .line 881
    .line 882
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 883
    .line 884
    .line 885
    new-instance v0, Landroid/app/SystemServiceRegistry$69;

    .line 886
    .line 887
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    .line 888
    .line 889
    .line 890
    const-string v1, "fingerprint"

    .line 891
    .line 892
    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 893
    .line 894
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 895
    .line 896
    .line 897
    new-instance v0, Landroid/app/SystemServiceRegistry$70;

    .line 898
    .line 899
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    .line 900
    .line 901
    .line 902
    const-string/jumbo v1, "tv_input"

    .line 903
    .line 904
    .line 905
    const-class v2, Landroid/media/tv/TvInputManager;

    .line 906
    .line 907
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 908
    .line 909
    .line 910
    new-instance v0, Landroid/app/SystemServiceRegistry$71;

    .line 911
    .line 912
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string/jumbo v1, "network_score"

    .line 916
    .line 917
    .line 918
    const-class v2, Landroid/net/NetworkScoreManager;

    .line 919
    .line 920
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 921
    .line 922
    .line 923
    new-instance v0, Landroid/app/SystemServiceRegistry$72;

    .line 924
    .line 925
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    .line 926
    .line 927
    .line 928
    const-string/jumbo v1, "usagestats"

    .line 929
    .line 930
    .line 931
    const-class v2, Landroid/app/usage/UsageStatsManager;

    .line 932
    .line 933
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 934
    .line 935
    .line 936
    new-instance v0, Landroid/app/SystemServiceRegistry$73;

    .line 937
    .line 938
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    .line 939
    .line 940
    .line 941
    const-string/jumbo v1, "netstats"

    .line 942
    .line 943
    .line 944
    const-class v2, Landroid/app/usage/NetworkStatsManager;

    .line 945
    .line 946
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 947
    .line 948
    .line 949
    new-instance v0, Landroid/app/SystemServiceRegistry$74;

    .line 950
    .line 951
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    .line 952
    .line 953
    .line 954
    const-string/jumbo v1, "jobscheduler"

    .line 955
    .line 956
    .line 957
    const-class v2, Landroid/app/job/JobScheduler;

    .line 958
    .line 959
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 960
    .line 961
    .line 962
    new-instance v0, Landroid/app/SystemServiceRegistry$75;

    .line 963
    .line 964
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    .line 965
    .line 966
    .line 967
    const-string/jumbo v1, "persistent_data_block"

    .line 968
    .line 969
    .line 970
    const-class v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 971
    .line 972
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 973
    .line 974
    .line 975
    new-instance v0, Landroid/app/SystemServiceRegistry$76;

    .line 976
    .line 977
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    .line 978
    .line 979
    .line 980
    const-string/jumbo v1, "oem_lock"

    .line 981
    .line 982
    .line 983
    const-class v2, Landroid/service/oemlock/OemLockManager;

    .line 984
    .line 985
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 986
    .line 987
    .line 988
    new-instance v0, Landroid/app/SystemServiceRegistry$77;

    .line 989
    .line 990
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    .line 991
    .line 992
    .line 993
    const-string/jumbo v1, "media_projection"

    .line 994
    .line 995
    .line 996
    const-class v2, Landroid/media/projection/MediaProjectionManager;

    .line 997
    .line 998
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 999
    .line 1000
    .line 1001
    new-instance v0, Landroid/app/SystemServiceRegistry$78;

    .line 1002
    .line 1003
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    .line 1004
    .line 1005
    .line 1006
    const-string v1, "appwidget"

    .line 1007
    .line 1008
    const-class v2, Landroid/appwidget/AppWidgetManager;

    .line 1009
    .line 1010
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1011
    .line 1012
    .line 1013
    new-instance v0, Landroid/app/SystemServiceRegistry$79;

    .line 1014
    .line 1015
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    .line 1016
    .line 1017
    .line 1018
    const-string/jumbo v1, "midi"

    .line 1019
    .line 1020
    .line 1021
    const-class v2, Landroid/media/midi/MidiManager;

    .line 1022
    .line 1023
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1024
    .line 1025
    .line 1026
    new-instance v0, Landroid/app/SystemServiceRegistry$80;

    .line 1027
    .line 1028
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    .line 1029
    .line 1030
    .line 1031
    const-string v1, "broadcastradio"

    .line 1032
    .line 1033
    const-class v2, Landroid/hardware/radio/RadioManager;

    .line 1034
    .line 1035
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-static {}, Landroid/app/AbsPowerGuru;->isEnabled()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    if-eqz v0, :cond_0

    .line 1043
    .line 1044
    new-instance v0, Landroid/app/SystemServiceRegistry$81;

    .line 1045
    .line 1046
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    .line 1047
    .line 1048
    .line 1049
    const-string/jumbo v1, "powerguru"

    .line 1050
    .line 1051
    .line 1052
    const-class v2, Landroid/app/AbsPowerGuru;

    .line 1053
    .line 1054
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1055
    .line 1056
    .line 1057
    :cond_0
    new-instance v0, Landroid/app/SystemServiceRegistry$82;

    .line 1058
    .line 1059
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    .line 1060
    .line 1061
    .line 1062
    const-string/jumbo v1, "hardware_properties"

    .line 1063
    .line 1064
    .line 1065
    const-class v2, Landroid/os/HardwarePropertiesManager;

    .line 1066
    .line 1067
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1068
    .line 1069
    .line 1070
    new-instance v0, Landroid/app/SystemServiceRegistry$83;

    .line 1071
    .line 1072
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    const-string/jumbo v1, "soundtrigger"

    .line 1076
    .line 1077
    .line 1078
    const-class v2, Landroid/media/soundtrigger/SoundTriggerManager;

    .line 1079
    .line 1080
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1081
    .line 1082
    .line 1083
    new-instance v0, Landroid/app/SystemServiceRegistry$84;

    .line 1084
    .line 1085
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    .line 1086
    .line 1087
    .line 1088
    const-string/jumbo v1, "shortcut"

    .line 1089
    .line 1090
    .line 1091
    const-class v2, Landroid/content/pm/ShortcutManager;

    .line 1092
    .line 1093
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1094
    .line 1095
    .line 1096
    new-instance v0, Landroid/app/SystemServiceRegistry$85;

    .line 1097
    .line 1098
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    .line 1099
    .line 1100
    .line 1101
    const-string/jumbo v1, "systemhealth"

    .line 1102
    .line 1103
    .line 1104
    const-class v2, Landroid/os/health/SystemHealthManager;

    .line 1105
    .line 1106
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1107
    .line 1108
    .line 1109
    new-instance v0, Landroid/app/SystemServiceRegistry$86;

    .line 1110
    .line 1111
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    .line 1112
    .line 1113
    .line 1114
    const-string v1, "contexthub"

    .line 1115
    .line 1116
    const-class v2, Landroid/hardware/location/ContextHubManager;

    .line 1117
    .line 1118
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1119
    .line 1120
    .line 1121
    new-instance v0, Landroid/app/SystemServiceRegistry$87;

    .line 1122
    .line 1123
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    .line 1124
    .line 1125
    .line 1126
    const-string/jumbo v1, "incident"

    .line 1127
    .line 1128
    .line 1129
    const-class v2, Landroid/os/IncidentManager;

    .line 1130
    .line 1131
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1132
    .line 1133
    .line 1134
    new-instance v0, Landroid/app/SystemServiceRegistry$88;

    .line 1135
    .line 1136
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    .line 1137
    .line 1138
    .line 1139
    const-string v1, "autofill"

    .line 1140
    .line 1141
    const-class v2, Landroid/view/autofill/AutofillManager;

    .line 1142
    .line 1143
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1144
    .line 1145
    .line 1146
    new-instance v0, Landroid/app/SystemServiceRegistry$89;

    .line 1147
    .line 1148
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    .line 1149
    .line 1150
    .line 1151
    const-string/jumbo v1, "vrmanager"

    .line 1152
    .line 1153
    .line 1154
    const-class v2, Landroid/app/VrManager;

    .line 1155
    .line 1156
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1157
    .line 1158
    .line 1159
    new-instance v0, Landroid/app/SystemServiceRegistry$90;

    .line 1160
    .line 1161
    invoke-direct {v0}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    .line 1162
    .line 1163
    .line 1164
    const-string/jumbo v1, "timezone"

    .line 1165
    .line 1166
    .line 1167
    const-class v2, Landroid/app/timezone/RulesManager;

    .line 1168
    .line 1169
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1170
    .line 1171
    .line 1172
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$008()I
    .locals 2

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2710

    .line 6
    .line 7
    const-string v2, "SystemServiceRegistry"

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v2, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method
