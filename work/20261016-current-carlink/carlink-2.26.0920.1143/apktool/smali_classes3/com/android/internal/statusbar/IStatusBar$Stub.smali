.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addQsTile:I = 0x1f

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x16

.field static final TRANSACTION_appTransitionFinished:I = 0x18

.field static final TRANSACTION_appTransitionPending:I = 0x15

.field static final TRANSACTION_appTransitionStarting:I = 0x17

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x11

.field static final TRANSACTION_clickQsTile:I = 0x21

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x13

.field static final TRANSACTION_handleSystemKey:I = 0x22

.field static final TRANSACTION_hideRecentApps:I = 0xd

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1b

.field static final TRANSACTION_preloadRecentApps:I = 0x10

.field static final TRANSACTION_remQsTile:I = 0x20

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0xa

.field static final TRANSACTION_setSystemUiVisibility:I = 0x8

.field static final TRANSACTION_setTopAppHidesStatusBar:I = 0x1e

.field static final TRANSACTION_setWindowState:I = 0xb

.field static final TRANSACTION_showAssistDisclosure:I = 0x19

.field static final TRANSACTION_showGlobalActionsMenu:I = 0x1d

.field static final TRANSACTION_showPictureInPictureMenu:I = 0x1c

.field static final TRANSACTION_showRecentApps:I = 0xc

.field static final TRANSACTION_showScreenPinningRequest:I = 0x12

.field static final TRANSACTION_showShutdownUi:I = 0x23

.field static final TRANSACTION_startAssist:I = 0x1a

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x14

.field static final TRANSACTION_togglePanel:I = 0x7

.field static final TRANSACTION_toggleRecentApps:I = 0xe

.field static final TRANSACTION_toggleSplitScreen:I = 0xf

.field static final TRANSACTION_topAppWindowChanged:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_f

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    move v3, v2

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, v3, p1}, Lcom/android/internal/statusbar/IStatusBar;->showShutdownUi(ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(I)V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    .line 59
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    move-object v0, p1

    .line 64
    check-cast v0, Landroid/content/ComponentName;

    .line 65
    .line 66
    :cond_1
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V

    .line 67
    .line 68
    .line 69
    return v2

    .line 70
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    .line 81
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    move-object v0, p1

    .line 86
    check-cast v0, Landroid/content/ComponentName;

    .line 87
    .line 88
    :cond_2
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V

    .line 89
    .line 90
    .line 91
    return v2

    .line 92
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    .line 103
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    move-object v0, p1

    .line 108
    check-cast v0, Landroid/content/ComponentName;

    .line 109
    .line 110
    :cond_3
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V

    .line 111
    .line 112
    .line 113
    return v2

    .line 114
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    move v3, v2

    .line 124
    :cond_4
    invoke-interface {p0, v3}, Lcom/android/internal/statusbar/IStatusBar;->setTopAppHidesStatusBar(Z)V

    .line 125
    .line 126
    .line 127
    return v2

    .line 128
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showGlobalActionsMenu()V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showPictureInPictureMenu()V

    .line 139
    .line 140
    .line 141
    return v2

    .line 142
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onCameraLaunchGestureDetected(I)V

    .line 150
    .line 151
    .line 152
    return v2

    .line 153
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 163
    .line 164
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    move-object v0, p1

    .line 169
    check-cast v0, Landroid/os/Bundle;

    .line 170
    .line 171
    :cond_5
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V

    .line 172
    .line 173
    .line 174
    return v2

    .line 175
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showAssistDisclosure()V

    .line 179
    .line 180
    .line 181
    return v2

    .line 182
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionFinished()V

    .line 186
    .line 187
    .line 188
    return v2

    .line 189
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 193
    .line 194
    .line 195
    move-result-wide p3

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 197
    .line 198
    .line 199
    move-result-wide p1

    .line 200
    invoke-interface {p0, p3, p4, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(JJ)V

    .line 201
    .line 202
    .line 203
    return v2

    .line 204
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled()V

    .line 208
    .line 209
    .line 210
    return v2

    .line 211
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending()V

    .line 215
    .line 216
    .line 217
    return v2

    .line 218
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V

    .line 226
    .line 227
    .line 228
    return v2

    .line 229
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->dismissKeyboardShortcutsMenu()V

    .line 233
    .line 234
    .line 235
    return v2

    .line 236
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showScreenPinningRequest(I)V

    .line 244
    .line 245
    .line 246
    return v2

    .line 247
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V

    .line 251
    .line 252
    .line 253
    return v2

    .line 254
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V

    .line 258
    .line 259
    .line 260
    return v2

    .line 261
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->toggleSplitScreen()V

    .line 265
    .line 266
    .line 267
    return v2

    .line 268
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V

    .line 272
    .line 273
    .line 274
    return v2

    .line 275
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_6

    .line 283
    .line 284
    move p1, v2

    .line 285
    goto :goto_0

    .line 286
    :cond_6
    move p1, v3

    .line 287
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    if-eqz p2, :cond_7

    .line 292
    .line 293
    move v3, v2

    .line 294
    :cond_7
    invoke-interface {p0, p1, v3}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V

    .line 295
    .line 296
    .line 297
    return v2

    .line 298
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-eqz p1, :cond_8

    .line 306
    .line 307
    move p1, v2

    .line 308
    goto :goto_1

    .line 309
    :cond_8
    move p1, v3

    .line 310
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-eqz p2, :cond_9

    .line 315
    .line 316
    move v3, v2

    .line 317
    :cond_9
    invoke-interface {p0, p1, v3}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(ZZ)V

    .line 318
    .line 319
    .line 320
    return v2

    .line 321
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V

    .line 333
    .line 334
    .line 335
    return v2

    .line 336
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 344
    .line 345
    .line 346
    move-result p3

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 348
    .line 349
    .line 350
    move-result p4

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    if-eqz p2, :cond_a

    .line 356
    .line 357
    move v3, v2

    .line 358
    :cond_a
    invoke-interface {p0, p1, p3, p4, v3}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 359
    .line 360
    .line 361
    return v2

    .line 362
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-eqz p1, :cond_b

    .line 370
    .line 371
    move v3, v2

    .line 372
    :cond_b
    invoke-interface {p0, v3}, Lcom/android/internal/statusbar/IStatusBar;->topAppWindowChanged(Z)V

    .line 373
    .line 374
    .line 375
    return v2

    .line 376
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    if-eqz p1, :cond_c

    .line 400
    .line 401
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 402
    .line 403
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    check-cast p1, Landroid/graphics/Rect;

    .line 408
    .line 409
    move-object v9, p1

    .line 410
    goto :goto_2

    .line 411
    :cond_c
    move-object v9, v0

    .line 412
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    if-eqz p1, :cond_d

    .line 417
    .line 418
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 419
    .line 420
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    move-object v0, p1

    .line 425
    check-cast v0, Landroid/graphics/Rect;

    .line 426
    .line 427
    :cond_d
    move-object v10, v0

    .line 428
    move-object v4, p0

    .line 429
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 430
    .line 431
    .line 432
    return v2

    .line 433
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->togglePanel()V

    .line 437
    .line 438
    .line 439
    return v2

    .line 440
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V

    .line 444
    .line 445
    .line 446
    return v2

    .line 447
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    return v2

    .line 458
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V

    .line 462
    .line 463
    .line 464
    return v2

    .line 465
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 473
    .line 474
    .line 475
    move-result p2

    .line 476
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->disable(II)V

    .line 477
    .line 478
    .line 479
    return v2

    .line 480
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    return v2

    .line 491
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 499
    .line 500
    .line 501
    move-result p3

    .line 502
    if-eqz p3, :cond_e

    .line 503
    .line 504
    sget-object p3, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 505
    .line 506
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object p2

    .line 510
    move-object v0, p2

    .line 511
    check-cast v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 512
    .line 513
    :cond_e
    invoke-interface {p0, p1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 514
    .line 515
    .line 516
    return v2

    .line 517
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    return v2

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
