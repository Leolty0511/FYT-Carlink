.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addIdleTimer:I = 0x38

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x56

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x4c

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x4e

.field static final TRANSACTION_addRoute:I = 0xf

.field static final TRANSACTION_addUpstreamV6Interface:I = 0x1f

.field static final TRANSACTION_addVpnUidRanges:I = 0x41

.field static final TRANSACTION_allowProtect:I = 0x54

.field static final TRANSACTION_attachPppd:I = 0x27

.field static final TRANSACTION_clearDefaultNetId:I = 0x50

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x7

.field static final TRANSACTION_clearPermission:I = 0x53

.field static final TRANSACTION_createPhysicalNetwork:I = 0x49

.field static final TRANSACTION_createVirtualNetwork:I = 0x4a

.field static final TRANSACTION_denyProtect:I = 0x55

.field static final TRANSACTION_detachPppd:I = 0x28

.field static final TRANSACTION_disableIpv6:I = 0xb

.field static final TRANSACTION_disableNat:I = 0x22

.field static final TRANSACTION_enableIpv6:I = 0xc

.field static final TRANSACTION_enableNat:I = 0x21

.field static final TRANSACTION_getDnsForwarders:I = 0x1c

.field static final TRANSACTION_getInterfaceConfig:I = 0x5

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_getNetdService:I = 0x3

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x2b

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x29

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x2a

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x2d

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x2c

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x37

.field static final TRANSACTION_isClatdStarted:I = 0x45

.field static final TRANSACTION_isFirewallEnabled:I = 0x3c

.field static final TRANSACTION_isNetworkActive:I = 0x48

.field static final TRANSACTION_isNetworkRestricted:I = 0x5a

.field static final TRANSACTION_isTetheringStarted:I = 0x17

.field static final TRANSACTION_listInterfaces:I = 0x4

.field static final TRANSACTION_listTetheredInterfaces:I = 0x1a

.field static final TRANSACTION_listTtys:I = 0x26

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x46

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_registerTetheringStatsProvider:I = 0x23

.field static final TRANSACTION_removeIdleTimer:I = 0x39

.field static final TRANSACTION_removeInterfaceAlert:I = 0x31

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x57

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x4d

.field static final TRANSACTION_removeInterfaceQuota:I = 0x2f

.field static final TRANSACTION_removeNetwork:I = 0x4b

.field static final TRANSACTION_removeRoute:I = 0x10

.field static final TRANSACTION_removeRoutesFromLocalNetwork:I = 0x58

.field static final TRANSACTION_removeUpstreamV6Interface:I = 0x20

.field static final TRANSACTION_removeVpnUidRanges:I = 0x42

.field static final TRANSACTION_setAllowOnlyVpnForUids:I = 0x59

.field static final TRANSACTION_setDataSaverModeEnabled:I = 0x35

.field static final TRANSACTION_setDefaultNetId:I = 0x4f

.field static final TRANSACTION_setDnsConfigurationForNetwork:I = 0x3a

.field static final TRANSACTION_setDnsForwarders:I = 0x1b

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x40

.field static final TRANSACTION_setFirewallEnabled:I = 0x3b

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x3d

.field static final TRANSACTION_setFirewallUidRule:I = 0x3e

.field static final TRANSACTION_setFirewallUidRules:I = 0x3f

.field static final TRANSACTION_setGlobalAlert:I = 0x32

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0xd

.field static final TRANSACTION_setInterfaceAlert:I = 0x30

.field static final TRANSACTION_setInterfaceConfig:I = 0x6

.field static final TRANSACTION_setInterfaceDown:I = 0x8

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xe

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0xa

.field static final TRANSACTION_setInterfaceQuota:I = 0x2e

.field static final TRANSACTION_setInterfaceUp:I = 0x9

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x14

.field static final TRANSACTION_setMtu:I = 0x11

.field static final TRANSACTION_setNetworkPermission:I = 0x51

.field static final TRANSACTION_setPermission:I = 0x52

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x36

.field static final TRANSACTION_setUidMeteredNetworkBlacklist:I = 0x33

.field static final TRANSACTION_setUidMeteredNetworkWhitelist:I = 0x34

.field static final TRANSACTION_shutdown:I = 0x12

.field static final TRANSACTION_startClatd:I = 0x43

.field static final TRANSACTION_startInterfaceForwarding:I = 0x1d

.field static final TRANSACTION_startTethering:I = 0x15

.field static final TRANSACTION_stopClatd:I = 0x44

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x1e

.field static final TRANSACTION_stopTethering:I = 0x16

.field static final TRANSACTION_tetherInterface:I = 0x18

.field static final TRANSACTION_tetherLimitReached:I = 0x25

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x47

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_unregisterTetheringStatsProvider:I = 0x24

.field static final TRANSACTION_untetherInterface:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.os.INetworkManagementService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
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
    const-string v0, "android.os.INetworkManagementService"

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
    instance-of v1, v0, Landroid/os/INetworkManagementService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/os/INetworkManagementService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/INetworkManagementService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "android.os.INetworkManagementService"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_18

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
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->isNetworkRestricted(I)Z

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
    if-eqz p1, :cond_0

    .line 45
    .line 46
    move v3, v2

    .line 47
    :cond_0
    sget-object p1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, [Landroid/net/UidRange;

    .line 54
    .line 55
    invoke-interface {p0, v3, p1}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget-object p4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 104
    .line 105
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    .line 114
    .line 115
    return v2

    .line 116
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->denyProtect(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->allowProtect(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->clearPermission([I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    .line 174
    .line 175
    return v2

    .line 176
    :pswitch_9
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->setNetworkPermission(ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    .line 192
    .line 193
    return v2

    .line 194
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->clearDefaultNetId()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    .line 216
    .line 217
    return v2

    .line 218
    :pswitch_c
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 226
    .line 227
    .line 228
    move-result p4

    .line 229
    if-eqz p4, :cond_1

    .line 230
    .line 231
    sget-object p4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 232
    .line 233
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p4

    .line 237
    move-object v0, p4

    .line 238
    check-cast v0, Landroid/net/RouteInfo;

    .line 239
    .line 240
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    invoke-interface {p0, p1, v0, p2}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    .line 249
    .line 250
    return v2

    .line 251
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    .line 267
    .line 268
    return v2

    .line 269
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    .line 285
    .line 286
    return v2

    .line 287
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->removeNetwork(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    .line 299
    .line 300
    return v2

    .line 301
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 309
    .line 310
    .line 311
    move-result p4

    .line 312
    if-eqz p4, :cond_2

    .line 313
    .line 314
    move p4, v2

    .line 315
    goto :goto_0

    .line 316
    :cond_2
    move p4, v3

    .line 317
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    if-eqz p2, :cond_3

    .line 322
    .line 323
    move v3, v2

    .line 324
    :cond_3
    invoke-interface {p0, p1, p4, v3}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    .line 329
    .line 330
    return v2

    .line 331
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    .line 347
    .line 348
    return v2

    .line 349
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->isNetworkActive()Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    .line 361
    .line 362
    return v2

    .line 363
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-static {p1}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    .line 379
    .line 380
    return v2

    .line 381
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-static {p1}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    .line 397
    .line 398
    return v2

    .line 399
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->isClatdStarted(Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    .line 415
    .line 416
    return v2

    .line 417
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->stopClatd(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    .line 429
    .line 430
    return v2

    .line 431
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->startClatd(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    .line 443
    .line 444
    return v2

    .line 445
    :pswitch_18
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
    sget-object p4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 453
    .line 454
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object p2

    .line 458
    check-cast p2, [Landroid/net/UidRange;

    .line 459
    .line 460
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    .line 465
    .line 466
    return v2

    .line 467
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    sget-object p4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 475
    .line 476
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    check-cast p2, [Landroid/net/UidRange;

    .line 481
    .line 482
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    .line 487
    .line 488
    return v2

    .line 489
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
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
    move-result p2

    .line 500
    if-eqz p2, :cond_4

    .line 501
    .line 502
    move v3, v2

    .line 503
    :cond_4
    invoke-interface {p0, p1, v3}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    .line 508
    .line 509
    return v2

    .line 510
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 514
    .line 515
    .line 516
    move-result p1

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 518
    .line 519
    .line 520
    move-result-object p4

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    invoke-interface {p0, p1, p4, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    .line 530
    .line 531
    return v2

    .line 532
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 540
    .line 541
    .line 542
    move-result p4

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 544
    .line 545
    .line 546
    move-result p2

    .line 547
    invoke-interface {p0, p1, p4, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    .line 552
    .line 553
    return v2

    .line 554
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 562
    .line 563
    .line 564
    move-result p2

    .line 565
    if-eqz p2, :cond_5

    .line 566
    .line 567
    move v3, v2

    .line 568
    :cond_5
    invoke-interface {p0, p1, v3}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    .line 573
    .line 574
    return v2

    .line 575
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->isFirewallEnabled()Z

    .line 579
    .line 580
    .line 581
    move-result p1

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    .line 587
    .line 588
    return v2

    .line 589
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 593
    .line 594
    .line 595
    move-result p1

    .line 596
    if-eqz p1, :cond_6

    .line 597
    .line 598
    move v3, v2

    .line 599
    :cond_6
    invoke-interface {p0, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    .line 604
    .line 605
    return v2

    .line 606
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p4

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p2

    .line 621
    invoke-interface {p0, p1, p4, p2}, Landroid/os/INetworkManagementService;->setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    .line 626
    .line 627
    return v2

    .line 628
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object p1

    .line 635
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    .line 640
    .line 641
    return v2

    .line 642
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 650
    .line 651
    .line 652
    move-result p4

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 654
    .line 655
    .line 656
    move-result p2

    .line 657
    invoke-interface {p0, p1, p4, p2}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    .line 662
    .line 663
    return v2

    .line 664
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    .line 668
    .line 669
    .line 670
    move-result p1

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    .line 673
    .line 674
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    .line 676
    .line 677
    return v2

    .line 678
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 682
    .line 683
    .line 684
    move-result p1

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 686
    .line 687
    .line 688
    move-result p2

    .line 689
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    .line 694
    .line 695
    return v2

    .line 696
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 700
    .line 701
    .line 702
    move-result p1

    .line 703
    if-eqz p1, :cond_7

    .line 704
    .line 705
    move v3, v2

    .line 706
    :cond_7
    invoke-interface {p0, v3}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    .line 715
    .line 716
    return v2

    .line 717
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 721
    .line 722
    .line 723
    move-result p1

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 725
    .line 726
    .line 727
    move-result p2

    .line 728
    if-eqz p2, :cond_8

    .line 729
    .line 730
    move v3, v2

    .line 731
    :cond_8
    invoke-interface {p0, p1, v3}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    .line 736
    .line 737
    return v2

    .line 738
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 742
    .line 743
    .line 744
    move-result p1

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 746
    .line 747
    .line 748
    move-result p2

    .line 749
    if-eqz p2, :cond_9

    .line 750
    .line 751
    move v3, v2

    .line 752
    :cond_9
    invoke-interface {p0, p1, v3}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    .line 757
    .line 758
    return v2

    .line 759
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 763
    .line 764
    .line 765
    move-result-wide p1

    .line 766
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    .line 771
    .line 772
    return v2

    .line 773
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object p1

    .line 780
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    .line 785
    .line 786
    return v2

    .line 787
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object p1

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 795
    .line 796
    .line 797
    move-result-wide v0

    .line 798
    invoke-interface {p0, p1, v0, v1}, Landroid/os/INetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    .line 803
    .line 804
    return v2

    .line 805
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object p1

    .line 812
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    .line 817
    .line 818
    return v2

    .line 819
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object p1

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 827
    .line 828
    .line 829
    move-result-wide v0

    .line 830
    invoke-interface {p0, p1, v0, v1}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    .line 835
    .line 836
    return v2

    .line 837
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 841
    .line 842
    .line 843
    move-result p1

    .line 844
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    .line 850
    .line 851
    if-eqz p1, :cond_a

    .line 852
    .line 853
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {p1, p3, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 857
    .line 858
    .line 859
    goto :goto_1

    .line 860
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    .line 862
    .line 863
    :goto_1
    return v2

    .line 864
    :pswitch_2e
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
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    .line 872
    .line 873
    .line 874
    move-result-object p1

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    .line 877
    .line 878
    if-eqz p1, :cond_b

    .line 879
    .line 880
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {p1, p3, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 884
    .line 885
    .line 886
    goto :goto_2

    .line 887
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    .line 889
    .line 890
    :goto_2
    return v2

    .line 891
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    .line 895
    .line 896
    .line 897
    move-result-object p1

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    .line 900
    .line 901
    if-eqz p1, :cond_c

    .line 902
    .line 903
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {p1, p3, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 907
    .line 908
    .line 909
    goto :goto_3

    .line 910
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    .line 912
    .line 913
    :goto_3
    return v2

    .line 914
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    .line 918
    .line 919
    .line 920
    move-result-object p1

    .line 921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    .line 923
    .line 924
    if-eqz p1, :cond_d

    .line 925
    .line 926
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {p1, p3, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 930
    .line 931
    .line 932
    goto :goto_4

    .line 933
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    .line 935
    .line 936
    :goto_4
    return v2

    .line 937
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    .line 941
    .line 942
    .line 943
    move-result-object p1

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    .line 946
    .line 947
    if-eqz p1, :cond_e

    .line 948
    .line 949
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {p1, p3, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 953
    .line 954
    .line 955
    goto :goto_5

    .line 956
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    .line 958
    .line 959
    :goto_5
    return v2

    .line 960
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object p1

    .line 967
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->detachPppd(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    .line 972
    .line 973
    return v2

    .line 974
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v4

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v5

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v6

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v7

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v8

    .line 997
    move-object v3, p0

    .line 998
    invoke-interface/range {v3 .. v8}, Landroid/os/INetworkManagementService;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    .line 1003
    .line 1004
    return v2

    .line 1005
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->listTtys()[Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object p1

    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    return v2

    .line 1019
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1023
    .line 1024
    .line 1025
    move-result-object p1

    .line 1026
    invoke-static {p1}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    .line 1027
    .line 1028
    .line 1029
    move-result-object p1

    .line 1030
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    .line 1035
    .line 1036
    return v2

    .line 1037
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1041
    .line 1042
    .line 1043
    move-result-object p1

    .line 1044
    invoke-static {p1}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    .line 1045
    .line 1046
    .line 1047
    move-result-object p1

    .line 1048
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    .line 1053
    .line 1054
    return v2

    .line 1055
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1059
    .line 1060
    .line 1061
    move-result-object p1

    .line 1062
    invoke-static {p1}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    .line 1063
    .line 1064
    .line 1065
    move-result-object p1

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object p2

    .line 1070
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    .line 1075
    .line 1076
    return v2

    .line 1077
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object p1

    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object p2

    .line 1088
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    .line 1093
    .line 1094
    return v2

    .line 1095
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object p1

    .line 1102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object p2

    .line 1106
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    .line 1111
    .line 1112
    return v2

    .line 1113
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object p1

    .line 1120
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->removeUpstreamV6Interface(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    .line 1125
    .line 1126
    return v2

    .line 1127
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object p1

    .line 1134
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->addUpstreamV6Interface(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    .line 1139
    .line 1140
    return v2

    .line 1141
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object p1

    .line 1148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object p2

    .line 1152
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    .line 1157
    .line 1158
    return v2

    .line 1159
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object p1

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p2

    .line 1170
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    .line 1175
    .line 1176
    return v2

    .line 1177
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->getDnsForwarders()[Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object p1

    .line 1184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    return v2

    .line 1191
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1195
    .line 1196
    .line 1197
    move-result p1

    .line 1198
    if-eqz p1, :cond_f

    .line 1199
    .line 1200
    sget-object p1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1201
    .line 1202
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object p1

    .line 1206
    move-object v0, p1

    .line 1207
    check-cast v0, Landroid/net/Network;

    .line 1208
    .line 1209
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object p1

    .line 1213
    invoke-interface {p0, v0, p1}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    .line 1218
    .line 1219
    return v2

    .line 1220
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->listTetheredInterfaces()[Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object p1

    .line 1227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    return v2

    .line 1234
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object p1

    .line 1241
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    .line 1246
    .line 1247
    return v2

    .line 1248
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object p1

    .line 1255
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    .line 1260
    .line 1261
    return v2

    .line 1262
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->isTetheringStarted()Z

    .line 1266
    .line 1267
    .line 1268
    move-result p1

    .line 1269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    .line 1274
    .line 1275
    return v2

    .line 1276
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    .line 1284
    .line 1285
    return v2

    .line 1286
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object p1

    .line 1293
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    .line 1298
    .line 1299
    return v2

    .line 1300
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1304
    .line 1305
    .line 1306
    move-result p1

    .line 1307
    if-eqz p1, :cond_10

    .line 1308
    .line 1309
    move v3, v2

    .line 1310
    :cond_10
    invoke-interface {p0, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    .line 1315
    .line 1316
    return v2

    .line 1317
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    .line 1319
    .line 1320
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->getIpForwardingEnabled()Z

    .line 1321
    .line 1322
    .line 1323
    move-result p1

    .line 1324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    .line 1329
    .line 1330
    return v2

    .line 1331
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->shutdown()V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    .line 1339
    .line 1340
    return v2

    .line 1341
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object p1

    .line 1348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1349
    .line 1350
    .line 1351
    move-result p2

    .line 1352
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    .line 1357
    .line 1358
    return v2

    .line 1359
    :pswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1363
    .line 1364
    .line 1365
    move-result p1

    .line 1366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1367
    .line 1368
    .line 1369
    move-result p4

    .line 1370
    if-eqz p4, :cond_11

    .line 1371
    .line 1372
    sget-object p4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1373
    .line 1374
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    move-result-object p2

    .line 1378
    move-object v0, p2

    .line 1379
    check-cast v0, Landroid/net/RouteInfo;

    .line 1380
    .line 1381
    :cond_11
    invoke-interface {p0, p1, v0}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    .line 1386
    .line 1387
    return v2

    .line 1388
    :pswitch_4b
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
    move-result p4

    .line 1399
    if-eqz p4, :cond_12

    .line 1400
    .line 1401
    sget-object p4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1402
    .line 1403
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object p2

    .line 1407
    move-object v0, p2

    .line 1408
    check-cast v0, Landroid/net/RouteInfo;

    .line 1409
    .line 1410
    :cond_12
    invoke-interface {p0, p1, v0}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    .line 1415
    .line 1416
    return v2

    .line 1417
    :pswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object p1

    .line 1424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1425
    .line 1426
    .line 1427
    move-result p2

    .line 1428
    if-eqz p2, :cond_13

    .line 1429
    .line 1430
    move v3, v2

    .line 1431
    :cond_13
    invoke-interface {p0, p1, v3}, Landroid/os/INetworkManagementService;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    .line 1436
    .line 1437
    return v2

    .line 1438
    :pswitch_4d
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1446
    .line 1447
    .line 1448
    move-result p2

    .line 1449
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    .line 1454
    .line 1455
    return v2

    .line 1456
    :pswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object p1

    .line 1463
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    .line 1468
    .line 1469
    return v2

    .line 1470
    :pswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object p1

    .line 1477
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    .line 1482
    .line 1483
    return v2

    .line 1484
    :pswitch_50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1488
    .line 1489
    .line 1490
    move-result-object p1

    .line 1491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1492
    .line 1493
    .line 1494
    move-result p2

    .line 1495
    if-eqz p2, :cond_14

    .line 1496
    .line 1497
    move v3, v2

    .line 1498
    :cond_14
    invoke-interface {p0, p1, v3}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    .line 1503
    .line 1504
    return v2

    .line 1505
    :pswitch_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1509
    .line 1510
    .line 1511
    move-result-object p1

    .line 1512
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1516
    .line 1517
    .line 1518
    return v2

    .line 1519
    :pswitch_52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object p1

    .line 1526
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    .line 1531
    .line 1532
    return v2

    .line 1533
    :pswitch_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1537
    .line 1538
    .line 1539
    move-result-object p1

    .line 1540
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    .line 1545
    .line 1546
    return v2

    .line 1547
    :pswitch_54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object p1

    .line 1554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1555
    .line 1556
    .line 1557
    move-result p4

    .line 1558
    if-eqz p4, :cond_15

    .line 1559
    .line 1560
    sget-object p4, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1561
    .line 1562
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object p2

    .line 1566
    move-object v0, p2

    .line 1567
    check-cast v0, Landroid/net/InterfaceConfiguration;

    .line 1568
    .line 1569
    :cond_15
    invoke-interface {p0, p1, v0}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    .line 1574
    .line 1575
    return v2

    .line 1576
    :pswitch_55
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1580
    .line 1581
    .line 1582
    move-result-object p1

    .line 1583
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    .line 1584
    .line 1585
    .line 1586
    move-result-object p1

    .line 1587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    .line 1589
    .line 1590
    if-eqz p1, :cond_16

    .line 1591
    .line 1592
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {p1, p3, v2}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1596
    .line 1597
    .line 1598
    goto :goto_6

    .line 1599
    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    .line 1601
    .line 1602
    :goto_6
    return v2

    .line 1603
    :pswitch_56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    .line 1605
    .line 1606
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    .line 1607
    .line 1608
    .line 1609
    move-result-object p1

    .line 1610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    .line 1612
    .line 1613
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    return v2

    .line 1617
    :pswitch_57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->getNetdService()Landroid/net/INetd;

    .line 1621
    .line 1622
    .line 1623
    move-result-object p1

    .line 1624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    .line 1626
    .line 1627
    if-eqz p1, :cond_17

    .line 1628
    .line 1629
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v0

    .line 1633
    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1634
    .line 1635
    .line 1636
    return v2

    .line 1637
    :pswitch_58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1641
    .line 1642
    .line 1643
    move-result-object p1

    .line 1644
    invoke-static {p1}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    .line 1645
    .line 1646
    .line 1647
    move-result-object p1

    .line 1648
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1649
    .line 1650
    .line 1651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    .line 1653
    .line 1654
    return v2

    .line 1655
    :pswitch_59
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1659
    .line 1660
    .line 1661
    move-result-object p1

    .line 1662
    invoke-static {p1}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    .line 1663
    .line 1664
    .line 1665
    move-result-object p1

    .line 1666
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1667
    .line 1668
    .line 1669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    .line 1671
    .line 1672
    return v2

    .line 1673
    :cond_18
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    return v2

    .line 1677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_59
        :pswitch_58
        :pswitch_57
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
