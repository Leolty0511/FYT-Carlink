.class public abstract Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetClient"

.field static final TRANSACTION_acceptCall:I = 0xc

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x16

.field static final TRANSACTION_dial:I = 0x12

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x17

.field static final TRANSACTION_enterPrivateMode:I = 0x10

.field static final TRANSACTION_explicitCallTransfer:I = 0x11

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x19

.field static final TRANSACTION_getAudioState:I = 0x15

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getCurrentAgEvents:I = 0xb

.field static final TRANSACTION_getCurrentAgFeatures:I = 0x1a

.field static final TRANSACTION_getCurrentCalls:I = 0xa

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getLastVoiceTagNumber:I = 0x14

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_holdCall:I = 0xd

.field static final TRANSACTION_rejectCall:I = 0xe

.field static final TRANSACTION_sendDTMF:I = 0x13

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x18

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9

.field static final TRANSACTION_terminateCall:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;
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
    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

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
    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "android.bluetooth.IBluetoothHeadsetClient"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_1d

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
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    .line 30
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    move-object v3, p1

    .line 35
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 36
    .line 37
    :cond_0
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return v2

    .line 57
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    .line 68
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    move-object v3, p1

    .line 73
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 74
    .line 75
    :cond_2
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    .line 97
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .line 104
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    move v0, v2

    .line 111
    :cond_4
    invoke-interface {p0, v3, v0}, Landroid/bluetooth/IBluetoothHeadsetClient;->setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 128
    .line 129
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    move-object v3, p1

    .line 134
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 135
    .line 136
    :cond_5
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    return v2

    .line 147
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 157
    .line 158
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    move-object v3, p1

    .line 163
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 164
    .line 165
    :cond_6
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    .line 174
    .line 175
    return v2

    .line 176
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_7

    .line 184
    .line 185
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 186
    .line 187
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    move-object v3, p1

    .line 192
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 193
    .line 194
    :cond_7
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

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
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_8

    .line 213
    .line 214
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 215
    .line 216
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    move-object v3, p1

    .line 221
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 222
    .line 223
    :cond_8
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    .line 232
    .line 233
    return v2

    .line 234
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_9

    .line 242
    .line 243
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 244
    .line 245
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    move-object v3, p1

    .line 250
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 251
    .line 252
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    .line 265
    .line 266
    return v2

    .line 267
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    if-eqz p1, :cond_a

    .line 275
    .line 276
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 277
    .line 278
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    move-object v3, p1

    .line 283
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 284
    .line 285
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    .line 295
    .line 296
    if-eqz p1, :cond_b

    .line 297
    .line 298
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p3, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    .line 307
    .line 308
    :goto_1
    return v2

    .line 309
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_c

    .line 317
    .line 318
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 319
    .line 320
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    move-object v3, p1

    .line 325
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 326
    .line 327
    :cond_c
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    .line 336
    .line 337
    return v2

    .line 338
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_d

    .line 346
    .line 347
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 348
    .line 349
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    move-object v3, p1

    .line 354
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 355
    .line 356
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    .line 369
    .line 370
    return v2

    .line 371
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-eqz p1, :cond_e

    .line 379
    .line 380
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 381
    .line 382
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_e
    move-object p1, v3

    .line 390
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 391
    .line 392
    .line 393
    move-result p4

    .line 394
    if-eqz p4, :cond_f

    .line 395
    .line 396
    sget-object p4, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 397
    .line 398
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    move-object v3, p2

    .line 403
    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 404
    .line 405
    :cond_f
    invoke-interface {p0, p1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

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
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    if-eqz p1, :cond_10

    .line 424
    .line 425
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 426
    .line 427
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    move-object v3, p1

    .line 432
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 433
    .line 434
    :cond_10
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    .line 443
    .line 444
    return v2

    .line 445
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    if-eqz p1, :cond_11

    .line 453
    .line 454
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 455
    .line 456
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    move-object v3, p1

    .line 461
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 462
    .line 463
    :cond_11
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    .line 472
    .line 473
    return v2

    .line 474
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    if-eqz p1, :cond_12

    .line 482
    .line 483
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 484
    .line 485
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    move-object v3, p1

    .line 490
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 491
    .line 492
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    .line 505
    .line 506
    return v2

    .line 507
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 511
    .line 512
    .line 513
    move-result p1

    .line 514
    if-eqz p1, :cond_13

    .line 515
    .line 516
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 517
    .line 518
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    move-object v3, p1

    .line 523
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 524
    .line 525
    :cond_13
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    .line 531
    .line 532
    if-eqz p1, :cond_14

    .line 533
    .line 534
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 538
    .line 539
    .line 540
    goto :goto_3

    .line 541
    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    .line 543
    .line 544
    :goto_3
    return v2

    .line 545
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 549
    .line 550
    .line 551
    move-result p1

    .line 552
    if-eqz p1, :cond_15

    .line 553
    .line 554
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 555
    .line 556
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    move-object v3, p1

    .line 561
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 562
    .line 563
    :cond_15
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 571
    .line 572
    .line 573
    return v2

    .line 574
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 578
    .line 579
    .line 580
    move-result p1

    .line 581
    if-eqz p1, :cond_16

    .line 582
    .line 583
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 584
    .line 585
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    move-object v3, p1

    .line 590
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 591
    .line 592
    :cond_16
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 593
    .line 594
    .line 595
    move-result p1

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    .line 601
    .line 602
    return v2

    .line 603
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 607
    .line 608
    .line 609
    move-result p1

    .line 610
    if-eqz p1, :cond_17

    .line 611
    .line 612
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 613
    .line 614
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    move-object v3, p1

    .line 619
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 620
    .line 621
    :cond_17
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 622
    .line 623
    .line 624
    move-result p1

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    .line 630
    .line 631
    return v2

    .line 632
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 636
    .line 637
    .line 638
    move-result p1

    .line 639
    if-eqz p1, :cond_18

    .line 640
    .line 641
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 642
    .line 643
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    move-object v3, p1

    .line 648
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 649
    .line 650
    :cond_18
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    .line 651
    .line 652
    .line 653
    move-result p1

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    .line 659
    .line 660
    return v2

    .line 661
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 665
    .line 666
    .line 667
    move-result p1

    .line 668
    if-eqz p1, :cond_19

    .line 669
    .line 670
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 671
    .line 672
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    move-object v3, p1

    .line 677
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 678
    .line 679
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 680
    .line 681
    .line 682
    move-result p1

    .line 683
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 684
    .line 685
    .line 686
    move-result p1

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    .line 689
    .line 690
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    .line 692
    .line 693
    return v2

    .line 694
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 698
    .line 699
    .line 700
    move-result p1

    .line 701
    if-eqz p1, :cond_1a

    .line 702
    .line 703
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 704
    .line 705
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object p1

    .line 709
    move-object v3, p1

    .line 710
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 711
    .line 712
    :cond_1a
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    .line 713
    .line 714
    .line 715
    move-result p1

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    .line 718
    .line 719
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    .line 721
    .line 722
    return v2

    .line 723
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    invoke-interface {p0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    .line 736
    .line 737
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 738
    .line 739
    .line 740
    return v2

    .line 741
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    .line 750
    .line 751
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 752
    .line 753
    .line 754
    return v2

    .line 755
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 759
    .line 760
    .line 761
    move-result p1

    .line 762
    if-eqz p1, :cond_1b

    .line 763
    .line 764
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 765
    .line 766
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    move-object v3, p1

    .line 771
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 772
    .line 773
    :cond_1b
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 774
    .line 775
    .line 776
    move-result p1

    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    .line 782
    .line 783
    return v2

    .line 784
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 788
    .line 789
    .line 790
    move-result p1

    .line 791
    if-eqz p1, :cond_1c

    .line 792
    .line 793
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 794
    .line 795
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object p1

    .line 799
    move-object v3, p1

    .line 800
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 801
    .line 802
    :cond_1c
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 803
    .line 804
    .line 805
    move-result p1

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    .line 808
    .line 809
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    .line 811
    .line 812
    return v2

    .line 813
    :cond_1d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    return v2

    .line 817
    :pswitch_data_0
    .packed-switch 0x1
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
