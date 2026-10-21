.class public abstract Lcom/android/ims/internal/IImsServiceEx$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsServiceEx"

.field static final TRANSACTION_addImsPdnStateListener:I = 0x1a

.field static final TRANSACTION_cancelCurrentRequest:I = 0x9

.field static final TRANSACTION_getAliveCallJitter:I = 0x13

.field static final TRANSACTION_getAliveCallLose:I = 0x12

.field static final TRANSACTION_getAliveCallRtt:I = 0x14

.field static final TRANSACTION_getCLIRStatus:I = 0x1c

.field static final TRANSACTION_getCallType:I = 0x16

.field static final TRANSACTION_getCallWaitingStatus:I = 0x21

.field static final TRANSACTION_getCurLocalAddress:I = 0x10

.field static final TRANSACTION_getCurPcscfAddress:I = 0xd

.field static final TRANSACTION_getCurrentImsFeature:I = 0x4

.field static final TRANSACTION_getCurrentImsVideoState:I = 0x11

.field static final TRANSACTION_getImsPcscfAddress:I = 0x18

.field static final TRANSACTION_getImsRegAddress:I = 0x6

.field static final TRANSACTION_getVolteRegisterState:I = 0x15

.field static final TRANSACTION_isSupportMobike:I = 0x20

.field static final TRANSACTION_notifyNetworkUnavailable:I = 0x3

.field static final TRANSACTION_notifySrvccCallInfos:I = 0x17

.field static final TRANSACTION_notifyVideoCapabilityChange:I = 0x1e

.field static final TRANSACTION_registerforImsRegisterStateChanged:I = 0xa

.field static final TRANSACTION_releaseVoWifiResource:I = 0x7

.field static final TRANSACTION_removeImsPdnStateListener:I = 0x1b

.field static final TRANSACTION_setImsServiceListener:I = 0x5

.field static final TRANSACTION_setMonitorPeriodForNoData:I = 0xe

.field static final TRANSACTION_setVoWifiUnavailable:I = 0x8

.field static final TRANSACTION_setVowifiRegister:I = 0x19

.field static final TRANSACTION_showVowifiNotification:I = 0xf

.field static final TRANSACTION_startHandover:I = 0x2

.field static final TRANSACTION_startMobike:I = 0x1f

.field static final TRANSACTION_switchImsFeature:I = 0x1

.field static final TRANSACTION_terminateCalls:I = 0xc

.field static final TRANSACTION_unregisterforImsRegisterStateChanged:I = 0xb

.field static final TRANSACTION_updateCLIRStatus:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.ims.internal.IImsServiceEx"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceEx;
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
    const-string v0, "com.android.ims.internal.IImsServiceEx"

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
    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceEx;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/ims/internal/IImsServiceEx;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IImsServiceEx$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsServiceEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.android.ims.internal.IImsServiceEx"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->getCallWaitingStatus(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->isSupportMobike()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->startMobike()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->notifyVideoCapabilityChange()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    .line 63
    .line 64
    return v2

    .line 65
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->updateCLIRStatus(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->getCLIRStatus(I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    .line 99
    .line 100
    return v2

    .line 101
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p2}, Lcom/android/ims/internal/IImsPdnStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsPdnStateListener;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceEx;->removeImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    return v2

    .line 123
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {p2}, Lcom/android/ims/internal/IImsPdnStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsPdnStateListener;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceEx;->addImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    .line 143
    .line 144
    return v2

    .line 145
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->setVowifiRegister(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    .line 157
    .line 158
    return v2

    .line 159
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getImsPcscfAddress()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return v2

    .line 173
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sget-object p1, Lcom/android/ims/internal/ImsSrvccCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    .line 178
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->notifySrvccCallInfos(Ljava/util/List;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    .line 187
    .line 188
    return v2

    .line 189
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getCallType()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    .line 201
    .line 202
    return v2

    .line 203
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getVolteRegisterState()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    .line 215
    .line 216
    return v2

    .line 217
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getAliveCallRtt()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    .line 229
    .line 230
    return v2

    .line 231
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getAliveCallJitter()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    .line 243
    .line 244
    return v2

    .line 245
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getAliveCallLose()I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    .line 257
    .line 258
    return v2

    .line 259
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getCurrentImsVideoState()I

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
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getCurLocalAddress()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return v2

    .line 287
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->showVowifiNotification()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    .line 295
    .line 296
    return v2

    .line 297
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->setMonitorPeriodForNoData(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    .line 309
    .line 310
    return v2

    .line 311
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getCurPcscfAddress()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return v2

    .line 325
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->terminateCalls(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    .line 337
    .line 338
    return v2

    .line 339
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-static {p1}, Lcom/android/ims/internal/IImsRegisterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegisterListener;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    .line 355
    .line 356
    return v2

    .line 357
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-static {p1}, Lcom/android/ims/internal/IImsRegisterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegisterListener;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    .line 373
    .line 374
    return v2

    .line 375
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->cancelCurrentRequest()I

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
    :pswitch_19
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 397
    .line 398
    .line 399
    move-result p2

    .line 400
    if-eqz p2, :cond_0

    .line 401
    .line 402
    move p2, v2

    .line 403
    goto :goto_0

    .line 404
    :cond_0
    const/4 p2, 0x0

    .line 405
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceEx;->setVoWifiUnavailable(IZ)I

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    .line 414
    .line 415
    return v2

    .line 416
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->releaseVoWifiResource()I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    .line 428
    .line 429
    return v2

    .line 430
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getImsRegAddress()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    return v2

    .line 444
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceListenerEx;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->setImsServiceListener(Lcom/android/ims/internal/IImsServiceListenerEx;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    .line 460
    .line 461
    return v2

    .line 462
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->getCurrentImsFeature()I

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    .line 474
    .line 475
    return v2

    .line 476
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-interface {p0}, Lcom/android/ims/internal/IImsServiceEx;->notifyNetworkUnavailable()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    .line 484
    .line 485
    return v2

    .line 486
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->startHandover(I)I

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    .line 502
    .line 503
    return v2

    .line 504
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceEx;->switchImsFeature(I)I

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    .line 520
    .line 521
    return v2

    .line 522
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    return v2

    .line 526
    nop

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
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
