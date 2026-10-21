.class public abstract Lcom/android/ims/internal/IVoWifiCall$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/ims/internal/IVoWifiCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IVoWifiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiCall$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IVoWifiCall"

.field static final TRANSACTION_cameraAttach:I = 0x1c

.field static final TRANSACTION_cameraDetach:I = 0x1d

.field static final TRANSACTION_captureStart:I = 0x20

.field static final TRANSACTION_captureStop:I = 0x21

.field static final TRANSACTION_captureStopAll:I = 0x22

.field static final TRANSACTION_confAcceptInvite:I = 0x15

.field static final TRANSACTION_confAddMembers:I = 0x14

.field static final TRANSACTION_confCall:I = 0xf

.field static final TRANSACTION_confHold:I = 0x12

.field static final TRANSACTION_confInit:I = 0x10

.field static final TRANSACTION_confKickMembers:I = 0x17

.field static final TRANSACTION_confRelease:I = 0x1a

.field static final TRANSACTION_confResume:I = 0x13

.field static final TRANSACTION_confSetLocalImageForTrans:I = 0x19

.field static final TRANSACTION_confSetMute:I = 0x18

.field static final TRANSACTION_confSetup:I = 0x11

.field static final TRANSACTION_confTerm:I = 0x16

.field static final TRANSACTION_confUpdateSRVCCResult:I = 0x1b

.field static final TRANSACTION_getDefaultVideoLevel:I = 0x2a

.field static final TRANSACTION_getMediaJitter:I = 0x2e

.field static final TRANSACTION_getMediaLostRatio:I = 0x2d

.field static final TRANSACTION_getMediaRtt:I = 0x2f

.field static final TRANSACTION_localRenderAdd:I = 0x26

.field static final TRANSACTION_localRenderRemove:I = 0x28

.field static final TRANSACTION_localRenderRotate:I = 0x24

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_remoteRenderAdd:I = 0x25

.field static final TRANSACTION_remoteRenderRemove:I = 0x27

.field static final TRANSACTION_remoteRenderRotate:I = 0x23

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x2b

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x2c

.field static final TRANSACTION_sendUSSDMessage:I = 0x30

.field static final TRANSACTION_sessAnswer:I = 0xb

.field static final TRANSACTION_sessCall:I = 0x5

.field static final TRANSACTION_sessDtmf:I = 0xa

.field static final TRANSACTION_sessHold:I = 0x8

.field static final TRANSACTION_sessRelease:I = 0xd

.field static final TRANSACTION_sessResume:I = 0x9

.field static final TRANSACTION_sessSetMicMute:I = 0x6

.field static final TRANSACTION_sessTerm:I = 0x7

.field static final TRANSACTION_sessUpdate:I = 0xc

.field static final TRANSACTION_sessUpdateSRVCCResult:I = 0xe

.field static final TRANSACTION_setDefaultVideoLevel:I = 0x29

.field static final TRANSACTION_startAudioStream:I = 0x3

.field static final TRANSACTION_stopAudioStream:I = 0x4

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_updateDataRouterState:I = 0x31

.field static final TRANSACTION_videoStart:I = 0x1e

.field static final TRANSACTION_videoStop:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.ims.internal.IVoWifiCall"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiCall;
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
    const-string v0, "com.android.ims.internal.IVoWifiCall"

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
    instance-of v1, v0, Lcom/android/ims/internal/IVoWifiCall;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/ims/internal/IVoWifiCall;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IVoWifiCall$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IVoWifiCall$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.android.ims.internal.IVoWifiCall"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_22

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
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->updateDataRouterState(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->sendUSSDMessage(ILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-eqz p4, :cond_0

    .line 71
    .line 72
    move p4, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move p4, v3

    .line 75
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    move v3, v2

    .line 82
    :cond_1
    invoke-interface {p0, p1, p4, v3}, Lcom/android/ims/internal/IVoWifiCall;->getMediaRtt(IZZ)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    .line 91
    .line 92
    return v2

    .line 93
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    if-eqz p4, :cond_2

    .line 105
    .line 106
    move p4, v2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move p4, v3

    .line 109
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_3

    .line 114
    .line 115
    move v3, v2

    .line 116
    :cond_3
    invoke-interface {p0, p1, p4, v3}, Lcom/android/ims/internal/IVoWifiCall;->getMediaJitter(IZZ)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    .line 125
    .line 126
    return v2

    .line 127
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result p4

    .line 138
    if-eqz p4, :cond_4

    .line 139
    .line 140
    move p4, v2

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    move p4, v3

    .line 143
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_5

    .line 148
    .line 149
    move v3, v2

    .line 150
    :cond_5
    invoke-interface {p0, p1, p4, v3}, Lcom/android/ims/internal/IVoWifiCall;->getMediaLostRatio(IZZ)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    .line 159
    .line 160
    return v2

    .line 161
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->sendSessionModifyResponse(II)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    .line 181
    .line 182
    return v2

    .line 183
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->sendSessionModifyRequest(II)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    .line 203
    .line 204
    return v2

    .line 205
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p0}, Lcom/android/ims/internal/IVoWifiCall;->getDefaultVideoLevel()I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    .line 217
    .line 218
    return v2

    .line 219
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->setDefaultVideoLevel(I)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    .line 235
    .line 236
    return v2

    .line 237
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_6

    .line 245
    .line 246
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 247
    .line 248
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    move-object v0, p1

    .line 253
    check-cast v0, Landroid/view/Surface;

    .line 254
    .line 255
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_7

    .line 260
    .line 261
    move v3, v2

    .line 262
    :cond_7
    invoke-interface {p0, v0, v3}, Lcom/android/ims/internal/IVoWifiCall;->localRenderRemove(Landroid/view/Surface;Z)I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    .line 271
    .line 272
    return v2

    .line 273
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-eqz p1, :cond_8

    .line 281
    .line 282
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 283
    .line 284
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    move-object v0, p1

    .line 289
    check-cast v0, Landroid/view/Surface;

    .line 290
    .line 291
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_9

    .line 296
    .line 297
    move v3, v2

    .line 298
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    invoke-interface {p0, v0, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->remoteRenderRemove(Landroid/view/Surface;ZI)I

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    .line 311
    .line 312
    return v2

    .line 313
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_a

    .line 321
    .line 322
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 323
    .line 324
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    move-object v0, p1

    .line 329
    check-cast v0, Landroid/view/Surface;

    .line 330
    .line 331
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_b

    .line 336
    .line 337
    move v3, v2

    .line 338
    :cond_b
    invoke-interface {p0, v0, v3}, Lcom/android/ims/internal/IVoWifiCall;->localRenderAdd(Landroid/view/Surface;Z)I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    .line 347
    .line 348
    return v2

    .line 349
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_c

    .line 357
    .line 358
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 359
    .line 360
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    move-object v0, p1

    .line 365
    check-cast v0, Landroid/view/Surface;

    .line 366
    .line 367
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_d

    .line 372
    .line 373
    move v3, v2

    .line 374
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    invoke-interface {p0, v0, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->remoteRenderAdd(Landroid/view/Surface;ZI)I

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    .line 387
    .line 388
    return v2

    .line 389
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-eqz p1, :cond_e

    .line 397
    .line 398
    move v3, v2

    .line 399
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    invoke-interface {p0, v3, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->localRenderRotate(ZII)I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    .line 416
    .line 417
    return v2

    .line 418
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    if-eqz p1, :cond_f

    .line 426
    .line 427
    move v3, v2

    .line 428
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 433
    .line 434
    .line 435
    move-result p2

    .line 436
    invoke-interface {p0, v3, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->remoteRenderRotate(ZII)I

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    .line 445
    .line 446
    return v2

    .line 447
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-interface {p0}, Lcom/android/ims/internal/IVoWifiCall;->captureStopAll()I

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    .line 459
    .line 460
    return v2

    .line 461
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 465
    .line 466
    .line 467
    move-result p1

    .line 468
    if-eqz p1, :cond_10

    .line 469
    .line 470
    move v3, v2

    .line 471
    :cond_10
    invoke-interface {p0, v3}, Lcom/android/ims/internal/IVoWifiCall;->captureStop(Z)I

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    .line 480
    .line 481
    return v2

    .line 482
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 486
    .line 487
    .line 488
    move-result p1

    .line 489
    if-eqz p1, :cond_11

    .line 490
    .line 491
    move v3, v2

    .line 492
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 497
    .line 498
    .line 499
    move-result p4

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 501
    .line 502
    .line 503
    move-result p2

    .line 504
    invoke-interface {p0, v3, p1, p4, p2}, Lcom/android/ims/internal/IVoWifiCall;->captureStart(ZIII)I

    .line 505
    .line 506
    .line 507
    move-result p1

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    .line 513
    .line 514
    return v2

    .line 515
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    if-eqz p1, :cond_12

    .line 523
    .line 524
    move v3, v2

    .line 525
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 526
    .line 527
    .line 528
    move-result p1

    .line 529
    invoke-interface {p0, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->videoStop(ZI)I

    .line 530
    .line 531
    .line 532
    move-result p1

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    .line 538
    .line 539
    return v2

    .line 540
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    if-eqz p1, :cond_13

    .line 548
    .line 549
    move v3, v2

    .line 550
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 551
    .line 552
    .line 553
    move-result p1

    .line 554
    invoke-interface {p0, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->videoStart(ZI)I

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    .line 563
    .line 564
    return v2

    .line 565
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 569
    .line 570
    .line 571
    move-result p1

    .line 572
    if-eqz p1, :cond_14

    .line 573
    .line 574
    move v3, v2

    .line 575
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 576
    .line 577
    .line 578
    move-result p1

    .line 579
    invoke-interface {p0, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->cameraDetach(ZI)I

    .line 580
    .line 581
    .line 582
    move-result p1

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    .line 588
    .line 589
    return v2

    .line 590
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 594
    .line 595
    .line 596
    move-result p1

    .line 597
    if-eqz p1, :cond_15

    .line 598
    .line 599
    move p1, v2

    .line 600
    goto :goto_3

    .line 601
    :cond_15
    move p1, v3

    .line 602
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 603
    .line 604
    .line 605
    move-result p4

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 607
    .line 608
    .line 609
    move-result p2

    .line 610
    if-eqz p2, :cond_16

    .line 611
    .line 612
    move v3, v2

    .line 613
    :cond_16
    invoke-interface {p0, p1, p4, v3}, Lcom/android/ims/internal/IVoWifiCall;->cameraAttach(ZIZ)I

    .line 614
    .line 615
    .line 616
    move-result p1

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    .line 622
    .line 623
    return v2

    .line 624
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 628
    .line 629
    .line 630
    move-result p1

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 632
    .line 633
    .line 634
    move-result p2

    .line 635
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->confUpdateSRVCCResult(II)I

    .line 636
    .line 637
    .line 638
    move-result p1

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    .line 644
    .line 645
    return v2

    .line 646
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 650
    .line 651
    .line 652
    move-result p1

    .line 653
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->confRelease(I)I

    .line 654
    .line 655
    .line 656
    move-result p1

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    .line 659
    .line 660
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    .line 662
    .line 663
    return v2

    .line 664
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 668
    .line 669
    .line 670
    move-result p1

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object p4

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 676
    .line 677
    .line 678
    move-result p2

    .line 679
    if-eqz p2, :cond_17

    .line 680
    .line 681
    move v3, v2

    .line 682
    :cond_17
    invoke-interface {p0, p1, p4, v3}, Lcom/android/ims/internal/IVoWifiCall;->confSetLocalImageForTrans(ILjava/lang/String;Z)I

    .line 683
    .line 684
    .line 685
    move-result p1

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    .line 688
    .line 689
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    .line 691
    .line 692
    return v2

    .line 693
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 697
    .line 698
    .line 699
    move-result p1

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 701
    .line 702
    .line 703
    move-result p2

    .line 704
    if-eqz p2, :cond_18

    .line 705
    .line 706
    move v3, v2

    .line 707
    :cond_18
    invoke-interface {p0, p1, v3}, Lcom/android/ims/internal/IVoWifiCall;->confSetMute(IZ)I

    .line 708
    .line 709
    .line 710
    move-result p1

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    .line 713
    .line 714
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    .line 716
    .line 717
    return v2

    .line 718
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 722
    .line 723
    .line 724
    move-result p1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object p2

    .line 729
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->confKickMembers(I[Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    move-result p1

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    .line 738
    .line 739
    return v2

    .line 740
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 744
    .line 745
    .line 746
    move-result p1

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 748
    .line 749
    .line 750
    move-result p2

    .line 751
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->confTerm(II)I

    .line 752
    .line 753
    .line 754
    move-result p1

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    .line 757
    .line 758
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    .line 760
    .line 761
    return v2

    .line 762
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 766
    .line 767
    .line 768
    move-result p1

    .line 769
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->confAcceptInvite(I)I

    .line 770
    .line 771
    .line 772
    move-result p1

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    .line 778
    .line 779
    return v2

    .line 780
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 784
    .line 785
    .line 786
    move-result p1

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object p4

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 792
    .line 793
    .line 794
    move-result-object p2

    .line 795
    invoke-interface {p0, p1, p4, p2}, Lcom/android/ims/internal/IVoWifiCall;->confAddMembers(I[Ljava/lang/String;[I)I

    .line 796
    .line 797
    .line 798
    move-result p1

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    .line 804
    .line 805
    return v2

    .line 806
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 810
    .line 811
    .line 812
    move-result p1

    .line 813
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->confResume(I)I

    .line 814
    .line 815
    .line 816
    move-result p1

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    .line 819
    .line 820
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    .line 822
    .line 823
    return v2

    .line 824
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 828
    .line 829
    .line 830
    move-result p1

    .line 831
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->confHold(I)I

    .line 832
    .line 833
    .line 834
    move-result p1

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    .line 837
    .line 838
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    .line 840
    .line 841
    return v2

    .line 842
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 846
    .line 847
    .line 848
    move-result p1

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object p2

    .line 853
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->confSetup(ILjava/lang/String;)I

    .line 854
    .line 855
    .line 856
    move-result p1

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    .line 862
    .line 863
    return v2

    .line 864
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 868
    .line 869
    .line 870
    move-result p1

    .line 871
    if-eqz p1, :cond_19

    .line 872
    .line 873
    move v3, v2

    .line 874
    :cond_19
    invoke-interface {p0, v3}, Lcom/android/ims/internal/IVoWifiCall;->confInit(Z)I

    .line 875
    .line 876
    .line 877
    move-result p1

    .line 878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    .line 880
    .line 881
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    .line 883
    .line 884
    return v2

    .line 885
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object p1

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object p4

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 897
    .line 898
    .line 899
    move-result p2

    .line 900
    if-eqz p2, :cond_1a

    .line 901
    .line 902
    move v3, v2

    .line 903
    :cond_1a
    invoke-interface {p0, p1, p4, v3}, Lcom/android/ims/internal/IVoWifiCall;->confCall([Ljava/lang/String;Ljava/lang/String;Z)I

    .line 904
    .line 905
    .line 906
    move-result p1

    .line 907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    .line 909
    .line 910
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    .line 912
    .line 913
    return v2

    .line 914
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 918
    .line 919
    .line 920
    move-result p1

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 922
    .line 923
    .line 924
    move-result p2

    .line 925
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->sessUpdateSRVCCResult(II)I

    .line 926
    .line 927
    .line 928
    move-result p1

    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    .line 931
    .line 932
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    .line 934
    .line 935
    return v2

    .line 936
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 940
    .line 941
    .line 942
    move-result p1

    .line 943
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessRelease(I)I

    .line 944
    .line 945
    .line 946
    move-result p1

    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    .line 949
    .line 950
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    .line 952
    .line 953
    return v2

    .line 954
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 958
    .line 959
    .line 960
    move-result p1

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 962
    .line 963
    .line 964
    move-result p2

    .line 965
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->sessUpdate(II)I

    .line 966
    .line 967
    .line 968
    move-result p1

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    .line 971
    .line 972
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    .line 974
    .line 975
    return v2

    .line 976
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 980
    .line 981
    .line 982
    move-result p1

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object p4

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 988
    .line 989
    .line 990
    move-result v0

    .line 991
    if-eqz v0, :cond_1b

    .line 992
    .line 993
    move v0, v2

    .line 994
    goto :goto_4

    .line 995
    :cond_1b
    move v0, v3

    .line 996
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 997
    .line 998
    .line 999
    move-result p2

    .line 1000
    if-eqz p2, :cond_1c

    .line 1001
    .line 1002
    move v3, v2

    .line 1003
    :cond_1c
    invoke-interface {p0, p1, p4, v0, v3}, Lcom/android/ims/internal/IVoWifiCall;->sessAnswer(ILjava/lang/String;ZZ)I

    .line 1004
    .line 1005
    .line 1006
    move-result p1

    .line 1007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    .line 1012
    .line 1013
    return v2

    .line 1014
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1018
    .line 1019
    .line 1020
    move-result p1

    .line 1021
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1022
    .line 1023
    .line 1024
    move-result p2

    .line 1025
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->sessDtmf(II)I

    .line 1026
    .line 1027
    .line 1028
    move-result p1

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    .line 1034
    .line 1035
    return v2

    .line 1036
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1040
    .line 1041
    .line 1042
    move-result p1

    .line 1043
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessResume(I)I

    .line 1044
    .line 1045
    .line 1046
    move-result p1

    .line 1047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    .line 1052
    .line 1053
    return v2

    .line 1054
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1058
    .line 1059
    .line 1060
    move-result p1

    .line 1061
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessHold(I)I

    .line 1062
    .line 1063
    .line 1064
    move-result p1

    .line 1065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    .line 1070
    .line 1071
    return v2

    .line 1072
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1076
    .line 1077
    .line 1078
    move-result p1

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1080
    .line 1081
    .line 1082
    move-result p2

    .line 1083
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->sessTerm(II)I

    .line 1084
    .line 1085
    .line 1086
    move-result p1

    .line 1087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    .line 1092
    .line 1093
    return v2

    .line 1094
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1098
    .line 1099
    .line 1100
    move-result p1

    .line 1101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1102
    .line 1103
    .line 1104
    move-result p2

    .line 1105
    if-eqz p2, :cond_1d

    .line 1106
    .line 1107
    move v3, v2

    .line 1108
    :cond_1d
    invoke-interface {p0, p1, v3}, Lcom/android/ims/internal/IVoWifiCall;->sessSetMicMute(IZ)I

    .line 1109
    .line 1110
    .line 1111
    move-result p1

    .line 1112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    .line 1117
    .line 1118
    return v2

    .line 1119
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v4

    .line 1126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v5

    .line 1130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1131
    .line 1132
    .line 1133
    move-result p1

    .line 1134
    if-eqz p1, :cond_1e

    .line 1135
    .line 1136
    move v6, v2

    .line 1137
    goto :goto_5

    .line 1138
    :cond_1e
    move v6, v3

    .line 1139
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1140
    .line 1141
    .line 1142
    move-result p1

    .line 1143
    if-eqz p1, :cond_1f

    .line 1144
    .line 1145
    move v7, v2

    .line 1146
    goto :goto_6

    .line 1147
    :cond_1f
    move v7, v3

    .line 1148
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1149
    .line 1150
    .line 1151
    move-result p1

    .line 1152
    if-eqz p1, :cond_20

    .line 1153
    .line 1154
    move v8, v2

    .line 1155
    goto :goto_7

    .line 1156
    :cond_20
    move v8, v3

    .line 1157
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1158
    .line 1159
    .line 1160
    move-result p1

    .line 1161
    if-eqz p1, :cond_21

    .line 1162
    .line 1163
    move v9, v2

    .line 1164
    goto :goto_8

    .line 1165
    :cond_21
    move v9, v3

    .line 1166
    :goto_8
    move-object v3, p0

    .line 1167
    invoke-interface/range {v3 .. v9}, Lcom/android/ims/internal/IVoWifiCall;->sessCall(Ljava/lang/String;Ljava/lang/String;ZZZZ)I

    .line 1168
    .line 1169
    .line 1170
    move-result p1

    .line 1171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    .line 1176
    .line 1177
    return v2

    .line 1178
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    invoke-interface {p0}, Lcom/android/ims/internal/IVoWifiCall;->stopAudioStream()V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    .line 1186
    .line 1187
    return v2

    .line 1188
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    invoke-interface {p0}, Lcom/android/ims/internal/IVoWifiCall;->startAudioStream()V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    .line 1196
    .line 1197
    return v2

    .line 1198
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1202
    .line 1203
    .line 1204
    move-result-object p1

    .line 1205
    invoke-static {p1}, Lcom/android/ims/internal/IVoWifiCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiCallCallback;

    .line 1206
    .line 1207
    .line 1208
    move-result-object p1

    .line 1209
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->unregisterCallback(Lcom/android/ims/internal/IVoWifiCallCallback;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    .line 1214
    .line 1215
    return v2

    .line 1216
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p1

    .line 1223
    invoke-static {p1}, Lcom/android/ims/internal/IVoWifiCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiCallCallback;

    .line 1224
    .line 1225
    .line 1226
    move-result-object p1

    .line 1227
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IVoWifiCall;->registerCallback(Lcom/android/ims/internal/IVoWifiCallCallback;)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    .line 1232
    .line 1233
    return v2

    .line 1234
    :cond_22
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    return v2

    .line 1238
    nop

    .line 1239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
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
