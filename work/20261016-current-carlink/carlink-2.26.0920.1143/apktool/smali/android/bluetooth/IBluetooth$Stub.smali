.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_cancelBondProcess:I = 0x17

.field static final TRANSACTION_cancelDiscovery:I = 0xf

.field static final TRANSACTION_connectSocket:I = 0x32

.field static final TRANSACTION_createBond:I = 0x15

.field static final TRANSACTION_createBondOutOfBand:I = 0x16

.field static final TRANSACTION_createSocketChannel:I = 0x33

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x34

.field static final TRANSACTION_fetchRemoteUuids:I = 0x23

.field static final TRANSACTION_getAdapterConnectionState:I = 0x12

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBatteryLevel:I = 0x25

.field static final TRANSACTION_getBondState:I = 0x19

.field static final TRANSACTION_getBondedDevices:I = 0x14

.field static final TRANSACTION_getConnectionState:I = 0x1c

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getDiscoveryEndMillis:I = 0x11

.field static final TRANSACTION_getLeMaximumAdvertisingDataLength:I = 0x3d

.field static final TRANSACTION_getMessageAccessPermission:I = 0x2b

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x29

.field static final TRANSACTION_getProfileConnectionState:I = 0x13

.field static final TRANSACTION_getRemoteAlias:I = 0x1f

.field static final TRANSACTION_getRemoteClass:I = 0x21

.field static final TRANSACTION_getRemoteName:I = 0x1d

.field static final TRANSACTION_getRemoteType:I = 0x1e

.field static final TRANSACTION_getRemoteUuids:I = 0x22

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getSimAccessPermission:I = 0x2d

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getSupportedProfiles:I = 0x1b

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x38

.field static final TRANSACTION_isBondingInitiatedLocally:I = 0x1a

.field static final TRANSACTION_isDiscovering:I = 0x10

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isLe2MPhySupported:I = 0x39

.field static final TRANSACTION_isLeCodedPhySupported:I = 0x3a

.field static final TRANSACTION_isLeExtendedAdvertisingSupported:I = 0x3b

.field static final TRANSACTION_isLePeriodicAdvertisingSupported:I = 0x3c

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x35

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x36

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x37

.field static final TRANSACTION_onBrEdrDown:I = 0x41

.field static final TRANSACTION_onLeServiceUp:I = 0x40

.field static final TRANSACTION_registerCallback:I = 0x30

.field static final TRANSACTION_removeBond:I = 0x18

.field static final TRANSACTION_reportActivityInfo:I = 0x3e

.field static final TRANSACTION_requestActivityInfo:I = 0x3f

.field static final TRANSACTION_sdpSearch:I = 0x24

.field static final TRANSACTION_sendConnectionStateChange:I = 0x2f

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setMessageAccessPermission:I = 0x2c

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x28

.field static final TRANSACTION_setPasskey:I = 0x27

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x2a

.field static final TRANSACTION_setPin:I = 0x26

.field static final TRANSACTION_setRemoteAlias:I = 0x20

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setSimAccessPermission:I = 0x2e

.field static final TRANSACTION_startDiscovery:I = 0xe

.field static final TRANSACTION_unregisterCallback:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.bluetooth.IBluetooth"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
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
    const-string v0, "android.bluetooth.IBluetooth"

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
    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/bluetooth/IBluetooth;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.bluetooth.IBluetooth"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_26

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
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    .line 50
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v3, p1

    .line 55
    check-cast v3, Landroid/os/ResultReceiver;

    .line 56
    .line 57
    :cond_0
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3, v2}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return v2

    .line 84
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getLeMaximumAdvertisingDataLength()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isLePeriodicAdvertisingSupported()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    .line 110
    .line 111
    return v2

    .line 112
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isLeExtendedAdvertisingSupported()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    .line 124
    .line 125
    return v2

    .line 126
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isLeCodedPhySupported()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    .line 138
    .line 139
    return v2

    .line 140
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isLe2MPhySupported()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    return v2

    .line 154
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isActivityAndEnergyReportingSupported()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    return v2

    .line 168
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

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
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isOffloadedFilteringSupported()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    .line 194
    .line 195
    return v2

    .line 196
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    .line 208
    .line 209
    return v2

    .line 210
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->factoryReset()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    .line 222
    .line 223
    return v2

    .line 224
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_2

    .line 240
    .line 241
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 242
    .line 243
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    move-object v3, p1

    .line 248
    check-cast v3, Landroid/os/ParcelUuid;

    .line 249
    .line 250
    :cond_2
    move-object v6, v3

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    move-object v3, p0

    .line 260
    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetooth;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    .line 266
    .line 267
    if-eqz p1, :cond_3

    .line 268
    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    .line 278
    .line 279
    :goto_1
    return v2

    .line 280
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_4

    .line 288
    .line 289
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 290
    .line 291
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 296
    .line 297
    move-object v5, p1

    .line 298
    goto :goto_2

    .line 299
    :cond_4
    move-object v5, v3

    .line 300
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_5

    .line 309
    .line 310
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 311
    .line 312
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    move-object v3, p1

    .line 317
    check-cast v3, Landroid/os/ParcelUuid;

    .line 318
    .line 319
    :cond_5
    move-object v7, v3

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 325
    .line 326
    .line 327
    move-result v9

    .line 328
    move-object v4, p0

    .line 329
    invoke-interface/range {v4 .. v9}, Landroid/bluetooth/IBluetooth;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    .line 335
    .line 336
    if-eqz p1, :cond_6

    .line 337
    .line 338
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    .line 347
    .line 348
    :goto_3
    return v2

    .line 349
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-static {p1}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-interface {p0, p1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    .line 365
    .line 366
    return v2

    .line 367
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {p1}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-interface {p0, p1}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    .line 383
    .line 384
    return v2

    .line 385
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-eqz p1, :cond_7

    .line 393
    .line 394
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 395
    .line 396
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    move-object v3, p1

    .line 401
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 402
    .line 403
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 408
    .line 409
    .line 410
    move-result p4

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 412
    .line 413
    .line 414
    move-result p2

    .line 415
    invoke-interface {p0, v3, p1, p4, p2}, Landroid/bluetooth/IBluetooth;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    .line 420
    .line 421
    return v2

    .line 422
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    if-eqz p1, :cond_8

    .line 430
    .line 431
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 432
    .line 433
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    move-object v3, p1

    .line 438
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 439
    .line 440
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetooth;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    .line 453
    .line 454
    return v2

    .line 455
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    if-eqz p1, :cond_9

    .line 463
    .line 464
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 465
    .line 466
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    move-object v3, p1

    .line 471
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 472
    .line 473
    :cond_9
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    .line 482
    .line 483
    return v2

    .line 484
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    if-eqz p1, :cond_a

    .line 492
    .line 493
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 494
    .line 495
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    move-object v3, p1

    .line 500
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 501
    .line 502
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 503
    .line 504
    .line 505
    move-result p1

    .line 506
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetooth;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 507
    .line 508
    .line 509
    move-result p1

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    .line 515
    .line 516
    return v2

    .line 517
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 521
    .line 522
    .line 523
    move-result p1

    .line 524
    if-eqz p1, :cond_b

    .line 525
    .line 526
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 527
    .line 528
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    move-object v3, p1

    .line 533
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 534
    .line 535
    :cond_b
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    .line 544
    .line 545
    return v2

    .line 546
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 550
    .line 551
    .line 552
    move-result p1

    .line 553
    if-eqz p1, :cond_c

    .line 554
    .line 555
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 556
    .line 557
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    move-object v3, p1

    .line 562
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 563
    .line 564
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 565
    .line 566
    .line 567
    move-result p1

    .line 568
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetooth;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 569
    .line 570
    .line 571
    move-result p1

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    .line 577
    .line 578
    return v2

    .line 579
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    if-eqz p1, :cond_d

    .line 587
    .line 588
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 589
    .line 590
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    move-object v3, p1

    .line 595
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 596
    .line 597
    :cond_d
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    .line 606
    .line 607
    return v2

    .line 608
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 612
    .line 613
    .line 614
    move-result p1

    .line 615
    if-eqz p1, :cond_e

    .line 616
    .line 617
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 618
    .line 619
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    move-object v3, p1

    .line 624
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 625
    .line 626
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 627
    .line 628
    .line 629
    move-result p1

    .line 630
    if-eqz p1, :cond_f

    .line 631
    .line 632
    move v0, v2

    .line 633
    :cond_f
    invoke-interface {p0, v3, v0}, Landroid/bluetooth/IBluetooth;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 634
    .line 635
    .line 636
    move-result p1

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    .line 642
    .line 643
    return v2

    .line 644
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 648
    .line 649
    .line 650
    move-result p1

    .line 651
    if-eqz p1, :cond_10

    .line 652
    .line 653
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 654
    .line 655
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    move-object v3, p1

    .line 660
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 661
    .line 662
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 663
    .line 664
    .line 665
    move-result p1

    .line 666
    if-eqz p1, :cond_11

    .line 667
    .line 668
    move v0, v2

    .line 669
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 670
    .line 671
    .line 672
    move-result p1

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 674
    .line 675
    .line 676
    move-result-object p2

    .line 677
    invoke-interface {p0, v3, v0, p1, p2}, Landroid/bluetooth/IBluetooth;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    .line 678
    .line 679
    .line 680
    move-result p1

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    .line 686
    .line 687
    return v2

    .line 688
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 692
    .line 693
    .line 694
    move-result p1

    .line 695
    if-eqz p1, :cond_12

    .line 696
    .line 697
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 698
    .line 699
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object p1

    .line 703
    move-object v3, p1

    .line 704
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 705
    .line 706
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    if-eqz p1, :cond_13

    .line 711
    .line 712
    move v0, v2

    .line 713
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 714
    .line 715
    .line 716
    move-result p1

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 718
    .line 719
    .line 720
    move-result-object p2

    .line 721
    invoke-interface {p0, v3, v0, p1, p2}, Landroid/bluetooth/IBluetooth;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    .line 722
    .line 723
    .line 724
    move-result p1

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    .line 727
    .line 728
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    .line 730
    .line 731
    return v2

    .line 732
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 736
    .line 737
    .line 738
    move-result p1

    .line 739
    if-eqz p1, :cond_14

    .line 740
    .line 741
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 742
    .line 743
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object p1

    .line 747
    move-object v3, p1

    .line 748
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 749
    .line 750
    :cond_14
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I

    .line 751
    .line 752
    .line 753
    move-result p1

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    .line 756
    .line 757
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    .line 759
    .line 760
    return v2

    .line 761
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 765
    .line 766
    .line 767
    move-result p1

    .line 768
    if-eqz p1, :cond_15

    .line 769
    .line 770
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 771
    .line 772
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 777
    .line 778
    goto :goto_4

    .line 779
    :cond_15
    move-object p1, v3

    .line 780
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 781
    .line 782
    .line 783
    move-result p4

    .line 784
    if-eqz p4, :cond_16

    .line 785
    .line 786
    sget-object p4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 787
    .line 788
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object p2

    .line 792
    move-object v3, p2

    .line 793
    check-cast v3, Landroid/os/ParcelUuid;

    .line 794
    .line 795
    :cond_16
    invoke-interface {p0, p1, v3}, Landroid/bluetooth/IBluetooth;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

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
    if-eqz p1, :cond_17

    .line 814
    .line 815
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 816
    .line 817
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    move-object v3, p1

    .line 822
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 823
    .line 824
    :cond_17
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    .line 825
    .line 826
    .line 827
    move-result p1

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    .line 830
    .line 831
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    .line 833
    .line 834
    return v2

    .line 835
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 839
    .line 840
    .line 841
    move-result p1

    .line 842
    if-eqz p1, :cond_18

    .line 843
    .line 844
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 845
    .line 846
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object p1

    .line 850
    move-object v3, p1

    .line 851
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 852
    .line 853
    :cond_18
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    .line 854
    .line 855
    .line 856
    move-result-object p1

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 861
    .line 862
    .line 863
    return v2

    .line 864
    :pswitch_20
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
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 874
    .line 875
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object p1

    .line 879
    move-object v3, p1

    .line 880
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 881
    .line 882
    :cond_19
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    .line 883
    .line 884
    .line 885
    move-result p1

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    .line 888
    .line 889
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    .line 891
    .line 892
    return v2

    .line 893
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 897
    .line 898
    .line 899
    move-result p1

    .line 900
    if-eqz p1, :cond_1a

    .line 901
    .line 902
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 903
    .line 904
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object p1

    .line 908
    move-object v3, p1

    .line 909
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 910
    .line 911
    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object p1

    .line 915
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetooth;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 916
    .line 917
    .line 918
    move-result p1

    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    .line 921
    .line 922
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    .line 924
    .line 925
    return v2

    .line 926
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 930
    .line 931
    .line 932
    move-result p1

    .line 933
    if-eqz p1, :cond_1b

    .line 934
    .line 935
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 936
    .line 937
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object p1

    .line 941
    move-object v3, p1

    .line 942
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 943
    .line 944
    :cond_1b
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object p1

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    .line 950
    .line 951
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    return v2

    .line 955
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 959
    .line 960
    .line 961
    move-result p1

    .line 962
    if-eqz p1, :cond_1c

    .line 963
    .line 964
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 965
    .line 966
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object p1

    .line 970
    move-object v3, p1

    .line 971
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 972
    .line 973
    :cond_1c
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    .line 974
    .line 975
    .line 976
    move-result p1

    .line 977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    .line 979
    .line 980
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    .line 982
    .line 983
    return v2

    .line 984
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 988
    .line 989
    .line 990
    move-result p1

    .line 991
    if-eqz p1, :cond_1d

    .line 992
    .line 993
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 994
    .line 995
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object p1

    .line 999
    move-object v3, p1

    .line 1000
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1001
    .line 1002
    :cond_1d
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object p1

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    return v2

    .line 1013
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1017
    .line 1018
    .line 1019
    move-result p1

    .line 1020
    if-eqz p1, :cond_1e

    .line 1021
    .line 1022
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1023
    .line 1024
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p1

    .line 1028
    move-object v3, p1

    .line 1029
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1030
    .line 1031
    :cond_1e
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    .line 1032
    .line 1033
    .line 1034
    move-result p1

    .line 1035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    .line 1040
    .line 1041
    return v2

    .line 1042
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getSupportedProfiles()J

    .line 1046
    .line 1047
    .line 1048
    move-result-wide p1

    .line 1049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1053
    .line 1054
    .line 1055
    return v2

    .line 1056
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1060
    .line 1061
    .line 1062
    move-result p1

    .line 1063
    if-eqz p1, :cond_1f

    .line 1064
    .line 1065
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1066
    .line 1067
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object p1

    .line 1071
    move-object v3, p1

    .line 1072
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1073
    .line 1074
    :cond_1f
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result p1

    .line 1078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1082
    .line 1083
    .line 1084
    return v2

    .line 1085
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1089
    .line 1090
    .line 1091
    move-result p1

    .line 1092
    if-eqz p1, :cond_20

    .line 1093
    .line 1094
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1095
    .line 1096
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object p1

    .line 1100
    move-object v3, p1

    .line 1101
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1102
    .line 1103
    :cond_20
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    .line 1104
    .line 1105
    .line 1106
    move-result p1

    .line 1107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    .line 1112
    .line 1113
    return v2

    .line 1114
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1118
    .line 1119
    .line 1120
    move-result p1

    .line 1121
    if-eqz p1, :cond_21

    .line 1122
    .line 1123
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1124
    .line 1125
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object p1

    .line 1129
    move-object v3, p1

    .line 1130
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1131
    .line 1132
    :cond_21
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result p1

    .line 1136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    .line 1141
    .line 1142
    return v2

    .line 1143
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1147
    .line 1148
    .line 1149
    move-result p1

    .line 1150
    if-eqz p1, :cond_22

    .line 1151
    .line 1152
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1153
    .line 1154
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object p1

    .line 1158
    move-object v3, p1

    .line 1159
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1160
    .line 1161
    :cond_22
    invoke-interface {p0, v3}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result p1

    .line 1165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    .line 1170
    .line 1171
    return v2

    .line 1172
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1176
    .line 1177
    .line 1178
    move-result p1

    .line 1179
    if-eqz p1, :cond_23

    .line 1180
    .line 1181
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1182
    .line 1183
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p1

    .line 1187
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1188
    .line 1189
    goto :goto_5

    .line 1190
    :cond_23
    move-object p1, v3

    .line 1191
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1192
    .line 1193
    .line 1194
    move-result p4

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    if-eqz v0, :cond_24

    .line 1200
    .line 1201
    sget-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1202
    .line 1203
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object p2

    .line 1207
    move-object v3, p2

    .line 1208
    check-cast v3, Landroid/bluetooth/OobData;

    .line 1209
    .line 1210
    :cond_24
    invoke-interface {p0, p1, p4, v3}, Landroid/bluetooth/IBluetooth;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result p1

    .line 1214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    .line 1219
    .line 1220
    return v2

    .line 1221
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1225
    .line 1226
    .line 1227
    move-result p1

    .line 1228
    if-eqz p1, :cond_25

    .line 1229
    .line 1230
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1231
    .line 1232
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object p1

    .line 1236
    move-object v3, p1

    .line 1237
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1238
    .line 1239
    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1240
    .line 1241
    .line 1242
    move-result p1

    .line 1243
    invoke-interface {p0, v3, p1}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1244
    .line 1245
    .line 1246
    move-result p1

    .line 1247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    .line 1252
    .line 1253
    return v2

    .line 1254
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    .line 1258
    .line 1259
    .line 1260
    move-result-object p1

    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1265
    .line 1266
    .line 1267
    return v2

    .line 1268
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1272
    .line 1273
    .line 1274
    move-result p1

    .line 1275
    invoke-interface {p0, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I

    .line 1276
    .line 1277
    .line 1278
    move-result p1

    .line 1279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    .line 1284
    .line 1285
    return v2

    .line 1286
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I

    .line 1290
    .line 1291
    .line 1292
    move-result p1

    .line 1293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    .line 1298
    .line 1299
    return v2

    .line 1300
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getDiscoveryEndMillis()J

    .line 1304
    .line 1305
    .line 1306
    move-result-wide p1

    .line 1307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1311
    .line 1312
    .line 1313
    return v2

    .line 1314
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z

    .line 1318
    .line 1319
    .line 1320
    move-result p1

    .line 1321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    .line 1326
    .line 1327
    return v2

    .line 1328
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z

    .line 1332
    .line 1333
    .line 1334
    move-result p1

    .line 1335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    .line 1340
    .line 1341
    return v2

    .line 1342
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z

    .line 1346
    .line 1347
    .line 1348
    move-result p1

    .line 1349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    .line 1354
    .line 1355
    return v2

    .line 1356
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1360
    .line 1361
    .line 1362
    move-result p1

    .line 1363
    invoke-interface {p0, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z

    .line 1364
    .line 1365
    .line 1366
    move-result p1

    .line 1367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    .line 1372
    .line 1373
    return v2

    .line 1374
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    .line 1376
    .line 1377
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I

    .line 1378
    .line 1379
    .line 1380
    move-result p1

    .line 1381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    .line 1386
    .line 1387
    return v2

    .line 1388
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1392
    .line 1393
    .line 1394
    move-result p1

    .line 1395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1396
    .line 1397
    .line 1398
    move-result p2

    .line 1399
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z

    .line 1400
    .line 1401
    .line 1402
    move-result p1

    .line 1403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    .line 1408
    .line 1409
    return v2

    .line 1410
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getScanMode()I

    .line 1414
    .line 1415
    .line 1416
    move-result p1

    .line 1417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    .line 1422
    .line 1423
    return v2

    .line 1424
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object p1

    .line 1431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1435
    .line 1436
    .line 1437
    return v2

    .line 1438
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object p1

    .line 1445
    invoke-interface {p0, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z

    .line 1446
    .line 1447
    .line 1448
    move-result p1

    .line 1449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    .line 1454
    .line 1455
    return v2

    .line 1456
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    .line 1458
    .line 1459
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;

    .line 1460
    .line 1461
    .line 1462
    move-result-object p1

    .line 1463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1467
    .line 1468
    .line 1469
    return v2

    .line 1470
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object p1

    .line 1477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1481
    .line 1482
    .line 1483
    return v2

    .line 1484
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->disable()Z

    .line 1488
    .line 1489
    .line 1490
    move-result p1

    .line 1491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    .line 1496
    .line 1497
    return v2

    .line 1498
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    .line 1500
    .line 1501
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    .line 1502
    .line 1503
    .line 1504
    move-result p1

    .line 1505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    .line 1510
    .line 1511
    return v2

    .line 1512
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    .line 1514
    .line 1515
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->enable()Z

    .line 1516
    .line 1517
    .line 1518
    move-result p1

    .line 1519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    .line 1524
    .line 1525
    return v2

    .line 1526
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->getState()I

    .line 1530
    .line 1531
    .line 1532
    move-result p1

    .line 1533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    .line 1538
    .line 1539
    return v2

    .line 1540
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    invoke-interface {p0}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    .line 1544
    .line 1545
    .line 1546
    move-result p1

    .line 1547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    .line 1552
    .line 1553
    return v2

    .line 1554
    :cond_26
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    return v2

    .line 1558
    nop

    .line 1559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
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
