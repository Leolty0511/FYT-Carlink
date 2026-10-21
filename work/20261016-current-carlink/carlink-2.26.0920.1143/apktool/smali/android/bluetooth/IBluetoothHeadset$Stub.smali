.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_acceptIncomingConnect:I = 0xd

.field static final TRANSACTION_bindResponse:I = 0x1c

.field static final TRANSACTION_clccResponse:I = 0x19

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x11

.field static final TRANSACTION_disableWBS:I = 0x1b

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x12

.field static final TRANSACTION_enableWBS:I = 0x1a

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x14

.field static final TRANSACTION_getAudioState:I = 0xf

.field static final TRANSACTION_getBatteryUsageHint:I = 0xc

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_isAudioConnected:I = 0xa

.field static final TRANSACTION_isAudioOn:I = 0x10

.field static final TRANSACTION_phoneStateChanged:I = 0x18

.field static final TRANSACTION_rejectIncomingConnect:I = 0xe

.field static final TRANSACTION_sendVendorSpecificResultCode:I = 0xb

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x13

.field static final TRANSACTION_setForceScoAudio:I = 0x15

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startScoUsingVirtualVoiceCall:I = 0x16

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopScoUsingVirtualVoiceCall:I = 0x17

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
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
    const-string v0, "android.bluetooth.IBluetoothHeadset"

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
    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 13

    .line 1
    move-object v8, p0

    .line 2
    move v0, p1

    .line 3
    move-object v1, p2

    .line 4
    move-object/from16 v9, p3

    .line 5
    .line 6
    const v2, 0x5f4e5446

    .line 7
    .line 8
    .line 9
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    .line 10
    .line 11
    const/4 v10, 0x1

    .line 12
    if-eq v0, v2, :cond_13

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    move v2, v10

    .line 38
    :cond_0
    invoke-interface {p0, v0, v2}, Landroid/bluetooth/IBluetoothHeadset;->bindResponse(IZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    return v10

    .line 45
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothHeadset;->disableWBS()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    return v10

    .line 59
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothHeadset;->enableWBS()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    return v10

    .line 73
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    move v7, v10

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move v7, v2

    .line 101
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    move-object v0, p0

    .line 110
    move v1, v3

    .line 111
    move v2, v4

    .line 112
    move v3, v5

    .line 113
    move v4, v6

    .line 114
    move v5, v7

    .line 115
    move-object v6, v11

    .line 116
    move v7, v12

    .line 117
    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    .line 122
    .line 123
    return v10

    .line 124
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    move-object v0, p0

    .line 148
    move v1, v2

    .line 149
    move v2, v3

    .line 150
    move v3, v4

    .line 151
    move-object v4, v5

    .line 152
    move v5, v6

    .line 153
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    return v10

    .line 157
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_2

    .line 165
    .line 166
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    .line 168
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    move-object v4, v0

    .line 173
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 174
    .line 175
    :cond_2
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    .line 184
    .line 185
    return v10

    .line 186
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 196
    .line 197
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    move-object v4, v0

    .line 202
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 203
    .line 204
    :cond_3
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    .line 213
    .line 214
    return v10

    .line 215
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_4

    .line 223
    .line 224
    move v2, v10

    .line 225
    :cond_4
    invoke-interface {p0, v2}, Landroid/bluetooth/IBluetoothHeadset;->setForceScoAudio(Z)V

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    .line 230
    .line 231
    return v10

    .line 232
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothHeadset;->getAudioRouteAllowed()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    .line 244
    .line 245
    return v10

    .line 246
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_5

    .line 254
    .line 255
    move v2, v10

    .line 256
    :cond_5
    invoke-interface {p0, v2}, Landroid/bluetooth/IBluetoothHeadset;->setAudioRouteAllowed(Z)V

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    .line 261
    .line 262
    return v10

    .line 263
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothHeadset;->disconnectAudio()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    .line 275
    .line 276
    return v10

    .line 277
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothHeadset;->connectAudio()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    .line 289
    .line 290
    return v10

    .line 291
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothHeadset;->isAudioOn()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    .line 303
    .line 304
    return v10

    .line 305
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_6

    .line 313
    .line 314
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 315
    .line 316
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    move-object v4, v0

    .line 321
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 322
    .line 323
    :cond_6
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    .line 332
    .line 333
    return v10

    .line 334
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_7

    .line 342
    .line 343
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 344
    .line 345
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    move-object v4, v0

    .line 350
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 351
    .line 352
    :cond_7
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    .line 361
    .line 362
    return v10

    .line 363
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_8

    .line 371
    .line 372
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 373
    .line 374
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    move-object v4, v0

    .line 379
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 380
    .line 381
    :cond_8
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    .line 390
    .line 391
    return v10

    .line 392
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_9

    .line 400
    .line 401
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 402
    .line 403
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    move-object v4, v0

    .line 408
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 409
    .line 410
    :cond_9
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    .line 419
    .line 420
    return v10

    .line 421
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_a

    .line 429
    .line 430
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 431
    .line 432
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    move-object v4, v0

    .line 437
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 438
    .line 439
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-interface {p0, v4, v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    .line 456
    .line 457
    return v10

    .line 458
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_b

    .line 466
    .line 467
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 468
    .line 469
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    move-object v4, v0

    .line 474
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 475
    .line 476
    :cond_b
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    .line 485
    .line 486
    return v10

    .line 487
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-eqz v0, :cond_c

    .line 495
    .line 496
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 497
    .line 498
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    move-object v4, v0

    .line 503
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 504
    .line 505
    :cond_c
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    .line 514
    .line 515
    return v10

    .line 516
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_d

    .line 524
    .line 525
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 526
    .line 527
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    move-object v4, v0

    .line 532
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 533
    .line 534
    :cond_d
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    .line 543
    .line 544
    return v10

    .line 545
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_e

    .line 553
    .line 554
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 555
    .line 556
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    move-object v4, v0

    .line 561
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 562
    .line 563
    :cond_e
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    .line 572
    .line 573
    return v10

    .line 574
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-eqz v0, :cond_f

    .line 582
    .line 583
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 584
    .line 585
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    move-object v4, v0

    .line 590
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 591
    .line 592
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    invoke-interface {p0, v4, v0}, Landroid/bluetooth/IBluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    .line 605
    .line 606
    return v10

    .line 607
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-eqz v0, :cond_10

    .line 615
    .line 616
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 617
    .line 618
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    move-object v4, v0

    .line 623
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 624
    .line 625
    :cond_10
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    .line 634
    .line 635
    return v10

    .line 636
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 651
    .line 652
    .line 653
    return v10

    .line 654
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 665
    .line 666
    .line 667
    return v10

    .line 668
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-eqz v0, :cond_11

    .line 676
    .line 677
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 678
    .line 679
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    move-object v4, v0

    .line 684
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 685
    .line 686
    :cond_11
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    .line 695
    .line 696
    return v10

    .line 697
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    if-eqz v0, :cond_12

    .line 705
    .line 706
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 707
    .line 708
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    move-object v4, v0

    .line 713
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 714
    .line 715
    :cond_12
    invoke-interface {p0, v4}, Landroid/bluetooth/IBluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    .line 724
    .line 725
    return v10

    .line 726
    :cond_13
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    return v10

    .line 730
    nop

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
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
