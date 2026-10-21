.class public abstract Landroid/net/lowpan/ILowpanInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanInterface"

.field static final TRANSACTION_addExternalRoute:I = 0x27

.field static final TRANSACTION_addListener:I = 0x1f

.field static final TRANSACTION_addOnMeshPrefix:I = 0x25

.field static final TRANSACTION_attach:I = 0x16

.field static final TRANSACTION_beginLowPower:I = 0x1c

.field static final TRANSACTION_closeCommissioningSession:I = 0x1a

.field static final TRANSACTION_form:I = 0x15

.field static final TRANSACTION_getDriverVersion:I = 0x3

.field static final TRANSACTION_getExtendedAddress:I = 0xf

.field static final TRANSACTION_getLinkAddresses:I = 0x12

.field static final TRANSACTION_getLinkNetworks:I = 0x13

.field static final TRANSACTION_getLowpanCredential:I = 0x11

.field static final TRANSACTION_getLowpanIdentity:I = 0x10

.field static final TRANSACTION_getMacAddress:I = 0x6

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_getNcpVersion:I = 0x2

.field static final TRANSACTION_getPartitionId:I = 0xe

.field static final TRANSACTION_getRole:I = 0xd

.field static final TRANSACTION_getState:I = 0xc

.field static final TRANSACTION_getSupportedChannels:I = 0x4

.field static final TRANSACTION_getSupportedNetworkTypes:I = 0x5

.field static final TRANSACTION_isCommissioned:I = 0xa

.field static final TRANSACTION_isConnected:I = 0xb

.field static final TRANSACTION_isEnabled:I = 0x7

.field static final TRANSACTION_isUp:I = 0x9

.field static final TRANSACTION_join:I = 0x14

.field static final TRANSACTION_leave:I = 0x17

.field static final TRANSACTION_onHostWake:I = 0x1e

.field static final TRANSACTION_pollForData:I = 0x1d

.field static final TRANSACTION_removeExternalRoute:I = 0x28

.field static final TRANSACTION_removeListener:I = 0x20

.field static final TRANSACTION_removeOnMeshPrefix:I = 0x26

.field static final TRANSACTION_reset:I = 0x18

.field static final TRANSACTION_sendToCommissioner:I = 0x1b

.field static final TRANSACTION_setEnabled:I = 0x8

.field static final TRANSACTION_startCommissioningSession:I = 0x19

.field static final TRANSACTION_startEnergyScan:I = 0x23

.field static final TRANSACTION_startNetScan:I = 0x21

.field static final TRANSACTION_stopEnergyScan:I = 0x24

.field static final TRANSACTION_stopNetScan:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.net.lowpan.ILowpanInterface"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;
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
    const-string v0, "android.net.lowpan.ILowpanInterface"

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
    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterface;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/lowpan/ILowpanInterface;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.net.lowpan.ILowpanInterface"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_b

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
    sget-object p1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

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
    check-cast v3, Landroid/net/IpPrefix;

    .line 36
    .line 37
    :cond_0
    invoke-interface {p0, v3}, Landroid/net/lowpan/ILowpanInterface;->removeExternalRoute(Landroid/net/IpPrefix;)V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    sget-object p1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    .line 52
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    move-object v3, p1

    .line 57
    check-cast v3, Landroid/net/IpPrefix;

    .line 58
    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-interface {p0, v3, p1}, Landroid/net/lowpan/ILowpanInterface;->addExternalRoute(Landroid/net/IpPrefix;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    .line 68
    .line 69
    return v2

    .line 70
    :pswitch_2
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
    sget-object p1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    .line 81
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    move-object v3, p1

    .line 86
    check-cast v3, Landroid/net/IpPrefix;

    .line 87
    .line 88
    :cond_2
    invoke-interface {p0, v3}, Landroid/net/lowpan/ILowpanInterface;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V

    .line 89
    .line 90
    .line 91
    return v2

    .line 92
    :pswitch_3
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
    sget-object p1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    .line 103
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    move-object v3, p1

    .line 108
    check-cast v3, Landroid/net/IpPrefix;

    .line 109
    .line 110
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-interface {p0, v3, p1}, Landroid/net/lowpan/ILowpanInterface;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    .line 119
    .line 120
    return v2

    .line 121
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->stopEnergyScan()V

    .line 125
    .line 126
    .line 127
    return v2

    .line 128
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p2}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanEnergyScanCallback;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-interface {p0, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    .line 156
    .line 157
    return v2

    .line 158
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->stopNetScan()V

    .line 162
    .line 163
    .line 164
    return v2

    .line 165
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-static {p2}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanNetScanCallback;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-interface {p0, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    .line 193
    .line 194
    return v2

    .line 195
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-interface {p0, p1}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    .line 207
    .line 208
    .line 209
    return v2

    .line 210
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-interface {p0, p1}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    .line 226
    .line 227
    return v2

    .line 228
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->onHostWake()V

    .line 232
    .line 233
    .line 234
    return v2

    .line 235
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->pollForData()V

    .line 239
    .line 240
    .line 241
    return v2

    .line 242
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->beginLowPower()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    .line 250
    .line 251
    return v2

    .line 252
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {p0, p1}, Landroid/net/lowpan/ILowpanInterface;->sendToCommissioner([B)V

    .line 260
    .line 261
    .line 262
    return v2

    .line 263
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->closeCommissioningSession()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    .line 271
    .line 272
    return v2

    .line 273
    :pswitch_f
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
    if-eqz p1, :cond_4

    .line 281
    .line 282
    sget-object p1, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 283
    .line 284
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    move-object v3, p1

    .line 289
    check-cast v3, Landroid/net/lowpan/LowpanBeaconInfo;

    .line 290
    .line 291
    :cond_4
    invoke-interface {p0, v3}, Landroid/net/lowpan/ILowpanInterface;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    .line 296
    .line 297
    return v2

    .line 298
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->reset()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    .line 306
    .line 307
    return v2

    .line 308
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->leave()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    .line 316
    .line 317
    return v2

    .line 318
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-eqz p1, :cond_5

    .line 326
    .line 327
    sget-object p1, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 328
    .line 329
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    move-object v3, p1

    .line 334
    check-cast v3, Landroid/net/lowpan/LowpanProvision;

    .line 335
    .line 336
    :cond_5
    invoke-interface {p0, v3}, Landroid/net/lowpan/ILowpanInterface;->attach(Landroid/net/lowpan/LowpanProvision;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    .line 341
    .line 342
    return v2

    .line 343
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-eqz p1, :cond_6

    .line 351
    .line 352
    sget-object p1, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 353
    .line 354
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    move-object v3, p1

    .line 359
    check-cast v3, Landroid/net/lowpan/LowpanProvision;

    .line 360
    .line 361
    :cond_6
    invoke-interface {p0, v3}, Landroid/net/lowpan/ILowpanInterface;->form(Landroid/net/lowpan/LowpanProvision;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    return v2

    .line 368
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-eqz p1, :cond_7

    .line 376
    .line 377
    sget-object p1, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 378
    .line 379
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    move-object v3, p1

    .line 384
    check-cast v3, Landroid/net/lowpan/LowpanProvision;

    .line 385
    .line 386
    :cond_7
    invoke-interface {p0, v3}, Landroid/net/lowpan/ILowpanInterface;->join(Landroid/net/lowpan/LowpanProvision;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    .line 391
    .line 392
    return v2

    .line 393
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getLinkNetworks()[Landroid/net/IpPrefix;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 404
    .line 405
    .line 406
    return v2

    .line 407
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getLinkAddresses()[Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    return v2

    .line 421
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    .line 430
    .line 431
    if-eqz p1, :cond_8

    .line 432
    .line 433
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1, p3, v2}, Landroid/net/lowpan/LowpanCredential;->writeToParcel(Landroid/os/Parcel;I)V

    .line 437
    .line 438
    .line 439
    goto :goto_0

    .line 440
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    .line 442
    .line 443
    :goto_0
    return v2

    .line 444
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    .line 453
    .line 454
    if-eqz p1, :cond_9

    .line 455
    .line 456
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1, p3, v2}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 460
    .line 461
    .line 462
    goto :goto_1

    .line 463
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    .line 465
    .line 466
    :goto_1
    return v2

    .line 467
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getExtendedAddress()[B

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 478
    .line 479
    .line 480
    return v2

    .line 481
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getPartitionId()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    return v2

    .line 495
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getRole()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    return v2

    .line 509
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getState()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    return v2

    .line 523
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->isConnected()Z

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    .line 535
    .line 536
    return v2

    .line 537
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->isCommissioned()Z

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    .line 549
    .line 550
    return v2

    .line 551
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->isUp()Z

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
    :pswitch_20
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
    if-eqz p1, :cond_a

    .line 573
    .line 574
    move v0, v2

    .line 575
    :cond_a
    invoke-interface {p0, v0}, Landroid/net/lowpan/ILowpanInterface;->setEnabled(Z)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    .line 580
    .line 581
    return v2

    .line 582
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->isEnabled()Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    .line 594
    .line 595
    return v2

    .line 596
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getMacAddress()[B

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 607
    .line 608
    .line 609
    return v2

    .line 610
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getSupportedNetworkTypes()[Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    return v2

    .line 624
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    .line 628
    .line 629
    .line 630
    move-result-object p1

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 635
    .line 636
    .line 637
    return v2

    .line 638
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getDriverVersion()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    .line 647
    .line 648
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    return v2

    .line 652
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getNcpVersion()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    return v2

    .line 666
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    invoke-interface {p0}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    return v2

    .line 680
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    return v2

    .line 684
    nop

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
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
