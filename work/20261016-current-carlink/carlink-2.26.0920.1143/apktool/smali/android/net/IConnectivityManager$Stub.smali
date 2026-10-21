.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x45

.field static final TRANSACTION_checkMobileProvisioning:I = 0x32

.field static final TRANSACTION_disableTetherPCInternet:I = 0x4d

.field static final TRANSACTION_enableTetherPCInternet:I = 0x4c

.field static final TRANSACTION_establishVpn:I = 0x29

.field static final TRANSACTION_factoryReset:I = 0x48

.field static final TRANSACTION_getActiveLinkProperties:I = 0xc

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkForUid:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x11

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0x10

.field static final TRANSACTION_getAllNetworks:I = 0x9

.field static final TRANSACTION_getAllVpnInfo:I = 0x2d

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x31

.field static final TRANSACTION_getCaptivePortalServerUrl:I = 0x4b

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0xa

.field static final TRANSACTION_getGlobalProxy:I = 0x24

.field static final TRANSACTION_getLastTetherError:I = 0x16

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2c

.field static final TRANSACTION_getLinkProperties:I = 0xe

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xd

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x33

.field static final TRANSACTION_getMultipathPreference:I = 0x43

.field static final TRANSACTION_getNetworkCapabilities:I = 0xf

.field static final TRANSACTION_getNetworkForType:I = 0x8

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkInfoForUid:I = 0x6

.field static final TRANSACTION_getPCNetTether:I = 0x4e

.field static final TRANSACTION_getProxyForNetwork:I = 0x26

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x44

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x20

.field static final TRANSACTION_getTetherableIfaces:I = 0x1a

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1e

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1f

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1d

.field static final TRANSACTION_getTetheredIfaces:I = 0x1b

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1c

.field static final TRANSACTION_getVpnConfig:I = 0x2a

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x12

.field static final TRANSACTION_isAlwaysOnVpnPackageSupported:I = 0x2f

.field static final TRANSACTION_isNetworkSupported:I = 0xb

.field static final TRANSACTION_isTetheringSupported:I = 0x17

.field static final TRANSACTION_listenForNetwork:I = 0x3d

.field static final TRANSACTION_pendingListenForNetwork:I = 0x3e

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x3b

.field static final TRANSACTION_prepareVpn:I = 0x27

.field static final TRANSACTION_registerNetworkAgent:I = 0x39

.field static final TRANSACTION_registerNetworkFactory:I = 0x36

.field static final TRANSACTION_releaseNetworkRequest:I = 0x3f

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x3c

.field static final TRANSACTION_removeVpnAddress:I = 0x46

.field static final TRANSACTION_reportInetCondition:I = 0x22

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x23

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x37

.field static final TRANSACTION_requestNetwork:I = 0x3a

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x13

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x40

.field static final TRANSACTION_setAirplaneMode:I = 0x35

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x30

.field static final TRANSACTION_setAvoidUnvalidated:I = 0x41

.field static final TRANSACTION_setGlobalProxy:I = 0x25

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x34

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x47

.field static final TRANSACTION_setUsbTethering:I = 0x21

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x28

.field static final TRANSACTION_startCaptivePortalApp:I = 0x42

.field static final TRANSACTION_startLegacyVpn:I = 0x2b

.field static final TRANSACTION_startNattKeepalive:I = 0x49

.field static final TRANSACTION_startTethering:I = 0x18

.field static final TRANSACTION_stopKeepalive:I = 0x4a

.field static final TRANSACTION_stopTethering:I = 0x19

.field static final TRANSACTION_tether:I = 0x14

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x38

.field static final TRANSACTION_untether:I = 0x15

.field static final TRANSACTION_updateLockdownVpn:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.net.IConnectivityManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
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
    const-string v0, "android.net.IConnectivityManager"

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
    instance-of v1, v0, Landroid/net/IConnectivityManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/IConnectivityManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v3, "android.net.IConnectivityManager"

    .line 10
    .line 11
    const/4 v10, 0x1

    .line 12
    if-eq v0, v2, :cond_42

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v2, 0x0

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
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getPCNetTether()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    return v10

    .line 38
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->disableTetherPCInternet()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    return v10

    .line 52
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->enableTetherPCInternet(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    return v10

    .line 70
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getCaptivePortalServerUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v10

    .line 84
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    .line 95
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v2, v0

    .line 100
    check-cast v2, Landroid/net/Network;

    .line 101
    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-interface {p0, v2, v0}, Landroid/net/IConnectivityManager;->stopKeepalive(Landroid/net/Network;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    .line 111
    .line 112
    return v10

    .line 113
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_1

    .line 121
    .line 122
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    .line 124
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/net/Network;

    .line 129
    .line 130
    move-object v3, v0

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    move-object v3, v2

    .line 133
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_2

    .line 142
    .line 143
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    .line 145
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/os/Messenger;

    .line 150
    .line 151
    move-object v5, v0

    .line 152
    goto :goto_1

    .line 153
    :cond_2
    move-object v5, v2

    .line 154
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    move-object v0, p0

    .line 171
    move-object v1, v3

    .line 172
    move v2, v4

    .line 173
    move-object v3, v5

    .line 174
    move-object v4, v6

    .line 175
    move-object v5, v7

    .line 176
    move v6, v11

    .line 177
    move-object v7, v12

    .line 178
    invoke-interface/range {v0 .. v7}, Landroid/net/IConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    .line 183
    .line 184
    return v10

    .line 185
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->factoryReset()V

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    .line 193
    .line 194
    return v10

    .line 195
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 199
    .line 200
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, [Landroid/net/Network;

    .line 205
    .line 206
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    .line 215
    .line 216
    return v10

    .line 217
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->removeVpnAddress(Ljava/lang/String;I)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    .line 237
    .line 238
    return v10

    .line 239
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->addVpnAddress(Ljava/lang/String;I)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    .line 259
    .line 260
    return v10

    .line 261
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getRestoreDefaultNetworkDelay(I)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    .line 277
    .line 278
    return v10

    .line 279
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_3

    .line 287
    .line 288
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    move-object v2, v0

    .line 295
    check-cast v2, Landroid/net/Network;

    .line 296
    .line 297
    :cond_3
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->getMultipathPreference(Landroid/net/Network;)I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    .line 306
    .line 307
    return v10

    .line 308
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_4

    .line 316
    .line 317
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 318
    .line 319
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    move-object v2, v0

    .line 324
    check-cast v2, Landroid/net/Network;

    .line 325
    .line 326
    :cond_4
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    .line 331
    .line 332
    return v10

    .line 333
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_5

    .line 341
    .line 342
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 343
    .line 344
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    move-object v2, v0

    .line 349
    check-cast v2, Landroid/net/Network;

    .line 350
    .line 351
    :cond_5
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    .line 356
    .line 357
    return v10

    .line 358
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_6

    .line 366
    .line 367
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 368
    .line 369
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    move-object v2, v0

    .line 374
    check-cast v2, Landroid/net/Network;

    .line 375
    .line 376
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_7

    .line 381
    .line 382
    move v0, v10

    .line 383
    goto :goto_2

    .line 384
    :cond_7
    move v0, v6

    .line 385
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_8

    .line 390
    .line 391
    move v6, v10

    .line 392
    :cond_8
    invoke-interface {p0, v2, v0, v6}, Landroid/net/IConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    .line 397
    .line 398
    return v10

    .line 399
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_9

    .line 407
    .line 408
    sget-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 409
    .line 410
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    move-object v2, v0

    .line 415
    check-cast v2, Landroid/net/NetworkRequest;

    .line 416
    .line 417
    :cond_9
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    .line 422
    .line 423
    return v10

    .line 424
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_a

    .line 432
    .line 433
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 434
    .line 435
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 440
    .line 441
    goto :goto_3

    .line 442
    :cond_a
    move-object v0, v2

    .line 443
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_b

    .line 448
    .line 449
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 450
    .line 451
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    move-object v2, v1

    .line 456
    check-cast v2, Landroid/app/PendingIntent;

    .line 457
    .line 458
    :cond_b
    invoke-interface {p0, v0, v2}, Landroid/net/IConnectivityManager;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    .line 463
    .line 464
    return v10

    .line 465
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_c

    .line 473
    .line 474
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 475
    .line 476
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 481
    .line 482
    goto :goto_4

    .line 483
    :cond_c
    move-object v0, v2

    .line 484
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    if-eqz v3, :cond_d

    .line 489
    .line 490
    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 491
    .line 492
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    check-cast v2, Landroid/os/Messenger;

    .line 497
    .line 498
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-interface {p0, v0, v2, v1}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    .line 508
    .line 509
    if-eqz v0, :cond_e

    .line 510
    .line 511
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 515
    .line 516
    .line 517
    goto :goto_5

    .line 518
    :cond_e
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    .line 520
    .line 521
    :goto_5
    return v10

    .line 522
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_f

    .line 530
    .line 531
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 532
    .line 533
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    move-object v2, v0

    .line 538
    check-cast v2, Landroid/app/PendingIntent;

    .line 539
    .line 540
    :cond_f
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    .line 545
    .line 546
    return v10

    .line 547
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_10

    .line 555
    .line 556
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 557
    .line 558
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 563
    .line 564
    goto :goto_6

    .line 565
    :cond_10
    move-object v0, v2

    .line 566
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    if-eqz v3, :cond_11

    .line 571
    .line 572
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 573
    .line 574
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    move-object v2, v1

    .line 579
    check-cast v2, Landroid/app/PendingIntent;

    .line 580
    .line 581
    :cond_11
    invoke-interface {p0, v0, v2}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    .line 587
    .line 588
    if-eqz v0, :cond_12

    .line 589
    .line 590
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 594
    .line 595
    .line 596
    goto :goto_7

    .line 597
    :cond_12
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    .line 599
    .line 600
    :goto_7
    return v10

    .line 601
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-eqz v0, :cond_13

    .line 609
    .line 610
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 611
    .line 612
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 617
    .line 618
    move-object v3, v0

    .line 619
    goto :goto_8

    .line 620
    :cond_13
    move-object v3, v2

    .line 621
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    if-eqz v0, :cond_14

    .line 626
    .line 627
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 628
    .line 629
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    check-cast v0, Landroid/os/Messenger;

    .line 634
    .line 635
    move-object v2, v0

    .line 636
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 645
    .line 646
    .line 647
    move-result v7

    .line 648
    move-object v0, p0

    .line 649
    move-object v1, v3

    .line 650
    move v3, v4

    .line 651
    move-object v4, v5

    .line 652
    move v5, v7

    .line 653
    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    .line 659
    .line 660
    if-eqz v0, :cond_15

    .line 661
    .line 662
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 666
    .line 667
    .line 668
    goto :goto_9

    .line 669
    :cond_15
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    .line 671
    .line 672
    :goto_9
    return v10

    .line 673
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    if-eqz v0, :cond_16

    .line 681
    .line 682
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 683
    .line 684
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    check-cast v0, Landroid/os/Messenger;

    .line 689
    .line 690
    move-object v3, v0

    .line 691
    goto :goto_a

    .line 692
    :cond_16
    move-object v3, v2

    .line 693
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eqz v0, :cond_17

    .line 698
    .line 699
    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 700
    .line 701
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    check-cast v0, Landroid/net/NetworkInfo;

    .line 706
    .line 707
    move-object v4, v0

    .line 708
    goto :goto_b

    .line 709
    :cond_17
    move-object v4, v2

    .line 710
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    if-eqz v0, :cond_18

    .line 715
    .line 716
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 717
    .line 718
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    check-cast v0, Landroid/net/LinkProperties;

    .line 723
    .line 724
    move-object v5, v0

    .line 725
    goto :goto_c

    .line 726
    :cond_18
    move-object v5, v2

    .line 727
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_19

    .line 732
    .line 733
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 734
    .line 735
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 740
    .line 741
    move-object v6, v0

    .line 742
    goto :goto_d

    .line 743
    :cond_19
    move-object v6, v2

    .line 744
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 745
    .line 746
    .line 747
    move-result v7

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    if-eqz v0, :cond_1a

    .line 753
    .line 754
    sget-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 755
    .line 756
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    check-cast v0, Landroid/net/NetworkMisc;

    .line 761
    .line 762
    move-object v11, v0

    .line 763
    goto :goto_e

    .line 764
    :cond_1a
    move-object v11, v2

    .line 765
    :goto_e
    move-object v0, p0

    .line 766
    move-object v1, v3

    .line 767
    move-object v2, v4

    .line 768
    move-object v3, v5

    .line 769
    move-object v4, v6

    .line 770
    move v5, v7

    .line 771
    move-object v6, v11

    .line 772
    invoke-interface/range {v0 .. v6}, Landroid/net/IConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    .line 781
    .line 782
    return v10

    .line 783
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    if-eqz v0, :cond_1b

    .line 791
    .line 792
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 793
    .line 794
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    move-object v2, v0

    .line 799
    check-cast v2, Landroid/os/Messenger;

    .line 800
    .line 801
    :cond_1b
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    .line 806
    .line 807
    return v10

    .line 808
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    if-eqz v0, :cond_1c

    .line 816
    .line 817
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 818
    .line 819
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    move-object v2, v0

    .line 824
    check-cast v2, Landroid/net/Network;

    .line 825
    .line 826
    :cond_1c
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->requestBandwidthUpdate(Landroid/net/Network;)Z

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    .line 835
    .line 836
    return v10

    .line 837
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    if-eqz v0, :cond_1d

    .line 845
    .line 846
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 847
    .line 848
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    move-object v2, v0

    .line 853
    check-cast v2, Landroid/os/Messenger;

    .line 854
    .line 855
    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-interface {p0, v2, v0}, Landroid/net/IConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    .line 864
    .line 865
    return v10

    .line 866
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    if-eqz v0, :cond_1e

    .line 874
    .line 875
    move v6, v10

    .line 876
    :cond_1e
    invoke-interface {p0, v6}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V

    .line 877
    .line 878
    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    .line 881
    .line 882
    return v10

    .line 883
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_1f

    .line 891
    .line 892
    move v6, v10

    .line 893
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-interface {p0, v6, v0, v1}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 902
    .line 903
    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    .line 906
    .line 907
    return v10

    .line 908
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    return v10

    .line 922
    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    .line 938
    .line 939
    return v10

    .line 940
    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 944
    .line 945
    .line 946
    move-result v0

    .line 947
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    return v10

    .line 958
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 962
    .line 963
    .line 964
    move-result v0

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-eqz v1, :cond_20

    .line 974
    .line 975
    move v6, v10

    .line 976
    :cond_20
    invoke-interface {p0, v0, v2, v6}, Landroid/net/IConnectivityManager;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    .line 985
    .line 986
    return v10

    .line 987
    :pswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 991
    .line 992
    .line 993
    move-result v0

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v1

    .line 998
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    .line 1007
    .line 1008
    return v10

    .line 1009
    :pswitch_20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    .line 1021
    .line 1022
    return v10

    .line 1023
    :pswitch_21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1034
    .line 1035
    .line 1036
    return v10

    .line 1037
    :pswitch_22
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1041
    .line 1042
    .line 1043
    move-result v0

    .line 1044
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    .line 1050
    .line 1051
    if-eqz v0, :cond_21

    .line 1052
    .line 1053
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v0, v9, v10}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1057
    .line 1058
    .line 1059
    goto :goto_f

    .line 1060
    :cond_21
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    .line 1062
    .line 1063
    :goto_f
    return v10

    .line 1064
    :pswitch_23
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1068
    .line 1069
    .line 1070
    move-result v0

    .line 1071
    if-eqz v0, :cond_22

    .line 1072
    .line 1073
    sget-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1074
    .line 1075
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    move-object v2, v0

    .line 1080
    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 1081
    .line 1082
    :cond_22
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    .line 1087
    .line 1088
    return v10

    .line 1089
    :pswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1093
    .line 1094
    .line 1095
    move-result v0

    .line 1096
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    .line 1102
    .line 1103
    if-eqz v0, :cond_23

    .line 1104
    .line 1105
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v0, v9, v10}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1109
    .line 1110
    .line 1111
    goto :goto_10

    .line 1112
    :cond_23
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    .line 1114
    .line 1115
    :goto_10
    return v10

    .line 1116
    :pswitch_25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1120
    .line 1121
    .line 1122
    move-result v0

    .line 1123
    if-eqz v0, :cond_24

    .line 1124
    .line 1125
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1126
    .line 1127
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    move-object v2, v0

    .line 1132
    check-cast v2, Lcom/android/internal/net/VpnConfig;

    .line 1133
    .line 1134
    :cond_24
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    .line 1140
    .line 1141
    if-eqz v0, :cond_25

    .line 1142
    .line 1143
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v0, v9, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1147
    .line 1148
    .line 1149
    goto :goto_11

    .line 1150
    :cond_25
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    .line 1152
    .line 1153
    :goto_11
    return v10

    .line 1154
    :pswitch_26
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1162
    .line 1163
    .line 1164
    move-result v2

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1166
    .line 1167
    .line 1168
    move-result v1

    .line 1169
    if-eqz v1, :cond_26

    .line 1170
    .line 1171
    move v6, v10

    .line 1172
    :cond_26
    invoke-interface {p0, v0, v2, v6}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    .line 1177
    .line 1178
    return v10

    .line 1179
    :pswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1191
    .line 1192
    .line 1193
    move-result v1

    .line 1194
    invoke-interface {p0, v0, v2, v1}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v0

    .line 1198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    .line 1203
    .line 1204
    return v10

    .line 1205
    :pswitch_28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1209
    .line 1210
    .line 1211
    move-result v0

    .line 1212
    if-eqz v0, :cond_27

    .line 1213
    .line 1214
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1215
    .line 1216
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    move-object v2, v0

    .line 1221
    check-cast v2, Landroid/net/Network;

    .line 1222
    .line 1223
    :cond_27
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    .line 1229
    .line 1230
    if-eqz v0, :cond_28

    .line 1231
    .line 1232
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v0, v9, v10}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1236
    .line 1237
    .line 1238
    goto :goto_12

    .line 1239
    :cond_28
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    .line 1241
    .line 1242
    :goto_12
    return v10

    .line 1243
    :pswitch_29
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    if-eqz v0, :cond_29

    .line 1251
    .line 1252
    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1253
    .line 1254
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    move-object v2, v0

    .line 1259
    check-cast v2, Landroid/net/ProxyInfo;

    .line 1260
    .line 1261
    :cond_29
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    .line 1266
    .line 1267
    return v10

    .line 1268
    :pswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    .line 1277
    .line 1278
    if-eqz v0, :cond_2a

    .line 1279
    .line 1280
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v0, v9, v10}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1284
    .line 1285
    .line 1286
    goto :goto_13

    .line 1287
    :cond_2a
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    .line 1289
    .line 1290
    :goto_13
    return v10

    .line 1291
    :pswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    if-eqz v0, :cond_2b

    .line 1299
    .line 1300
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1301
    .line 1302
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    move-object v2, v0

    .line 1307
    check-cast v2, Landroid/net/Network;

    .line 1308
    .line 1309
    :cond_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1310
    .line 1311
    .line 1312
    move-result v0

    .line 1313
    if-eqz v0, :cond_2c

    .line 1314
    .line 1315
    move v6, v10

    .line 1316
    :cond_2c
    invoke-interface {p0, v2, v6}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    .line 1321
    .line 1322
    return v10

    .line 1323
    :pswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1327
    .line 1328
    .line 1329
    move-result v0

    .line 1330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1331
    .line 1332
    .line 1333
    move-result v1

    .line 1334
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    .line 1339
    .line 1340
    return v10

    .line 1341
    :pswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1345
    .line 1346
    .line 1347
    move-result v0

    .line 1348
    if-eqz v0, :cond_2d

    .line 1349
    .line 1350
    move v6, v10

    .line 1351
    :cond_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    invoke-interface {p0, v6, v0}, Landroid/net/IConnectivityManager;->setUsbTethering(ZLjava/lang/String;)I

    .line 1356
    .line 1357
    .line 1358
    move-result v0

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    .line 1364
    .line 1365
    return v10

    .line 1366
    :pswitch_2e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v0

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    return v10

    .line 1380
    :pswitch_2f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    return v10

    .line 1394
    :pswitch_30
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    .line 1396
    .line 1397
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    return v10

    .line 1408
    :pswitch_31
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v0

    .line 1415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    return v10

    .line 1422
    :pswitch_32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1433
    .line 1434
    .line 1435
    return v10

    .line 1436
    :pswitch_33
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    .line 1438
    .line 1439
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v0

    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1447
    .line 1448
    .line 1449
    return v10

    .line 1450
    :pswitch_34
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v0

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    return v10

    .line 1464
    :pswitch_35
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1468
    .line 1469
    .line 1470
    move-result v0

    .line 1471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v1

    .line 1475
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->stopTethering(ILjava/lang/String;)V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    .line 1480
    .line 1481
    return v10

    .line 1482
    :pswitch_36
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1486
    .line 1487
    .line 1488
    move-result v0

    .line 1489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1490
    .line 1491
    .line 1492
    move-result v3

    .line 1493
    if-eqz v3, :cond_2e

    .line 1494
    .line 1495
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1496
    .line 1497
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v2

    .line 1501
    check-cast v2, Landroid/os/ResultReceiver;

    .line 1502
    .line 1503
    :cond_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1504
    .line 1505
    .line 1506
    move-result v3

    .line 1507
    if-eqz v3, :cond_2f

    .line 1508
    .line 1509
    move v6, v10

    .line 1510
    :cond_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v1

    .line 1514
    invoke-interface {p0, v0, v2, v6, v1}, Landroid/net/IConnectivityManager;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    .line 1519
    .line 1520
    return v10

    .line 1521
    :pswitch_37
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->isTetheringSupported(Ljava/lang/String;)Z

    .line 1529
    .line 1530
    .line 1531
    move-result v0

    .line 1532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    .line 1537
    .line 1538
    return v10

    .line 1539
    :pswitch_38
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v0

    .line 1546
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    .line 1547
    .line 1548
    .line 1549
    move-result v0

    .line 1550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    .line 1555
    .line 1556
    return v10

    .line 1557
    :pswitch_39
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v1

    .line 1568
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    .line 1570
    .line 1571
    move-result v0

    .line 1572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    .line 1577
    .line 1578
    return v10

    .line 1579
    :pswitch_3a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v0

    .line 1586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v1

    .line 1590
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    .line 1592
    .line 1593
    move-result v0

    .line 1594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    .line 1596
    .line 1597
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    .line 1599
    .line 1600
    return v10

    .line 1601
    :pswitch_3b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1605
    .line 1606
    .line 1607
    move-result v0

    .line 1608
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v0

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    .line 1621
    .line 1622
    return v10

    .line 1623
    :pswitch_3c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z

    .line 1627
    .line 1628
    .line 1629
    move-result v0

    .line 1630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    .line 1632
    .line 1633
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    .line 1635
    .line 1636
    return v10

    .line 1637
    :pswitch_3d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    .line 1639
    .line 1640
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v0

    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    .line 1646
    .line 1647
    if-eqz v0, :cond_30

    .line 1648
    .line 1649
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1653
    .line 1654
    .line 1655
    goto :goto_14

    .line 1656
    :cond_30
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    .line 1658
    .line 1659
    :goto_14
    return v10

    .line 1660
    :pswitch_3e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    .line 1662
    .line 1663
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v0

    .line 1667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    .line 1669
    .line 1670
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1671
    .line 1672
    .line 1673
    return v10

    .line 1674
    :pswitch_3f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    .line 1676
    .line 1677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1678
    .line 1679
    .line 1680
    move-result v0

    .line 1681
    if-eqz v0, :cond_31

    .line 1682
    .line 1683
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1684
    .line 1685
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v0

    .line 1689
    move-object v2, v0

    .line 1690
    check-cast v2, Landroid/net/Network;

    .line 1691
    .line 1692
    :cond_31
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    .line 1698
    .line 1699
    if-eqz v0, :cond_32

    .line 1700
    .line 1701
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1705
    .line 1706
    .line 1707
    goto :goto_15

    .line 1708
    :cond_32
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    .line 1710
    .line 1711
    :goto_15
    return v10

    .line 1712
    :pswitch_40
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1716
    .line 1717
    .line 1718
    move-result v0

    .line 1719
    if-eqz v0, :cond_33

    .line 1720
    .line 1721
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1722
    .line 1723
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v0

    .line 1727
    move-object v2, v0

    .line 1728
    check-cast v2, Landroid/net/Network;

    .line 1729
    .line 1730
    :cond_33
    invoke-interface {p0, v2}, Landroid/net/IConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v0

    .line 1734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    .line 1736
    .line 1737
    if-eqz v0, :cond_34

    .line 1738
    .line 1739
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v0, v9, v10}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1743
    .line 1744
    .line 1745
    goto :goto_16

    .line 1746
    :cond_34
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    .line 1748
    .line 1749
    :goto_16
    return v10

    .line 1750
    :pswitch_41
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1754
    .line 1755
    .line 1756
    move-result v0

    .line 1757
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v0

    .line 1761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1762
    .line 1763
    .line 1764
    if-eqz v0, :cond_35

    .line 1765
    .line 1766
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    .line 1768
    .line 1769
    invoke-virtual {v0, v9, v10}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1770
    .line 1771
    .line 1772
    goto :goto_17

    .line 1773
    :cond_35
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    .line 1775
    .line 1776
    :goto_17
    return v10

    .line 1777
    :pswitch_42
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    .line 1779
    .line 1780
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v0

    .line 1784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    .line 1786
    .line 1787
    if-eqz v0, :cond_36

    .line 1788
    .line 1789
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    .line 1791
    .line 1792
    invoke-virtual {v0, v9, v10}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1793
    .line 1794
    .line 1795
    goto :goto_18

    .line 1796
    :cond_36
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1797
    .line 1798
    .line 1799
    :goto_18
    return v10

    .line 1800
    :pswitch_43
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1804
    .line 1805
    .line 1806
    move-result v0

    .line 1807
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    .line 1808
    .line 1809
    .line 1810
    move-result v0

    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    .line 1813
    .line 1814
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1815
    .line 1816
    .line 1817
    return v10

    .line 1818
    :pswitch_44
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    .line 1820
    .line 1821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1822
    .line 1823
    .line 1824
    move-result v0

    .line 1825
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v0

    .line 1829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    .line 1831
    .line 1832
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1833
    .line 1834
    .line 1835
    return v10

    .line 1836
    :pswitch_45
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    .line 1838
    .line 1839
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v0

    .line 1843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1847
    .line 1848
    .line 1849
    return v10

    .line 1850
    :pswitch_46
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1854
    .line 1855
    .line 1856
    move-result v0

    .line 1857
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v0

    .line 1861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1862
    .line 1863
    .line 1864
    if-eqz v0, :cond_37

    .line 1865
    .line 1866
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    .line 1868
    .line 1869
    invoke-virtual {v0, v9, v10}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1870
    .line 1871
    .line 1872
    goto :goto_19

    .line 1873
    :cond_37
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    .line 1875
    .line 1876
    :goto_19
    return v10

    .line 1877
    :pswitch_47
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1878
    .line 1879
    .line 1880
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v0

    .line 1884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1888
    .line 1889
    .line 1890
    return v10

    .line 1891
    :pswitch_48
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    .line 1893
    .line 1894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1895
    .line 1896
    .line 1897
    move-result v0

    .line 1898
    if-eqz v0, :cond_38

    .line 1899
    .line 1900
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1901
    .line 1902
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v0

    .line 1906
    move-object v2, v0

    .line 1907
    check-cast v2, Landroid/net/Network;

    .line 1908
    .line 1909
    :cond_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1910
    .line 1911
    .line 1912
    move-result v0

    .line 1913
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1914
    .line 1915
    .line 1916
    move-result v1

    .line 1917
    if-eqz v1, :cond_39

    .line 1918
    .line 1919
    move v1, v10

    .line 1920
    goto :goto_1a

    .line 1921
    :cond_39
    move v1, v6

    .line 1922
    :goto_1a
    invoke-interface {p0, v2, v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v0

    .line 1926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    .line 1928
    .line 1929
    if-eqz v0, :cond_3a

    .line 1930
    .line 1931
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    .line 1933
    .line 1934
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1935
    .line 1936
    .line 1937
    goto :goto_1b

    .line 1938
    :cond_3a
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    .line 1940
    .line 1941
    :goto_1b
    return v10

    .line 1942
    :pswitch_49
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    .line 1944
    .line 1945
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1946
    .line 1947
    .line 1948
    move-result v0

    .line 1949
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v0

    .line 1953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    .line 1955
    .line 1956
    if-eqz v0, :cond_3b

    .line 1957
    .line 1958
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    .line 1960
    .line 1961
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1962
    .line 1963
    .line 1964
    goto :goto_1c

    .line 1965
    :cond_3b
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1966
    .line 1967
    .line 1968
    :goto_1c
    return v10

    .line 1969
    :pswitch_4a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    .line 1971
    .line 1972
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1973
    .line 1974
    .line 1975
    move-result v0

    .line 1976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1977
    .line 1978
    .line 1979
    move-result v1

    .line 1980
    if-eqz v1, :cond_3c

    .line 1981
    .line 1982
    move v1, v10

    .line 1983
    goto :goto_1d

    .line 1984
    :cond_3c
    move v1, v6

    .line 1985
    :goto_1d
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v0

    .line 1989
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1990
    .line 1991
    .line 1992
    if-eqz v0, :cond_3d

    .line 1993
    .line 1994
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    .line 1996
    .line 1997
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1998
    .line 1999
    .line 2000
    goto :goto_1e

    .line 2001
    :cond_3d
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2002
    .line 2003
    .line 2004
    :goto_1e
    return v10

    .line 2005
    :pswitch_4b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2006
    .line 2007
    .line 2008
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v0

    .line 2012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2013
    .line 2014
    .line 2015
    if-eqz v0, :cond_3e

    .line 2016
    .line 2017
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2018
    .line 2019
    .line 2020
    invoke-virtual {v0, v9, v10}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2021
    .line 2022
    .line 2023
    goto :goto_1f

    .line 2024
    :cond_3e
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    .line 2026
    .line 2027
    :goto_1f
    return v10

    .line 2028
    :pswitch_4c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    .line 2030
    .line 2031
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2032
    .line 2033
    .line 2034
    move-result v0

    .line 2035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2036
    .line 2037
    .line 2038
    move-result v1

    .line 2039
    if-eqz v1, :cond_3f

    .line 2040
    .line 2041
    move v1, v10

    .line 2042
    goto :goto_20

    .line 2043
    :cond_3f
    move v1, v6

    .line 2044
    :goto_20
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v0

    .line 2048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2049
    .line 2050
    .line 2051
    if-eqz v0, :cond_40

    .line 2052
    .line 2053
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    .line 2055
    .line 2056
    invoke-virtual {v0, v9, v10}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2057
    .line 2058
    .line 2059
    goto :goto_21

    .line 2060
    :cond_40
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    .line 2062
    .line 2063
    :goto_21
    return v10

    .line 2064
    :pswitch_4d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2065
    .line 2066
    .line 2067
    invoke-interface {p0}, Landroid/net/IConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v0

    .line 2071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    .line 2073
    .line 2074
    if-eqz v0, :cond_41

    .line 2075
    .line 2076
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    .line 2078
    .line 2079
    invoke-virtual {v0, v9, v10}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2080
    .line 2081
    .line 2082
    goto :goto_22

    .line 2083
    :cond_41
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2084
    .line 2085
    .line 2086
    :goto_22
    return v10

    .line 2087
    :cond_42
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2088
    .line 2089
    .line 2090
    return v10

    .line 2091
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
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
