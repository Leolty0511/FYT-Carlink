.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field public static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_GFX_DRIVER:Ljava/lang/String; = "ro.gfx.driver.0"

.field private static final PROPERTY_RUNNING_IN_CONTAINER:Ljava/lang/String; = "ro.boot.container"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static mResources:Landroid/content/res/Resources;

.field private static sPreloadComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beginIcuCachePinning()V
    .locals 5

    .line 1
    const-string v0, "Zygote"

    .line 2
    .line 3
    const-string v1, "Installing ICU cache reference pinning..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "Preloading ICU data..."

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    new-array v1, v0, [Landroid/icu/util/ULocale;

    .line 20
    .line 21
    invoke-static {}, Landroidx/emoji2/text/e;->x()Landroid/icu/util/ULocale;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-static {}, Landroidx/emoji2/text/e;->C()Landroid/icu/util/ULocale;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    aput-object v4, v1, v2

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-static {}, Landroidx/emoji2/text/e;->c()Landroid/icu/util/ULocale;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    aput-object v4, v1, v2

    .line 41
    .line 42
    :goto_0
    if-ge v3, v0, :cond_0

    .line 43
    .line 44
    aget-object v2, v1, v3

    .line 45
    .line 46
    invoke-static {}, Landroidx/emoji2/text/e;->p()V

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Landroidx/emoji2/text/e;->r(Landroid/icu/util/ULocale;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public static createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .locals 8

    .line 1
    const-string v0, "java.library.path"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, v3

    .line 15
    move v5, p1

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static encodeSystemServerClassPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ":"

    .line 11
    .line 12
    invoke-static {p0, v0, p1}, Landroid/app/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static endIcuCachePinning()V
    .locals 2

    .line 1
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Zygote"

    .line 7
    .line 8
    const-string v1, "Uninstalled ICU cache reference pinning..."

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 19

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    sget v1, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput v1, v0, v2

    .line 9
    .line 10
    sget v1, Landroid/system/OsConstants;->CAP_KILL:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aput v1, v0, v3

    .line 14
    .line 15
    sget v1, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    aput v1, v0, v4

    .line 19
    .line 20
    sget v1, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    aput v1, v0, v5

    .line 24
    .line 25
    sget v1, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    aput v1, v0, v6

    .line 29
    .line 30
    sget v1, Landroid/system/OsConstants;->CAP_NET_RAW:I

    .line 31
    .line 32
    const/4 v7, 0x5

    .line 33
    aput v1, v0, v7

    .line 34
    .line 35
    sget v1, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    .line 36
    .line 37
    const/4 v8, 0x6

    .line 38
    aput v1, v0, v8

    .line 39
    .line 40
    sget v1, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    .line 41
    .line 42
    const/4 v9, 0x7

    .line 43
    aput v1, v0, v9

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget v10, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    .line 48
    .line 49
    aput v10, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget v10, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    .line 54
    .line 55
    aput v10, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget v10, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    .line 60
    .line 61
    aput v10, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget v10, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    .line 66
    .line 67
    aput v10, v0, v1

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    const-string v10, "ro.boot.container"

    .line 74
    .line 75
    invoke-static {v10, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-nez v10, :cond_0

    .line 80
    .line 81
    new-array v10, v3, [I

    .line 82
    .line 83
    sget v11, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    .line 84
    .line 85
    aput v11, v10, v2

    .line 86
    .line 87
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v10

    .line 91
    or-long/2addr v0, v10

    .line 92
    :cond_0
    new-array v9, v9, [Ljava/lang/String;

    .line 93
    .line 94
    const-string v10, "--setuid=1000"

    .line 95
    .line 96
    aput-object v10, v9, v2

    .line 97
    .line 98
    const-string v2, "--setgid=1000"

    .line 99
    .line 100
    aput-object v2, v9, v3

    .line 101
    .line 102
    const-string v2, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1032,3001,3002,3003,3006,3007,3009,3010"

    .line 103
    .line 104
    aput-object v2, v9, v4

    .line 105
    .line 106
    const-string v2, "--capabilities="

    .line 107
    .line 108
    const-string v3, ","

    .line 109
    .line 110
    invoke-static {v2, v0, v1, v3}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    aput-object v0, v9, v5

    .line 122
    .line 123
    const-string v0, "--nice-name=system_server"

    .line 124
    .line 125
    aput-object v0, v9, v6

    .line 126
    .line 127
    const-string v0, "--runtime-args"

    .line 128
    .line 129
    aput-object v0, v9, v7

    .line 130
    .line 131
    const-string v0, "com.android.server.SystemServer"

    .line 132
    .line 133
    aput-object v0, v9, v8

    .line 134
    .line 135
    :try_start_0
    new-instance v0, Lcom/android/internal/os/ZygoteConnection$Arguments;

    .line 136
    .line 137
    invoke-direct {v0, v9}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 144
    .line 145
    .line 146
    iget v10, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 147
    .line 148
    iget v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 149
    .line 150
    iget-object v12, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 151
    .line 152
    iget v13, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 153
    .line 154
    const/4 v14, 0x0

    .line 155
    iget-wide v1, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 156
    .line 157
    iget-wide v3, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 158
    .line 159
    move-wide v15, v1

    .line 160
    move-wide/from16 v17, v3

    .line 161
    .line 162
    invoke-static/range {v10 .. v18}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    .line 163
    .line 164
    .line 165
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    if-nez v1, :cond_2

    .line 167
    .line 168
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_1

    .line 173
    .line 174
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)Ljava/lang/Runnable;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0

    .line 185
    :cond_2
    const/4 v0, 0x0

    .line 186
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/RuntimeException;

    .line 189
    .line 190
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    throw v1
.end method

.method public static gcAndFinalize()V
    .locals 1

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static getSystemServerClassLoaderContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "PCL[]"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "PCL["

    .line 7
    .line 8
    const-string v1, "]"

    .line 9
    .line 10
    invoke-static {v0, p0, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)Ljava/lang/Runnable;
    .locals 11

    .line 1
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    .line 2
    .line 3
    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, "SYSTEMSERVERCLASSPATH"

    .line 17
    .line 18
    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "dalvik.vm.profilesystemserver"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    :cond_1
    :try_start_0
    const-string/jumbo v2, "system_server"

    .line 45
    .line 46
    .line 47
    const/16 v3, 0x3e8

    .line 48
    .line 49
    invoke-static {v3, v2}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Ljava/io/File;

    .line 54
    .line 55
    const-string v4, "primary.prof"

    .line 56
    .line 57
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 68
    .line 69
    .line 70
    const-string v2, ":"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3, v2}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    const-string v3, "Zygote"

    .line 86
    .line 87
    const-string v4, "Failed to set up system server profile"

    .line 88
    .line 89
    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    array-length v3, v2

    .line 101
    const/4 v4, 0x2

    .line 102
    add-int/2addr v3, v4

    .line 103
    new-array v3, v3, [Ljava/lang/String;

    .line 104
    .line 105
    const-string v5, "-cp"

    .line 106
    .line 107
    aput-object v5, v3, v1

    .line 108
    .line 109
    const/4 v5, 0x1

    .line 110
    aput-object v0, v3, v5

    .line 111
    .line 112
    array-length v0, v2

    .line 113
    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    move-object v10, v3

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move-object v10, v2

    .line 119
    :goto_1
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 122
    .line 123
    iget v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 124
    .line 125
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    const/4 v9, 0x0

    .line 130
    invoke-static/range {v5 .. v10}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string v0, "Unexpected return from WrapperInit.execApplication"

    .line 136
    .line 137
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_4
    if-eqz v0, :cond_5

    .line 142
    .line 143
    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 144
    .line 145
    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    const/4 v0, 0x0

    .line 158
    :goto_2
    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v1, p0, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "ro.product.cpu.abilist"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method

.method public static isPreloadComplete()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method public static lazyPreload()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    const-string v0, "Zygote"

    .line 9
    .line 10
    const-string v1, "Lazily preloading resources."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 16
    .line 17
    const-string v1, "ZygoteInitTiming_lazy"

    .line 18
    .line 19
    const-wide/16 v2, 0x4000

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "Zygote"

    .line 2
    .line 3
    new-instance v1, Lcom/android/internal/os/ZygoteServer;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/internal/os/ZygoteServer;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-static {v2, v2}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    const-string v3, "1"

    .line 16
    .line 17
    const-string/jumbo v4, "sys.boot_completed"

    .line 18
    .line 19
    .line 20
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string v3, "boot_zygote_init"

    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    long-to-int v5, v5

    .line 38
    invoke-static {v4, v3, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    const-string v3, "Zygote64Timing"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v3, "Zygote32Timing"

    .line 51
    .line 52
    :goto_0
    new-instance v5, Landroid/util/TimingsTraceLog;

    .line 53
    .line 54
    const-wide/16 v6, 0x4000

    .line 55
    .line 56
    invoke-direct {v5, v3, v6, v7}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    const-string v3, "ZygoteInit"

    .line 60
    .line 61
    invoke-virtual {v5, v3}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 65
    .line 66
    .line 67
    const-string/jumbo v3, "zygote"

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    move v8, v2

    .line 72
    move v9, v8

    .line 73
    move v7, v6

    .line 74
    :goto_1
    array-length v10, p0

    .line 75
    if-ge v7, v10, :cond_6

    .line 76
    .line 77
    const-string/jumbo v10, "start-system-server"

    .line 78
    .line 79
    .line 80
    aget-object v11, p0, v7

    .line 81
    .line 82
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-eqz v10, :cond_2

    .line 87
    .line 88
    move v9, v6

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const-string v10, "--enable-lazy-preload"

    .line 91
    .line 92
    aget-object v11, p0, v7

    .line 93
    .line 94
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_3

    .line 99
    .line 100
    move v8, v6

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    aget-object v10, p0, v7

    .line 103
    .line 104
    const-string v11, "--abi-list="

    .line 105
    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_4

    .line 111
    .line 112
    aget-object v4, p0, v7

    .line 113
    .line 114
    const/16 v10, 0xb

    .line 115
    .line 116
    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    aget-object v3, p0, v7

    .line 122
    .line 123
    const-string v10, "--socket-name="

    .line 124
    .line 125
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    aget-object v3, p0, v7

    .line 132
    .line 133
    const/16 v10, 0xe

    .line 134
    .line 135
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v4, "Unknown command line argument: "

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    aget-object p0, p0, v7

    .line 155
    .line 156
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v2

    .line 167
    :cond_6
    if-eqz v4, :cond_a

    .line 168
    .line 169
    invoke-virtual {v1, v3}, Lcom/android/internal/os/ZygoteServer;->registerServerSocket(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    if-nez v8, :cond_7

    .line 173
    .line 174
    const-string p0, "ZygotePreload"

    .line 175
    .line 176
    invoke-virtual {v5, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v6

    .line 183
    const/16 p0, 0xbcc

    .line 184
    .line 185
    invoke-static {p0, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 186
    .line 187
    .line 188
    invoke-static {v5}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 192
    .line 193
    .line 194
    move-result-wide v6

    .line 195
    const/16 p0, 0xbd6

    .line 196
    .line 197
    invoke-static {p0, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_7
    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    .line 205
    .line 206
    .line 207
    :goto_3
    const-string p0, "PostZygoteInitGC"

    .line 208
    .line 209
    invoke-virtual {v5, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 219
    .line 220
    .line 221
    invoke-static {v2, v2}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnmountStorageOnInit()V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Landroid/os/Seccomp;->setPolicy()V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    .line 231
    .line 232
    .line 233
    if-eqz v9, :cond_8

    .line 234
    .line 235
    invoke-static {v4, v3, v1}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    if-eqz p0, :cond_8

    .line 240
    .line 241
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_8
    :try_start_2
    const-string p0, "Accepting command socket connections"

    .line 249
    .line 250
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v4}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    .line 254
    .line 255
    .line 256
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 258
    .line 259
    .line 260
    if-eqz p0, :cond_9

    .line 261
    .line 262
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 263
    .line 264
    .line 265
    :cond_9
    return-void

    .line 266
    :cond_a
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 267
    .line 268
    const-string v2, "No ABI list supplied."

    .line 269
    .line 270
    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    :catchall_0
    move-exception p0

    .line 275
    :try_start_4
    const-string v2, "System zygote died with exception"

    .line 276
    .line 277
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .line 279
    .line 280
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 281
    :catchall_1
    move-exception p0

    .line 282
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 283
    .line 284
    .line 285
    throw p0

    .line 286
    :catch_0
    move-exception p0

    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    .line 288
    .line 289
    const-string v1, "Failed to setpgid(0,0)"

    .line 290
    .line 291
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    throw v0
.end method

.method private static native nativePreloadAppProcessHALs()V
.end method

.method private static final native nativeZygoteInit()V
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 25

    .line 1
    const-string v1, "Zygote"

    .line 2
    .line 3
    const-string v0, ":"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v0, "installd"

    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    .line 18
    .line 19
    .line 20
    move-result-object v16

    .line 21
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v15

    .line 29
    array-length v14, v2

    .line 30
    const-string v0, ""

    .line 31
    .line 32
    const/4 v13, 0x0

    .line 33
    move-object v12, v0

    .line 34
    move v11, v13

    .line 35
    :goto_0
    if-ge v11, v14, :cond_1

    .line 36
    .line 37
    aget-object v10, v2, v11

    .line 38
    .line 39
    const-string v0, "dalvik.vm.systemservercompilerfilter"

    .line 40
    .line 41
    const-string/jumbo v3, "speed"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    :try_start_0
    invoke-static {v10, v15, v9, v13, v13}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 49
    .line 50
    .line 51
    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    move v8, v0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object v3, v0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v4, "Error checking classpath element for system server: "

    .line 59
    .line 60
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    move v8, v13

    .line 74
    :goto_1
    if-eqz v8, :cond_0

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    sget-object v17, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 78
    .line 79
    const/16 v18, 0x0

    .line 80
    .line 81
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->getSystemServerClassLoaderContext(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v19

    .line 85
    const/16 v5, 0x3e8

    .line 86
    .line 87
    :try_start_1
    const-string v6, "*"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_3

    .line 88
    .line 89
    const/16 v20, 0x0

    .line 90
    .line 91
    const/16 v21, 0x0

    .line 92
    .line 93
    move-object/from16 v3, v16

    .line 94
    .line 95
    move-object v4, v10

    .line 96
    move-object v7, v15

    .line 97
    move-object/from16 v22, v9

    .line 98
    .line 99
    move-object v9, v0

    .line 100
    move-object/from16 v23, v10

    .line 101
    .line 102
    move/from16 v10, v20

    .line 103
    .line 104
    move/from16 v20, v11

    .line 105
    .line 106
    move-object/from16 v11, v22

    .line 107
    .line 108
    move-object/from16 v24, v12

    .line 109
    .line 110
    move-object/from16 v12, v17

    .line 111
    .line 112
    move/from16 v17, v13

    .line 113
    .line 114
    move-object/from16 v13, v19

    .line 115
    .line 116
    move/from16 v19, v14

    .line 117
    .line 118
    move-object/from16 v14, v18

    .line 119
    .line 120
    move-object/from16 v18, v15

    .line 121
    .line 122
    move/from16 v15, v21

    .line 123
    .line 124
    :try_start_2
    invoke-interface/range {v3 .. v15}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    .line 126
    .line 127
    move-object/from16 v4, v23

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :catch_1
    move-exception v0

    .line 131
    goto :goto_3

    .line 132
    :catch_2
    move-exception v0

    .line 133
    goto :goto_3

    .line 134
    :catch_3
    move-exception v0

    .line 135
    goto :goto_2

    .line 136
    :catch_4
    move-exception v0

    .line 137
    :goto_2
    move-object/from16 v23, v10

    .line 138
    .line 139
    move/from16 v20, v11

    .line 140
    .line 141
    move-object/from16 v24, v12

    .line 142
    .line 143
    move/from16 v17, v13

    .line 144
    .line 145
    move/from16 v19, v14

    .line 146
    .line 147
    move-object/from16 v18, v15

    .line 148
    .line 149
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v4, "Failed compiling classpath element for system server: "

    .line 152
    .line 153
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move-object/from16 v4, v23

    .line 157
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .line 167
    .line 168
    :goto_4
    move-object/from16 v3, v24

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_0
    move-object v4, v10

    .line 172
    move/from16 v20, v11

    .line 173
    .line 174
    move/from16 v17, v13

    .line 175
    .line 176
    move/from16 v19, v14

    .line 177
    .line 178
    move-object/from16 v18, v15

    .line 179
    .line 180
    move-object v3, v12

    .line 181
    :goto_5
    invoke-static {v3, v4}, Lcom/android/internal/os/ZygoteInit;->encodeSystemServerClassPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    move-object v12, v0

    .line 186
    goto :goto_6

    .line 187
    :catch_5
    move-object v4, v10

    .line 188
    move/from16 v20, v11

    .line 189
    .line 190
    move-object v3, v12

    .line 191
    move/from16 v17, v13

    .line 192
    .line 193
    move/from16 v19, v14

    .line 194
    .line 195
    move-object/from16 v18, v15

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v5, "Missing classpath element for system server: "

    .line 200
    .line 201
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-object v12, v3

    .line 215
    :goto_6
    add-int/lit8 v11, v20, 0x1

    .line 216
    .line 217
    move/from16 v13, v17

    .line 218
    .line 219
    move-object/from16 v15, v18

    .line 220
    .line 221
    move/from16 v14, v19

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_1
    return-void
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v3, v0, :cond_1

    .line 6
    .line 7
    aget v4, p0, v3

    .line 8
    .line 9
    if-ltz v4, :cond_0

    .line 10
    .line 11
    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    .line 12
    .line 13
    if-gt v4, v5, :cond_0

    .line 14
    .line 15
    const-wide/16 v5, 0x1

    .line 16
    .line 17
    shl-long v4, v5, v4

    .line 18
    .line 19
    or-long/2addr v1, v4

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    return-wide v1
.end method

.method public static preload(Landroid/util/TimingsTraceLog;)V
    .locals 4

    .line 1
    const-string v0, "begin preload"

    .line 2
    .line 3
    const-string v1, "Zygote"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "BeginIcuCachePinning"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginIcuCachePinning()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 17
    .line 18
    .line 19
    const-string v0, "PreloadClasses"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 28
    .line 29
    .line 30
    const-string v0, "PreloadResources"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 39
    .line 40
    .line 41
    const-string p0, "PreloadAppProcessHALs"

    .line 42
    .line 43
    const-wide/16 v2, 0x4000

    .line 44
    .line 45
    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 52
    .line 53
    .line 54
    const-string p0, "PreloadOpenGL"

    .line 55
    .line 56
    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endIcuCachePinning()V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    .line 78
    .line 79
    .line 80
    const-string p0, "end preload"

    .line 81
    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    sput-boolean p0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 87
    .line 88
    return-void
.end method

.method private static preloadClasses()V
    .locals 16

    .line 1
    const-string v1, "Failed to restore root"

    .line 2
    .line 3
    const-string v2, "PreloadDexCaches"

    .line 4
    .line 5
    const-string v3, "Zygote"

    .line 6
    .line 7
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 12
    .line 13
    const-string v0, "/system/etc/preloaded-classes"

    .line 14
    .line 15
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 16
    .line 17
    .line 18
    const-string v0, "Preloading classes..."

    .line 19
    .line 20
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-static {}, Landroid/system/Os;->getuid()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {}, Landroid/system/Os;->getgid()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    const/4 v9, 0x1

    .line 36
    const/4 v10, 0x0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    if-nez v8, :cond_0

    .line 40
    .line 41
    const/16 v0, 0x270f

    .line 42
    .line 43
    :try_start_1
    invoke-static {v10, v0}, Landroid/system/Os;->setregid(II)V

    .line 44
    .line 45
    .line 46
    invoke-static {v10, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    move v8, v9

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    const-string v2, "Failed to drop root"

    .line 55
    .line 56
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_0
    move v8, v10

    .line 61
    :goto_0
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const v0, 0x3f4ccccd    # 0.8f

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 69
    .line 70
    .line 71
    const-wide/16 v12, 0x4000

    .line 72
    .line 73
    :try_start_2
    new-instance v14, Ljava/io/BufferedReader;

    .line 74
    .line 75
    new-instance v0, Ljava/io/InputStreamReader;

    .line 76
    .line 77
    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 78
    .line 79
    .line 80
    const/16 v15, 0x100

    .line 81
    .line 82
    invoke-direct {v14, v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 83
    .line 84
    .line 85
    move v15, v10

    .line 86
    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    const-string v0, "#"

    .line 97
    .line 98
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    const-string v0, ""

    .line 105
    .line 106
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :cond_1
    invoke-static {v12, v13, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    :try_start_3
    invoke-static {v10, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .line 120
    .line 121
    add-int/lit8 v15, v15, 0x1

    .line 122
    .line 123
    move-wide v9, v12

    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    move-object v6, v0

    .line 127
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v7, "Error preloading "

    .line 133
    .line 134
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v7, "."

    .line 141
    .line 142
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    instance-of v0, v6, Ljava/lang/Error;

    .line 153
    .line 154
    if-nez v0, :cond_3

    .line 155
    .line 156
    instance-of v0, v6, Ljava/lang/RuntimeException;

    .line 157
    .line 158
    if-eqz v0, :cond_2

    .line 159
    .line 160
    move-object v0, v6

    .line 161
    check-cast v0, Ljava/lang/RuntimeException;

    .line 162
    .line 163
    throw v0

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 165
    .line 166
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_3
    move-object v0, v6

    .line 171
    check-cast v0, Ljava/lang/Error;

    .line 172
    .line 173
    throw v0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    move-object v9, v0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v12, "Problem preloading "

    .line 182
    .line 183
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v10, ": "

    .line 190
    .line 191
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v9, "Class not found for preloading: "

    .line 211
    .line 212
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    :goto_2
    const-wide/16 v9, 0x4000

    .line 226
    .line 227
    :goto_3
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 228
    .line 229
    .line 230
    :cond_4
    :goto_4
    const/4 v9, 0x1

    .line 231
    const/4 v10, 0x0

    .line 232
    const-wide/16 v12, 0x4000

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v9, "...preloaded "

    .line 242
    .line 243
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v9, " classes in "

    .line 250
    .line 251
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 255
    .line 256
    .line 257
    move-result-wide v9

    .line 258
    sub-long/2addr v9, v6

    .line 259
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v6, "ms."

    .line 263
    .line 264
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    .line 273
    .line 274
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v11}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 278
    .line 279
    .line 280
    const-wide/16 v5, 0x4000

    .line 281
    .line 282
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 286
    .line 287
    .line 288
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 289
    .line 290
    .line 291
    if-eqz v8, :cond_6

    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    :try_start_5
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 295
    .line 296
    .line 297
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_3

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :catch_3
    move-exception v0

    .line 302
    new-instance v2, Ljava/lang/RuntimeException;

    .line 303
    .line 304
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    throw v2

    .line 308
    :catchall_1
    move-exception v0

    .line 309
    goto :goto_6

    .line 310
    :catch_4
    move-exception v0

    .line 311
    :try_start_6
    const-string v6, "Error reading /system/etc/preloaded-classes."

    .line 312
    .line 313
    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 314
    .line 315
    .line 316
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v11}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 320
    .line 321
    .line 322
    const-wide/16 v5, 0x4000

    .line 323
    .line 324
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 328
    .line 329
    .line 330
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 331
    .line 332
    .line 333
    if-eqz v8, :cond_6

    .line 334
    .line 335
    const/4 v2, 0x0

    .line 336
    :try_start_7
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_5

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :catch_5
    move-exception v0

    .line 344
    new-instance v2, Ljava/lang/RuntimeException;

    .line 345
    .line 346
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    throw v2

    .line 350
    :cond_6
    :goto_5
    return-void

    .line 351
    :goto_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v11}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 355
    .line 356
    .line 357
    const-wide/16 v5, 0x4000

    .line 358
    .line 359
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 363
    .line 364
    .line 365
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 366
    .line 367
    .line 368
    if-eqz v8, :cond_7

    .line 369
    .line 370
    const/4 v2, 0x0

    .line 371
    :try_start_8
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 372
    .line 373
    .line 374
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_6

    .line 375
    .line 376
    .line 377
    goto :goto_7

    .line 378
    :catch_6
    move-exception v0

    .line 379
    new-instance v2, Ljava/lang/RuntimeException;

    .line 380
    .line 381
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    .line 383
    .line 384
    throw v2

    .line 385
    :cond_7
    :goto_7
    throw v0

    .line 386
    :catch_7
    const-string v0, "Couldn\'t find /system/etc/preloaded-classes."

    .line 387
    .line 388
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    return-void
.end method

.method private static preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "Unable to find preloaded color resource #0x"

    .line 30
    .line 31
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " ("

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return v0
.end method

.method private static preloadDrawables(Landroid/content/res/TypedArray;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "Unable to find preloaded drawable resource #0x"

    .line 30
    .line 31
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " ("

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return v0
.end method

.method private static preloadOpenGL()V
    .locals 3

    .line 1
    const-string v0, "ro.gfx.driver.0"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ro.zygote.disable_gl_preload"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private static preloadResources()V
    .locals 9

    .line 1
    const-string v0, " resources in "

    .line 2
    .line 3
    const-string v1, "ms."

    .line 4
    .line 5
    const-string v2, "Zygote"

    .line 6
    .line 7
    const-string v3, "...preloaded "

    .line 8
    .line 9
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sput-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/content/res/Resources;->startPreloading()V

    .line 19
    .line 20
    .line 21
    const-string v4, "Preloading resources..."

    .line 22
    .line 23
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 31
    .line 32
    const v7, 0x1070064

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    sub-long/2addr v7, v4

    .line 62
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 80
    .line 81
    const v7, 0x1070063

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    .line 94
    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v7

    .line 110
    sub-long/2addr v7, v4

    .line 111
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 125
    .line 126
    const v4, 0x112006f

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v4

    .line 139
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 140
    .line 141
    const v6, 0x1070065

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    .line 154
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v3, " resource in "

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 169
    .line 170
    .line 171
    move-result-wide v6

    .line 172
    sub-long/2addr v6, v4

    .line 173
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_0
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "Failure preloading resources"

    .line 194
    .line 195
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .line 197
    .line 198
    :goto_0
    return-void
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    .line 1
    const-string v0, "Zygote"

    .line 2
    .line 3
    const-string v1, "Preloading shared libraries..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "android"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "compiler_rt"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "jnigraphics"

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static preloadTextResources()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "zygote"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "zygote_secondary"

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static warmUpJcaProviders()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "Starting installation of AndroidKeyStoreProvider"

    .line 6
    .line 7
    const-wide/16 v3, 0x4000

    .line 8
    .line 9
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v5, "Installed AndroidKeyStoreProvider in "

    .line 18
    .line 19
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    sub-long/2addr v5, v0

    .line 27
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "ms."

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "Zygote"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    const-string v1, "Starting warm up of JCA providers"

    .line 52
    .line 53
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    array-length v7, v1

    .line 61
    const/4 v8, 0x0

    .line 62
    :goto_0
    if-ge v8, v7, :cond_0

    .line 63
    .line 64
    aget-object v9, v1, v8

    .line 65
    .line 66
    invoke-virtual {v9}, Ljava/security/Provider;->warmUpServiceProvision()V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v7, "Warmed up JCA providers in "

    .line 75
    .line 76
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    sub-long/2addr v7, v5

    .line 84
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static final zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 2
    .line 3
    const-string v2, "ZygoteInit"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
