.class public Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ARG_KEY:Ljava/lang/String; = "arg"

.field public static final GPS_ACTION:Ljava/lang/String; = "com.google.android.projection.sink.GPS"

.field public static final LOCKOUT_ACTION:Ljava/lang/String; = "com.google.android.projection.sink.LOCKOUT"

.field public static final NIGHT_MODE_ACTION:Ljava/lang/String; = "com.google.android.projection.sink.NIGHT_MODE"

.field private static final TAG:Ljava/lang/String; = "AHU.ICR"


# instance fields
.field private final mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

.field private final mGal:Lcom/google/android/projection/sink/GalIntegration;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/GalIntegration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 7
    .line 8
    return-void
.end method

.method public static getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.google.android.projection.sink.GPS"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.google.android.projection.sink.NIGHT_MODE"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "com.google.android.projection.sink.LOCKOUT"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/projection/sink/settings/Settings;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, "AHU.ICR"

    .line 13
    .line 14
    const-string p2, "no extras. discarding."

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v2, -0x1

    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    sparse-switch p2, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    :goto_0
    move p1, v2

    .line 39
    goto :goto_1

    .line 40
    :sswitch_0
    const-string p2, "com.google.android.projection.sink.GPS"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move p1, v3

    .line 50
    goto :goto_1

    .line 51
    :sswitch_1
    const-string p2, "com.google.android.projection.sink.LOCKOUT"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move p1, v4

    .line 61
    goto :goto_1

    .line 62
    :sswitch_2
    const-string p2, "com.google.android.projection.sink.NIGHT_MODE"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move p1, v5

    .line 72
    :goto_1
    const-string p2, "arg"

    .line 73
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/android/projection/sink/settings/Settings;->isGpsSimulationEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_c

    .line 84
    .line 85
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_c

    .line 90
    .line 91
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    sparse-switch p2, :sswitch_data_1

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :sswitch_3
    const-string p2, "reset"

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move v2, v3

    .line 116
    goto :goto_2

    .line 117
    :sswitch_4
    const-string p2, "decreaseSpeed"

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_5

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    move v2, v4

    .line 127
    goto :goto_2

    .line 128
    :sswitch_5
    const-string p2, "increaseSpeed"

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    move v2, v5

    .line 138
    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 139
    .line 140
    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/google/android/projection/sink/debug/DebugContext;->getSimulatedLocationProvider()Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->resetSimulation()V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/google/android/projection/sink/debug/DebugContext;->getSimulatedLocationProvider()Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->decreaseSimulationSpeed()V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/google/android/projection/sink/debug/DebugContext;->getSimulatedLocationProvider()Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->increaseSimulationSpeed()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :pswitch_4
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_c

    .line 181
    .line 182
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    sparse-switch p2, :sswitch_data_2

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :sswitch_6
    const-string p2, "override"

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_7

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    move v2, v3

    .line 207
    goto :goto_3

    .line 208
    :sswitch_7
    const-string p2, "force"

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_8

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    move v2, v4

    .line 218
    goto :goto_3

    .line 219
    :sswitch_8
    const-string p2, "auto"

    .line 220
    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_9

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_9
    move v2, v5

    .line 229
    :goto_3
    packed-switch v2, :pswitch_data_2

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Lcom/google/android/projection/sink/debug/DebugContext;->setKeyboardLockoutMode(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 240
    .line 241
    invoke-virtual {p1, v4}, Lcom/google/android/projection/sink/debug/DebugContext;->setKeyboardLockoutMode(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 246
    .line 247
    invoke-virtual {p1, v5}, Lcom/google/android/projection/sink/debug/DebugContext;->setKeyboardLockoutMode(I)V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :pswitch_8
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_c

    .line 256
    .line 257
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    const-string p2, "day"

    .line 265
    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    if-nez p2, :cond_b

    .line 271
    .line 272
    const-string p2, "night"

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-nez p1, :cond_a

    .line 279
    .line 280
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 281
    .line 282
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 283
    .line 284
    const/4 p2, 0x0

    .line 285
    invoke-virtual {p1, p2}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->overrideNightMode(Ljava/lang/Boolean;)V

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_a
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 290
    .line 291
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 292
    .line 293
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 294
    .line 295
    invoke-virtual {p1, p2}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->overrideNightMode(Ljava/lang/Boolean;)V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_b
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 300
    .line 301
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 302
    .line 303
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 304
    .line 305
    invoke-virtual {p1, p2}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->overrideNightMode(Ljava/lang/Boolean;)V

    .line 306
    .line 307
    .line 308
    :cond_c
    :goto_4
    return-void

    .line 309
    :sswitch_data_0
    .sparse-switch
        -0x4f0a6753 -> :sswitch_2
        -0x41597220 -> :sswitch_1
        0x12a926c7 -> :sswitch_0
    .end sparse-switch

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :sswitch_data_1
    .sparse-switch
        -0x30e9d4db -> :sswitch_5
        -0x1eb7c5b7 -> :sswitch_4
        0x6761d4f -> :sswitch_3
    .end sparse-switch

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :sswitch_data_2
    .sparse-switch
        0x2dddaf -> :sswitch_8
        0x5d18aeb -> :sswitch_7
        0x1f971bcc -> :sswitch_6
    .end sparse-switch

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
