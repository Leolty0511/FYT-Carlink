.class public Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARP_FILE_PATH:Ljava/lang/String; = "/proc/net/arp"

.field private static final FAILED_TO_FIND_HOST_BSSID:Ljava/lang/String; = "Failed to find host BSSID"

.field private static final FAILED_TO_FIND_HOST_IP:Ljava/lang/String; = "Failed to find host IP"

.field private static final INTERFACE_INDEX:I = 0x5

.field private static final IP_ADDRESS_INDEX:I = 0x0

.field private static final MAC_ADDRESS_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mArpFile:Ljava/io/File;

.field private volatile mHostBssid:Ljava/lang/String;

.field volatile mHostInterface:Ljava/net/NetworkInterface;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field volatile mHostIp:Ljava/net/Inet4Address;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mIsWifiExternal:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WiFiHostInfoLocator"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/AndroidAutoHeadunitLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/google/android/projection/sink/settings/Settings;Landroid/net/wifi/WifiManager;)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, "/proc/net/arp"

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;-><init>(ZLjava/lang/String;Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostInterface:Ljava/net/NetworkInterface;

    .line 4
    iput-boolean p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mIsWifiExternal:Z

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mArpFile:Ljava/io/File;

    .line 6
    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private findHostInfo()V
    .locals 11

    .line 1
    const-string v0, "mHostInterface Mac:"

    .line 2
    .line 3
    const-string v1, "WifiInfo Mac:"

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->findHostInterfaceAndIp()V

    .line 6
    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mIsWifiExternal:Z

    .line 9
    .line 10
    const-string v3, "Failed to find host BSSID"

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostIp:Ljava/net/Inet4Address;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/net/Inet4Address;->getAddress()[B

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ne v1, v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostBssid:Ljava/lang/String;

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->setBssidFromArp()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 56
    :try_start_0
    const-string v4, ""

    .line 57
    .line 58
    iget-object v5, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    .line 60
    const-string v6, "AHU.NET"

    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    :try_start_1
    iget-object v5, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostInterface:Ljava/net/NetworkInterface;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 67
    .line 68
    .line 69
    move-result-object v5
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    const-string v7, "%02x:%02x:%02x:%02x:%02x:%02x"

    .line 71
    .line 72
    const/4 v8, 0x6

    .line 73
    new-array v8, v8, [Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    aget-byte v10, v5, v9

    .line 77
    .line 78
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    aput-object v10, v8, v9

    .line 83
    .line 84
    const/4 v9, 0x1

    .line 85
    aget-byte v10, v5, v9

    .line 86
    .line 87
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    aput-object v10, v8, v9

    .line 92
    .line 93
    const/4 v9, 0x2

    .line 94
    aget-byte v10, v5, v9

    .line 95
    .line 96
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    aput-object v10, v8, v9

    .line 101
    .line 102
    const/4 v9, 0x3

    .line 103
    aget-byte v10, v5, v9

    .line 104
    .line 105
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    aput-object v10, v8, v9

    .line 110
    .line 111
    const/4 v9, 0x4

    .line 112
    aget-byte v10, v5, v9

    .line 113
    .line 114
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    aput-object v10, v8, v9

    .line 119
    .line 120
    const/4 v9, 0x5

    .line 121
    aget-byte v5, v5, v9

    .line 122
    .line 123
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    aput-object v5, v8, v9

    .line 128
    .line 129
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    :catch_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_3
    const-string v0, "02:00:00:00:00:00"

    .line 180
    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    const-string v0, "/sys/class/net/wlan0/address"

    .line 188
    .line 189
    const-string v1, "bengal"

    .line 190
    .line 191
    invoke-direct {p0, v1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->isPlatform(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_4

    .line 196
    .line 197
    const-string v0, "/sys/class/net/wlan2/address"

    .line 198
    .line 199
    :cond_4
    new-instance v1, Ljava/io/FileInputStream;

    .line 200
    .line 201
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    .line 203
    .line 204
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    .line 205
    .line 206
    new-instance v2, Ljava/io/InputStreamReader;

    .line 207
    .line 208
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v2
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    if-nez v2, :cond_5

    .line 225
    .line 226
    move-object v4, v0

    .line 227
    :cond_5
    move-object v2, v1

    .line 228
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    move-object v2, v1

    .line 231
    goto :goto_4

    .line 232
    :catch_1
    move-object v2, v1

    .line 233
    goto :goto_1

    .line 234
    :catch_2
    move-exception v0

    .line 235
    move-object v2, v1

    .line 236
    goto :goto_3

    .line 237
    :cond_6
    :goto_0
    :try_start_5
    iput-object v4, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostBssid:Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 238
    .line 239
    if-eqz v2, :cond_7

    .line 240
    .line 241
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :catch_3
    move-exception v0

    .line 246
    new-instance v1, Ljava/lang/RuntimeException;

    .line 247
    .line 248
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    throw v1

    .line 252
    :catchall_1
    move-exception v0

    .line 253
    goto :goto_4

    .line 254
    :catch_4
    :goto_1
    if-eqz v2, :cond_7

    .line 255
    .line 256
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :catch_5
    move-exception v0

    .line 261
    new-instance v1, Ljava/lang/RuntimeException;

    .line 262
    .line 263
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    throw v1

    .line 267
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostBssid:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :catch_6
    move-exception v0

    .line 274
    :goto_3
    :try_start_8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 275
    .line 276
    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 280
    :goto_4
    if-eqz v2, :cond_8

    .line 281
    .line 282
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :catch_7
    move-exception v0

    .line 287
    new-instance v1, Ljava/lang/RuntimeException;

    .line 288
    .line 289
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    throw v1

    .line 293
    :cond_8
    :goto_5
    throw v0
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    const-class v1, Landroid/os/SystemProperties;

    .line 4
    .line 5
    sget v2, Landroid/os/SystemProperties;->PROP_NAME_MAX:I

    .line 6
    .line 7
    const-string v2, "get"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    new-array v4, v3, [Ljava/lang/Class;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v0, v4, v5

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v0, v4, v6

    .line 17
    .line 18
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-array v2, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p1, v2, v5

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    aput-object p1, v2, v6

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    return-object p1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method private isPlatform(Ljava/lang/String;)Z
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    const-string v0, "ro.board.platform"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "board ========>> "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "HDL"

    .line 26
    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method private readArp(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/LineProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mArpFile:Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/common/io/CharSource;->readLines(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    sget-object p1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "IOException occurred when reading ARP!"

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method private setBssidFromArp()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator$1;

    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator$1;-><init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;)V

    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->readArp(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostBssid:Ljava/lang/String;

    return-void
.end method

.method private setHostBssid([B)V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aget-byte v2, p1, v1

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    aput-object v2, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aget-byte v2, p1, v1

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    aput-object v2, v0, v1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    aget-byte v2, p1, v1

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    aput-object v2, v0, v1

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    aget-byte v2, p1, v1

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    aget-byte v2, p1, v1

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    aput-object v2, v0, v1

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    aget-byte p1, p1, v1

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    aput-object p1, v0, v1

    .line 57
    .line 58
    const-string p1, "%02x:%02x:%02x:%02x:%02x:%02x"

    .line 59
    .line 60
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostBssid:Ljava/lang/String;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public findHostInterfaceAndIp()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "Failed to find host IP"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/net/NetworkInterface;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "wlan"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/net/InetAddress;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    instance-of v5, v4, Ljava/net/Inet4Address;

    .line 55
    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    iput-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostInterface:Ljava/net/NetworkInterface;

    .line 59
    .line 60
    check-cast v4, Ljava/net/Inet4Address;

    .line 61
    .line 62
    iput-object v4, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostIp:Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    sget-object v2, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    const-string v3, "findHostInterfaceAndIp"

    .line 75
    .line 76
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v2
.end method

.method public getHostBssid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostBssid:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->findHostInfo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostBssid:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public getHostIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostIp:Ljava/net/Inet4Address;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->findHostInfo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostIp:Ljava/net/Inet4Address;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
