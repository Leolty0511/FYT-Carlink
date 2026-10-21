.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x25

.field static final TRANSACTION_acquireWifiLock:I = 0x20

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x8

.field static final TRANSACTION_addOrUpdatePasspointConfiguration:I = 0x9

.field static final TRANSACTION_deauthenticateNetwork:I = 0xe

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x40

.field static final TRANSACTION_disableNetwork:I = 0x11

.field static final TRANSACTION_disconnect:I = 0x14

.field static final TRANSACTION_enableAggressiveHandover:I = 0x38

.field static final TRANSACTION_enableNetwork:I = 0x10

.field static final TRANSACTION_enableTdls:I = 0x33

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x34

.field static final TRANSACTION_enableVerboseLogging:I = 0x36

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x3e

.field static final TRANSACTION_factoryReset:I = 0x41

.field static final TRANSACTION_getAggressiveHandover:I = 0x39

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3b

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x17

.field static final TRANSACTION_getConnectionStatistics:I = 0x3f

.field static final TRANSACTION_getCountryCode:I = 0x1b

.field static final TRANSACTION_getCurrentNetwork:I = 0x42

.field static final TRANSACTION_getCurrentNetworkWpsNfcConfigurationToken:I = 0x35

.field static final TRANSACTION_getCurrentRssi:I = 0x48

.field static final TRANSACTION_getDhcpInfo:I = 0x1e

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x3d

.field static final TRANSACTION_getMatchingOsuProviders:I = 0x7

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getPasspointConfigurations:I = 0xb

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x13

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x37

.field static final TRANSACTION_getWifiApConfiguration:I = 0x30

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2f

.field static final TRANSACTION_getWifiEnabledState:I = 0x19

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x32

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x23

.field static final TRANSACTION_isDualBandSupported:I = 0x1c

.field static final TRANSACTION_isMulticastEnabled:I = 0x24

.field static final TRANSACTION_isNetworkValidForVoWifi:I = 0x49

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1f

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xd

.field static final TRANSACTION_notifyAndCloseWifi:I = 0x4b

.field static final TRANSACTION_queryPasspointIcon:I = 0xc

.field static final TRANSACTION_reassociate:I = 0x16

.field static final TRANSACTION_reconnect:I = 0x15

.field static final TRANSACTION_registerWifiNetworkEventObserver:I = 0x46

.field static final TRANSACTION_releaseMulticastLock:I = 0x26

.field static final TRANSACTION_releaseWifiLock:I = 0x22

.field static final TRANSACTION_removeNetwork:I = 0xf

.field static final TRANSACTION_removePasspointConfiguration:I = 0xa

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_restoreBackupData:I = 0x44

.field static final TRANSACTION_restoreSupplicantBackupData:I = 0x45

.field static final TRANSACTION_retrieveBackupData:I = 0x43

.field static final TRANSACTION_saveConfiguration:I = 0x1d

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3a

.field static final TRANSACTION_setCheckingInternetForVoWifi:I = 0x4a

.field static final TRANSACTION_setCountryCode:I = 0x1a

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x3c

.field static final TRANSACTION_setWifiApConfiguration:I = 0x31

.field static final TRANSACTION_setWifiApEnabled:I = 0x27

.field static final TRANSACTION_setWifiEnabled:I = 0x18

.field static final TRANSACTION_softApAddClientToWhiteList:I = 0x52

.field static final TRANSACTION_softApBlockStation:I = 0x4c

.field static final TRANSACTION_softApDelClientFromWhiteList:I = 0x53

.field static final TRANSACTION_softApGetBlockedStations:I = 0x4f

.field static final TRANSACTION_softApGetBlockedStationsDetail:I = 0x51

.field static final TRANSACTION_softApGetClientWhiteList:I = 0x55

.field static final TRANSACTION_softApGetConnectedStations:I = 0x4e

.field static final TRANSACTION_softApGetConnectedStationsDetail:I = 0x50

.field static final TRANSACTION_softApIsWhiteListEnabled:I = 0x56

.field static final TRANSACTION_softApSetClientWhiteListEnabled:I = 0x54

.field static final TRANSACTION_softApUnblockStation:I = 0x4d

.field static final TRANSACTION_softApWpsCheckPin:I = 0x57

.field static final TRANSACTION_startLocalOnlyHotspot:I = 0x2b

.field static final TRANSACTION_startScan:I = 0x12

.field static final TRANSACTION_startSoftAp:I = 0x29

.field static final TRANSACTION_startWatchLocalOnlyHotspot:I = 0x2d

.field static final TRANSACTION_stopLocalOnlyHotspot:I = 0x2c

.field static final TRANSACTION_stopSoftAp:I = 0x2a

.field static final TRANSACTION_stopWatchLocalOnlyHotspot:I = 0x2e

.field static final TRANSACTION_unregisterWifiNetworkEventObserver:I = 0x47

.field static final TRANSACTION_updateInterfaceIpState:I = 0x28

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.net.wifi.IWifiManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
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
    const-string v0, "android.net.wifi.IWifiManager"

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
    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.net.wifi.IWifiManager"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_23

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->softApWpsCheckPin(Ljava/lang/String;)Z

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
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->softApIsWhiteListEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->softApGetClientWhiteList()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    return v2

    .line 65
    :pswitch_3
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
    if-eqz p1, :cond_0

    .line 73
    .line 74
    move v3, v2

    .line 75
    :cond_0
    invoke-interface {p0, v3}, Landroid/net/wifi/IWifiManager;->softApSetClientWhiteListEnabled(Z)Z

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
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->softApDelClientFromWhiteList(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    .line 106
    .line 107
    return v2

    .line 108
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->softApAddClientToWhiteList(Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    .line 128
    .line 129
    return v2

    .line 130
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->softApGetBlockedStationsDetail()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    return v2

    .line 144
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->softApGetConnectedStationsDetail()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    return v2

    .line 158
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->softApGetBlockedStations()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return v2

    .line 172
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->softApGetConnectedStations()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return v2

    .line 186
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->softApUnblockStation(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    .line 202
    .line 203
    return v2

    .line 204
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->softApBlockStation(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    .line 220
    .line 221
    return v2

    .line 222
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->notifyAndCloseWifi()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    .line 230
    .line 231
    return v2

    .line 232
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_1

    .line 240
    .line 241
    move v3, v2

    .line 242
    :cond_1
    invoke-interface {p0, v3}, Landroid/net/wifi/IWifiManager;->setCheckingInternetForVoWifi(Z)Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    .line 251
    .line 252
    return v2

    .line 253
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->isNetworkValidForVoWifi()Z

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
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getCurrentRssi()I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    .line 279
    .line 280
    return v2

    .line 281
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-static {p1}, Landroid/net/wifi/IWifiNetworkEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiNetworkEventObserver;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->unregisterWifiNetworkEventObserver(Landroid/net/wifi/IWifiNetworkEventObserver;)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    .line 301
    .line 302
    return v2

    .line 303
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-static {p1}, Landroid/net/wifi/IWifiNetworkEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiNetworkEventObserver;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->registerWifiNetworkEventObserver(Landroid/net/wifi/IWifiNetworkEventObserver;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    .line 323
    .line 324
    return v2

    .line 325
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->restoreSupplicantBackupData([B[B)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->restoreBackupData([B)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    .line 355
    .line 356
    return v2

    .line 357
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->retrieveBackupData()[B

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 368
    .line 369
    .line 370
    return v2

    .line 371
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    .line 380
    .line 381
    if-eqz p1, :cond_2

    .line 382
    .line 383
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, p3, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 387
    .line 388
    .line 389
    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    .line 392
    .line 393
    :goto_0
    return v2

    .line 394
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->factoryReset()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    .line 402
    .line 403
    return v2

    .line 404
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    .line 416
    .line 417
    return v2

    .line 418
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    .line 427
    .line 428
    if-eqz p1, :cond_3

    .line 429
    .line 430
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, p3, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 434
    .line 435
    .line 436
    goto :goto_1

    .line 437
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    .line 439
    .line 440
    :goto_1
    return v2

    .line 441
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    if-eqz p1, :cond_4

    .line 449
    .line 450
    move v3, v2

    .line 451
    :cond_4
    invoke-interface {p0, v3}, Landroid/net/wifi/IWifiManager;->enableWifiConnectivityManager(Z)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    .line 456
    .line 457
    return v2

    .line 458
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getEnableAutoJoinWhenAssociated()Z

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    .line 470
    .line 471
    return v2

    .line 472
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    if-eqz p1, :cond_5

    .line 480
    .line 481
    move v3, v2

    .line 482
    :cond_5
    invoke-interface {p0, v3}, Landroid/net/wifi/IWifiManager;->setEnableAutoJoinWhenAssociated(Z)Z

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    .line 491
    .line 492
    return v2

    .line 493
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getAllowScansWithTraffic()I

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
    :pswitch_1d
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
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->setAllowScansWithTraffic(I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    .line 519
    .line 520
    return v2

    .line 521
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getAggressiveHandover()I

    .line 525
    .line 526
    .line 527
    move-result p1

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    .line 533
    .line 534
    return v2

    .line 535
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->enableAggressiveHandover(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    .line 547
    .line 548
    return v2

    .line 549
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I

    .line 553
    .line 554
    .line 555
    move-result p1

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    .line 561
    .line 562
    return v2

    .line 563
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 567
    .line 568
    .line 569
    move-result p1

    .line 570
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    .line 575
    .line 576
    return v2

    .line 577
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    return v2

    .line 591
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 599
    .line 600
    .line 601
    move-result p2

    .line 602
    if-eqz p2, :cond_6

    .line 603
    .line 604
    move v3, v2

    .line 605
    :cond_6
    invoke-interface {p0, p1, v3}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    .line 610
    .line 611
    return v2

    .line 612
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 620
    .line 621
    .line 622
    move-result p2

    .line 623
    if-eqz p2, :cond_7

    .line 624
    .line 625
    move v3, v2

    .line 626
    :cond_7
    invoke-interface {p0, p1, v3}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    .line 631
    .line 632
    return v2

    .line 633
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    .line 642
    .line 643
    if-eqz p1, :cond_8

    .line 644
    .line 645
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {p1, p3, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 649
    .line 650
    .line 651
    goto :goto_2

    .line 652
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    .line 654
    .line 655
    :goto_2
    return v2

    .line 656
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 660
    .line 661
    .line 662
    move-result p1

    .line 663
    if-eqz p1, :cond_9

    .line 664
    .line 665
    sget-object p1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 666
    .line 667
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    move-object v0, p1

    .line 672
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 673
    .line 674
    :cond_9
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    .line 679
    .line 680
    return v2

    .line 681
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    .line 690
    .line 691
    if-eqz p1, :cond_a

    .line 692
    .line 693
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {p1, p3, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 697
    .line 698
    .line 699
    goto :goto_3

    .line 700
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    .line 702
    .line 703
    :goto_3
    return v2

    .line 704
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

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
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->stopWatchLocalOnlyHotspot()V

    .line 722
    .line 723
    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    .line 726
    .line 727
    return v2

    .line 728
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 732
    .line 733
    .line 734
    move-result p1

    .line 735
    if-eqz p1, :cond_b

    .line 736
    .line 737
    sget-object p1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 738
    .line 739
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    move-object v0, p1

    .line 744
    check-cast v0, Landroid/os/Messenger;

    .line 745
    .line 746
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    invoke-interface {p0, v0, p1}, Landroid/net/wifi/IWifiManager;->startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    .line 755
    .line 756
    return v2

    .line 757
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->stopLocalOnlyHotspot()V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    .line 765
    .line 766
    return v2

    .line 767
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 771
    .line 772
    .line 773
    move-result p1

    .line 774
    if-eqz p1, :cond_c

    .line 775
    .line 776
    sget-object p1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 777
    .line 778
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    move-object v0, p1

    .line 783
    check-cast v0, Landroid/os/Messenger;

    .line 784
    .line 785
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object p2

    .line 793
    invoke-interface {p0, v0, p1, p2}, Landroid/net/wifi/IWifiManager;->startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I

    .line 794
    .line 795
    .line 796
    move-result p1

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    .line 802
    .line 803
    return v2

    .line 804
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->stopSoftAp()Z

    .line 808
    .line 809
    .line 810
    move-result p1

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    .line 813
    .line 814
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    .line 816
    .line 817
    return v2

    .line 818
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 822
    .line 823
    .line 824
    move-result p1

    .line 825
    if-eqz p1, :cond_d

    .line 826
    .line 827
    sget-object p1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 828
    .line 829
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object p1

    .line 833
    move-object v0, p1

    .line 834
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 835
    .line 836
    :cond_d
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 837
    .line 838
    .line 839
    move-result p1

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    .line 842
    .line 843
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    .line 845
    .line 846
    return v2

    .line 847
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object p1

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 855
    .line 856
    .line 857
    move-result p2

    .line 858
    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    .line 863
    .line 864
    return v2

    .line 865
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 869
    .line 870
    .line 871
    move-result p1

    .line 872
    if-eqz p1, :cond_e

    .line 873
    .line 874
    sget-object p1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 875
    .line 876
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object p1

    .line 880
    move-object v0, p1

    .line 881
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 882
    .line 883
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 884
    .line 885
    .line 886
    move-result p1

    .line 887
    if-eqz p1, :cond_f

    .line 888
    .line 889
    move v3, v2

    .line 890
    :cond_f
    invoke-interface {p0, v0, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    .line 895
    .line 896
    return v2

    .line 897
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    .line 901
    .line 902
    .line 903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    .line 905
    .line 906
    return v2

    .line 907
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 911
    .line 912
    .line 913
    move-result-object p1

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object p2

    .line 918
    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    .line 923
    .line 924
    return v2

    .line 925
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z

    .line 929
    .line 930
    .line 931
    move-result p1

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    .line 934
    .line 935
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    .line 937
    .line 938
    return v2

    .line 939
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V

    .line 943
    .line 944
    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    .line 947
    .line 948
    return v2

    .line 949
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 953
    .line 954
    .line 955
    move-result-object p1

    .line 956
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 957
    .line 958
    .line 959
    move-result p1

    .line 960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    .line 962
    .line 963
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    .line 965
    .line 966
    return v2

    .line 967
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 971
    .line 972
    .line 973
    move-result-object p1

    .line 974
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 975
    .line 976
    .line 977
    move-result p4

    .line 978
    if-eqz p4, :cond_10

    .line 979
    .line 980
    sget-object p4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 981
    .line 982
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object p2

    .line 986
    move-object v0, p2

    .line 987
    check-cast v0, Landroid/os/WorkSource;

    .line 988
    .line 989
    :cond_10
    invoke-interface {p0, p1, v0}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    .line 994
    .line 995
    return v2

    .line 996
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1000
    .line 1001
    .line 1002
    move-result-object p1

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1004
    .line 1005
    .line 1006
    move-result p4

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1012
    .line 1013
    .line 1014
    move-result v3

    .line 1015
    if-eqz v3, :cond_11

    .line 1016
    .line 1017
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1018
    .line 1019
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object p2

    .line 1023
    move-object v0, p2

    .line 1024
    check-cast v0, Landroid/os/WorkSource;

    .line 1025
    .line 1026
    :cond_11
    invoke-interface {p0, p1, p4, v1, v0}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result p1

    .line 1030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    .line 1035
    .line 1036
    return v2

    .line 1037
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z

    .line 1041
    .line 1042
    .line 1043
    move-result p1

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    .line 1049
    .line 1050
    return v2

    .line 1051
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 1055
    .line 1056
    .line 1057
    move-result-object p1

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    .line 1060
    .line 1061
    if-eqz p1, :cond_12

    .line 1062
    .line 1063
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {p1, p3, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_4

    .line 1070
    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    .line 1072
    .line 1073
    :goto_4
    return v2

    .line 1074
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z

    .line 1078
    .line 1079
    .line 1080
    move-result p1

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    .line 1086
    .line 1087
    return v2

    .line 1088
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z

    .line 1092
    .line 1093
    .line 1094
    move-result p1

    .line 1095
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    .line 1100
    .line 1101
    return v2

    .line 1102
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getCountryCode()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object p1

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    return v2

    .line 1116
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object p1

    .line 1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1124
    .line 1125
    .line 1126
    move-result p2

    .line 1127
    if-eqz p2, :cond_13

    .line 1128
    .line 1129
    move v3, v2

    .line 1130
    :cond_13
    invoke-interface {p0, p1, v3}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    .line 1135
    .line 1136
    return v2

    .line 1137
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    .line 1141
    .line 1142
    .line 1143
    move-result p1

    .line 1144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    .line 1149
    .line 1150
    return v2

    .line 1151
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object p1

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1159
    .line 1160
    .line 1161
    move-result p2

    .line 1162
    if-eqz p2, :cond_14

    .line 1163
    .line 1164
    move v3, v2

    .line 1165
    :cond_14
    invoke-interface {p0, p1, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Ljava/lang/String;Z)Z

    .line 1166
    .line 1167
    .line 1168
    move-result p1

    .line 1169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    .line 1174
    .line 1175
    return v2

    .line 1176
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object p1

    .line 1183
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p1

    .line 1187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    .line 1189
    .line 1190
    if-eqz p1, :cond_15

    .line 1191
    .line 1192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {p1, p3, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1196
    .line 1197
    .line 1198
    goto :goto_5

    .line 1199
    :cond_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    .line 1201
    .line 1202
    :goto_5
    return v2

    .line 1203
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->reassociate()V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    .line 1211
    .line 1212
    return v2

    .line 1213
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->reconnect()V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    .line 1221
    .line 1222
    return v2

    .line 1223
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->disconnect()V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    .line 1231
    .line 1232
    return v2

    .line 1233
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object p1

    .line 1240
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    .line 1241
    .line 1242
    .line 1243
    move-result-object p1

    .line 1244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1248
    .line 1249
    .line 1250
    return v2

    .line 1251
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1255
    .line 1256
    .line 1257
    move-result p1

    .line 1258
    if-eqz p1, :cond_16

    .line 1259
    .line 1260
    sget-object p1, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1261
    .line 1262
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    move-result-object p1

    .line 1266
    check-cast p1, Landroid/net/wifi/ScanSettings;

    .line 1267
    .line 1268
    goto :goto_6

    .line 1269
    :cond_16
    move-object p1, v0

    .line 1270
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1271
    .line 1272
    .line 1273
    move-result p4

    .line 1274
    if-eqz p4, :cond_17

    .line 1275
    .line 1276
    sget-object p4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1277
    .line 1278
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object p4

    .line 1282
    move-object v0, p4

    .line 1283
    check-cast v0, Landroid/os/WorkSource;

    .line 1284
    .line 1285
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object p2

    .line 1289
    invoke-interface {p0, p1, v0, p2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    .line 1294
    .line 1295
    return v2

    .line 1296
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1300
    .line 1301
    .line 1302
    move-result p1

    .line 1303
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z

    .line 1304
    .line 1305
    .line 1306
    move-result p1

    .line 1307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    .line 1312
    .line 1313
    return v2

    .line 1314
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1318
    .line 1319
    .line 1320
    move-result p1

    .line 1321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1322
    .line 1323
    .line 1324
    move-result p2

    .line 1325
    if-eqz p2, :cond_18

    .line 1326
    .line 1327
    move v3, v2

    .line 1328
    :cond_18
    invoke-interface {p0, p1, v3}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z

    .line 1329
    .line 1330
    .line 1331
    move-result p1

    .line 1332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    .line 1337
    .line 1338
    return v2

    .line 1339
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1343
    .line 1344
    .line 1345
    move-result p1

    .line 1346
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z

    .line 1347
    .line 1348
    .line 1349
    move-result p1

    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    .line 1355
    .line 1356
    return v2

    .line 1357
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1361
    .line 1362
    .line 1363
    move-result-wide v0

    .line 1364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1365
    .line 1366
    .line 1367
    move-result p1

    .line 1368
    if-eqz p1, :cond_19

    .line 1369
    .line 1370
    move v3, v2

    .line 1371
    :cond_19
    invoke-interface {p0, v0, v1, v3}, Landroid/net/wifi/IWifiManager;->deauthenticateNetwork(JZ)V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    .line 1376
    .line 1377
    return v2

    .line 1378
    :pswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object p1

    .line 1385
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    .line 1386
    .line 1387
    .line 1388
    move-result p1

    .line 1389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    .line 1394
    .line 1395
    return v2

    .line 1396
    :pswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1400
    .line 1401
    .line 1402
    move-result-wide v0

    .line 1403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object p1

    .line 1407
    invoke-interface {p0, v0, v1, p1}, Landroid/net/wifi/IWifiManager;->queryPasspointIcon(JLjava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    .line 1412
    .line 1413
    return v2

    .line 1414
    :pswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getPasspointConfigurations()Ljava/util/List;

    .line 1418
    .line 1419
    .line 1420
    move-result-object p1

    .line 1421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1425
    .line 1426
    .line 1427
    return v2

    .line 1428
    :pswitch_4d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object p1

    .line 1435
    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->removePasspointConfiguration(Ljava/lang/String;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result p1

    .line 1439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    .line 1444
    .line 1445
    return v2

    .line 1446
    :pswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1450
    .line 1451
    .line 1452
    move-result p1

    .line 1453
    if-eqz p1, :cond_1a

    .line 1454
    .line 1455
    sget-object p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1456
    .line 1457
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1458
    .line 1459
    .line 1460
    move-result-object p1

    .line 1461
    move-object v0, p1

    .line 1462
    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 1463
    .line 1464
    :cond_1a
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    .line 1465
    .line 1466
    .line 1467
    move-result p1

    .line 1468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    .line 1473
    .line 1474
    return v2

    .line 1475
    :pswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1479
    .line 1480
    .line 1481
    move-result p1

    .line 1482
    if-eqz p1, :cond_1b

    .line 1483
    .line 1484
    sget-object p1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1485
    .line 1486
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    move-result-object p1

    .line 1490
    move-object v0, p1

    .line 1491
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1492
    .line 1493
    :cond_1b
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1494
    .line 1495
    .line 1496
    move-result p1

    .line 1497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1501
    .line 1502
    .line 1503
    return v2

    .line 1504
    :pswitch_50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1508
    .line 1509
    .line 1510
    move-result p1

    .line 1511
    if-eqz p1, :cond_1c

    .line 1512
    .line 1513
    sget-object p1, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1514
    .line 1515
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object p1

    .line 1519
    move-object v0, p1

    .line 1520
    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1521
    .line 1522
    :cond_1c
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 1523
    .line 1524
    .line 1525
    move-result-object p1

    .line 1526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1530
    .line 1531
    .line 1532
    return v2

    .line 1533
    :pswitch_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1537
    .line 1538
    .line 1539
    move-result p1

    .line 1540
    if-eqz p1, :cond_1d

    .line 1541
    .line 1542
    sget-object p1, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1543
    .line 1544
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object p1

    .line 1548
    move-object v0, p1

    .line 1549
    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1550
    .line 1551
    :cond_1d
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    .line 1552
    .line 1553
    .line 1554
    move-result-object p1

    .line 1555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    .line 1557
    .line 1558
    if-eqz p1, :cond_1e

    .line 1559
    .line 1560
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {p1, p3, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1564
    .line 1565
    .line 1566
    goto :goto_7

    .line 1567
    :cond_1e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1568
    .line 1569
    .line 1570
    :goto_7
    return v2

    .line 1571
    :pswitch_52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    .line 1573
    .line 1574
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    .line 1575
    .line 1576
    .line 1577
    move-result-object p1

    .line 1578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    .line 1580
    .line 1581
    if-eqz p1, :cond_1f

    .line 1582
    .line 1583
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1587
    .line 1588
    .line 1589
    goto :goto_8

    .line 1590
    :cond_1f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    .line 1592
    .line 1593
    :goto_8
    return v2

    .line 1594
    :pswitch_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    .line 1596
    .line 1597
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    .line 1598
    .line 1599
    .line 1600
    move-result-object p1

    .line 1601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    .line 1603
    .line 1604
    if-eqz p1, :cond_20

    .line 1605
    .line 1606
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1610
    .line 1611
    .line 1612
    goto :goto_9

    .line 1613
    :cond_20
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    .line 1615
    .line 1616
    :goto_9
    return v2

    .line 1617
    :pswitch_54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1621
    .line 1622
    .line 1623
    move-result p1

    .line 1624
    if-eqz p1, :cond_21

    .line 1625
    .line 1626
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1627
    .line 1628
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1629
    .line 1630
    .line 1631
    move-result-object p1

    .line 1632
    move-object v0, p1

    .line 1633
    check-cast v0, Landroid/os/ResultReceiver;

    .line 1634
    .line 1635
    :cond_21
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1636
    .line 1637
    .line 1638
    return v2

    .line 1639
    :pswitch_55
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    .line 1641
    .line 1642
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1643
    .line 1644
    .line 1645
    move-result-object p1

    .line 1646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    .line 1648
    .line 1649
    if-eqz p1, :cond_22

    .line 1650
    .line 1651
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    .line 1653
    .line 1654
    invoke-virtual {p1, p3, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1655
    .line 1656
    .line 1657
    goto :goto_a

    .line 1658
    :cond_22
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    .line 1660
    .line 1661
    :goto_a
    return v2

    .line 1662
    :pswitch_56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    .line 1664
    .line 1665
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()I

    .line 1666
    .line 1667
    .line 1668
    move-result p1

    .line 1669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    .line 1674
    .line 1675
    return v2

    .line 1676
    :cond_23
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1677
    .line 1678
    .line 1679
    return v2

    .line 1680
    nop

    .line 1681
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
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
