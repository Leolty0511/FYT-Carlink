.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/NativeLibraryHelper$Handle;
    }
.end annotation


# static fields
.field private static final BITCODE_PRESENT:I = 0x1

.field public static final CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final CUCC_SDK_DEFUALT_LIB:Ljava/lang/String; = "892AD81765F8ACF222111EB45C9E574D"

.field private static final DEBUG_NATIVE:Z = false

.field private static final HAS_NATIVE_BRIDGE:Z

.field public static final LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final OEM_LIB_DIR:Ljava/lang/String; = "/system/etc/oem/"

.field private static final PRC_COMPATIBILITY:Z

.field private static final TAG:Ljava/lang/String; = "NativeHelper"

.field private static final USER_LIB_DIR:Ljava/lang/String; = "/data/userinfo/"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.sys.prc_compatibility"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/internal/content/NativeLibraryHelper;->PRC_COMPATIBILITY:Z

    .line 9
    .line 10
    const-string v0, "ro.dalvik.vm.native.bridge"

    .line 11
    .line 12
    const-string v1, "0"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    xor-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    sput-boolean v0, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$100(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    return-void
.end method

.method public static copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x1

    .line 6
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-wide v4, v0, v2

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    iget-boolean v8, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    .line 15
    .line 16
    sget-boolean v9, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    .line 17
    .line 18
    iget-boolean v10, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 19
    .line 20
    move-object v7, p2

    .line 21
    invoke-static/range {v4 .. v10}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eq v4, v3, :cond_0

    .line 26
    .line 27
    return v4

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v3
.end method

.method public static copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    aget-object v1, p2, v0

    .line 11
    .line 12
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    new-instance p3, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {p3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    move-object p1, p3

    .line 27
    :cond_0
    aget-object p2, p2, v0

    .line 28
    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/4 p1, 0x1

    .line 34
    if-eq p0, p1, :cond_1

    .line 35
    .line 36
    return p0

    .line 37
    :cond_1
    return v0
.end method

.method public static copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 8

    .line 1
    const-string v0, "NativeHelper"

    .line 2
    .line 3
    const-string v1, "Failure copying 64 bit native libraries; copyRet="

    .line 4
    .line 5
    const-string v2, "Failure copying native libraries [errorCode="

    .line 6
    .line 7
    const-string v3, "Failure copying 32 bit native libraries; copyRet="

    .line 8
    .line 9
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    const-string v5, "-"

    .line 12
    .line 13
    const/16 v6, -0x72

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    const-string p2, "Ignoring abiOverride for multi arch application."

    .line 27
    .line 28
    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 32
    .line 33
    array-length v2, p2

    .line 34
    const/16 v4, -0x71

    .line 35
    .line 36
    if-lez v2, :cond_1

    .line 37
    .line 38
    invoke-static {p0, p1, p2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-gez p2, :cond_1

    .line 43
    .line 44
    if-eq p2, v6, :cond_1

    .line 45
    .line 46
    if-eq p2, v4, :cond_1

    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return p2

    .line 64
    :cond_1
    sget-object p2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 65
    .line 66
    array-length v2, p2

    .line 67
    if-lez v2, :cond_7

    .line 68
    .line 69
    invoke-static {p0, p1, p2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-gez p0, :cond_7

    .line 74
    .line 75
    if-eq p0, v6, :cond_7

    .line 76
    .line 77
    if-eq p0, v4, :cond_7

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return p0

    .line 95
    :cond_2
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/4 v3, 0x0

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    if-eqz p2, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    :goto_0
    move-object p2, v3

    .line 107
    :goto_1
    if-eqz p2, :cond_5

    .line 108
    .line 109
    new-array v1, v7, [Ljava/lang/String;

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    aput-object p2, v1, v3

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 116
    .line 117
    :goto_2
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 118
    .line 119
    array-length v3, v3

    .line 120
    if-lez v3, :cond_6

    .line 121
    .line 122
    if-nez p2, :cond_6

    .line 123
    .line 124
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_6

    .line 129
    .line 130
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 131
    .line 132
    :cond_6
    invoke-static {p0, p1, v1, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-gez p0, :cond_7

    .line 137
    .line 138
    if-eq p0, v6, :cond_7

    .line 139
    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p2, "]"

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .line 159
    .line 160
    return p0

    .line 161
    :cond_7
    return v7

    .line 162
    :catch_0
    move-exception p0

    .line 163
    const-string p1, "Copying native libraries failed"

    .line 164
    .line 165
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .line 167
    .line 168
    const/16 p0, -0x6e

    .line 169
    .line 170
    return p0
.end method

.method private static createNativeLibrarySubdir(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Landroid/system/OsConstants;->S_IRWXU:I

    .line 21
    .line 22
    sget v2, Landroid/system/OsConstants;->S_IRGRP:I

    .line 23
    .line 24
    or-int/2addr v1, v2

    .line 25
    sget v2, Landroid/system/OsConstants;->S_IXGRP:I

    .line 26
    .line 27
    or-int/2addr v1, v2

    .line 28
    sget v2, Landroid/system/OsConstants;->S_IROTH:I

    .line 29
    .line 30
    or-int/2addr v1, v2

    .line 31
    sget v2, Landroid/system/OsConstants;->S_IXOTH:I

    .line 32
    .line 33
    or-int/2addr v1, v2

    .line 34
    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/io/IOException;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "Cannot chmod native library directory "

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "Cannot create "

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_1
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "Cannot set SELinux context for "

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public static findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, -0x72

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_6

    .line 9
    .line 10
    aget-wide v5, v0, v3

    .line 11
    .line 12
    sget-boolean v7, Lcom/android/internal/content/NativeLibraryHelper;->PRC_COMPATIBILITY:Z

    .line 13
    .line 14
    if-eqz v7, :cond_0

    .line 15
    .line 16
    iget-boolean v8, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 17
    .line 18
    iget-object v9, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->pkgName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v10, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkDir:Ljava/lang/String;

    .line 21
    .line 22
    move-object v7, p1

    .line 23
    invoke-static/range {v5 .. v10}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbiReplace(J[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-boolean v7, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 29
    .line 30
    invoke-static {v5, v6, p1, v7}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;Z)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    :goto_1
    if-ne v5, v2, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    const/16 v6, -0x71

    .line 38
    .line 39
    if-ne v5, v6, :cond_2

    .line 40
    .line 41
    if-gez v4, :cond_4

    .line 42
    .line 43
    move v4, v6

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    if-ltz v5, :cond_5

    .line 46
    .line 47
    if-ltz v4, :cond_3

    .line 48
    .line 49
    if-ge v5, v4, :cond_4

    .line 50
    .line 51
    :cond_3
    move v4, v5

    .line 52
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    return v5

    .line 56
    :cond_6
    return v4
.end method

.method public static getLibraryMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Get library Md5 failed"

    .line 2
    .line 3
    const-string v1, "NativeHelper"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "MD5"

    .line 7
    .line 8
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    new-instance v4, Ljava/security/DigestInputStream;

    .line 13
    .line 14
    new-instance v5, Ljava/io/FileInputStream;

    .line 15
    .line 16
    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :goto_0
    const/16 p0, 0x400

    .line 23
    .line 24
    :try_start_1
    new-array p0, p0, [B

    .line 25
    .line 26
    invoke-virtual {v4, p0}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v3, -0x1

    .line 31
    if-eq p0, v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 47
    .line 48
    .line 49
    goto :goto_4

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :catch_1
    move-exception p0

    .line 53
    goto :goto_3

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_5

    .line 56
    :catch_2
    move-exception p0

    .line 57
    move-object v4, v2

    .line 58
    :goto_2
    :try_start_3
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_3
    move-exception p0

    .line 65
    move-object v4, v2

    .line 66
    :goto_3
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_4
    :cond_1
    :goto_4
    return-object v2

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    move-object v2, v4

    .line 75
    :goto_5
    if-eqz v2, :cond_2

    .line 76
    .line 77
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 78
    .line 79
    .line 80
    :catch_5
    :cond_2
    throw p0
.end method

.method private static native hasRenderscriptBitcode(J)I
.end method

.method public static hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p0, v2

    .line 2
    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Error scanning APK, code: "

    .line 4
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v1
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I
.end method

.method private static native nativeFindSupportedAbi(J[Ljava/lang/String;Z)I
.end method

.method private static native nativeFindSupportedAbiReplace(J[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native nativeReplaceUnityLibraries(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeSumNativeBinaries(JLjava/lang/String;Z)J
.end method

.method private static pickLatestCuccLib(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    move-wide v5, v1

    .line 19
    :goto_0
    array-length v7, p0

    .line 20
    if-ge v4, v7, :cond_3

    .line 21
    .line 22
    aget-object v7, p0, v4

    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-eqz v8, :cond_2

    .line 29
    .line 30
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const-string v9, "cucc_"

    .line 35
    .line 36
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_2

    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    cmp-long v9, v5, v1

    .line 47
    .line 48
    if-eqz v9, :cond_1

    .line 49
    .line 50
    cmp-long v9, v7, v5

    .line 51
    .line 52
    if-lez v9, :cond_2

    .line 53
    .line 54
    :cond_1
    move v3, v4

    .line 55
    move-wide v5, v7

    .line 56
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    if-ltz v3, :cond_4

    .line 60
    .line 61
    aget-object p0, p0, v3

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_4
    return-object v0
.end method

.method public static removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "NativeHelper"

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    array-length v3, v0

    .line 17
    if-ge v2, v3, :cond_2

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    aget-object v3, v0, v2

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    aget-object v3, v0, v2

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v4, "Could not delete native binary: "

    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    aget-object v4, v0, v2

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, "Could not delete native binary directory: "

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method public static removeNativeBinariesLI(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    return-void
.end method

.method public static replaceCmccLibraries(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    const-string v1, "libdexmmb.so"

    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->getLibraryMd5(Ljava/io/File;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_b

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-gtz v1, :cond_2

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "replaceCmccLibraries for package:"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, " md5sum:"

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v3, "NativeHelper"

    .line 67
    .line 68
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    new-instance v1, Ljava/io/File;

    .line 72
    .line 73
    const-string v4, "/system/etc/oem/"

    .line 74
    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Ljava/io/File;

    .line 83
    .line 84
    const-string v5, "/data/userinfo/"

    .line 85
    .line 86
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    const-string v7, "cmcc_"

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    new-instance v1, Ljava/io/File;

    .line 119
    .line 120
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    move v6, v8

    .line 128
    move v9, v6

    .line 129
    :goto_0
    array-length v10, v1

    .line 130
    if-ge v6, v10, :cond_7

    .line 131
    .line 132
    aget-object v10, v1, v6

    .line 133
    .line 134
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_6

    .line 143
    .line 144
    if-nez v9, :cond_5

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 147
    .line 148
    .line 149
    const/4 v9, 0x1

    .line 150
    :cond_5
    new-instance v11, Ljava/io/File;

    .line 151
    .line 152
    const-string v12, "/"

    .line 153
    .line 154
    invoke-static {v5, v0, v12}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    const/4 v13, 0x5

    .line 159
    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    aget-object v10, v1, v6

    .line 174
    .line 175
    invoke-static {v10, v11}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 176
    .line 177
    .line 178
    aget-object v10, v1, v6

    .line 179
    .line 180
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 181
    .line 182
    .line 183
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_7
    if-nez v9, :cond_8

    .line 187
    .line 188
    return-void

    .line 189
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p0, " new cmcc SDK version found"

    .line 198
    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    :goto_1
    array-length v0, p0

    .line 214
    if-ge v8, v0, :cond_b

    .line 215
    .line 216
    aget-object v0, p0, v8

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, Ljava/io/File;

    .line 223
    .line 224
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_9

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 234
    .line 235
    .line 236
    :cond_9
    new-instance v2, Ljava/io/File;

    .line 237
    .line 238
    invoke-static {v7, v0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_a

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 252
    .line 253
    .line 254
    :cond_a
    aget-object v0, p0, v8

    .line 255
    .line 256
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/16 v1, 0x1ed

    .line 264
    .line 265
    const/4 v2, -0x1

    .line 266
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 267
    .line 268
    .line 269
    add-int/lit8 v8, v8, 0x1

    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_b
    :goto_2
    return-void
.end method

.method public static replaceCuccLibraries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    new-instance p2, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    new-instance p2, Ljava/io/File;

    .line 17
    .line 18
    const-string v0, "libme_unipay.so"

    .line 19
    .line 20
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {p2}, Lcom/android/internal/content/NativeLibraryHelper;->getLibraryMd5(Ljava/io/File;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_e

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-gtz v1, :cond_2

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "replaceCuccLibraries for package:"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, " md5sum:"

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v3, "NativeHelper"

    .line 67
    .line 68
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const-string v1, "34879A522CB15521626579DE332BCD3E"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const-string v4, "892AD81765F8ACF222111EB45C9E574D"

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    const-string v1, "DD72D9B6F67D8B29B479442F35D29646"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    const-string v1, "D611BA50B0DCBAF6FC007CCF1A93875C"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    :cond_3
    move-object v0, v4

    .line 98
    :cond_4
    new-instance v1, Ljava/io/File;

    .line 99
    .line 100
    const-string v5, "/system/etc/oem/"

    .line 101
    .line 102
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v6, Ljava/io/File;

    .line 110
    .line 111
    const-string v7, "/data/userinfo/cucc_"

    .line 112
    .line 113
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v8, Ljava/io/File;

    .line 121
    .line 122
    const-string v9, "libme_unipay.so.x86.tmp"

    .line 123
    .line 124
    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    const/16 v9, 0x1ed

    .line 132
    .line 133
    const/4 v10, -0x1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    :goto_0
    move-object v4, v0

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const-string v11, "/data/userinfo/"

    .line 150
    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p0, " new CUCC SDK version found"

    .line 162
    .line 163
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    invoke-static {v8, v6}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_7

    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    invoke-virtual {v6, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {p0, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 191
    .line 192
    .line 193
    invoke-static {v11}, Lcom/android/internal/content/NativeLibraryHelper;->trimCuccLibs(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_1
    move-object v4, v0

    .line 197
    move-object v5, v7

    .line 198
    goto :goto_2

    .line 199
    :cond_7
    const/4 v5, 0x0

    .line 200
    goto :goto_0

    .line 201
    :cond_8
    invoke-static {v11}, Lcom/android/internal/content/NativeLibraryHelper;->pickLatestCuccLib(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    if-eqz p0, :cond_9

    .line 206
    .line 207
    move-object v4, p0

    .line 208
    move-object v5, v11

    .line 209
    :cond_9
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_a

    .line 214
    .line 215
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 216
    .line 217
    .line 218
    :cond_a
    if-nez v5, :cond_b

    .line 219
    .line 220
    return-void

    .line 221
    :cond_b
    new-instance p0, Ljava/io/File;

    .line 222
    .line 223
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Ljava/io/File;

    .line 231
    .line 232
    const-string v1, "libme_unipay.so.orig"

    .line 233
    .line 234
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-nez p1, :cond_c

    .line 242
    .line 243
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_c
    invoke-static {p0, p2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-eqz p0, :cond_d

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 254
    .line 255
    .line 256
    :cond_d
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-static {p0, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 261
    .line 262
    .line 263
    :cond_e
    :goto_3
    return-void
.end method

.method public static replaceUnityLibraries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_13

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    const-string v1, "/system/app/Phonesky"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_13

    .line 28
    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    const-string v1, "/system/priv-app/Phonesky"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_13

    .line 41
    .line 42
    new-instance v0, Ljava/io/File;

    .line 43
    .line 44
    const-string v1, "/data/app/com.android.vending"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_13

    .line 54
    .line 55
    new-instance v0, Ljava/io/File;

    .line 56
    .line 57
    const-string v1, "/data/app/com.android.vending-1"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_13

    .line 67
    .line 68
    new-instance v0, Ljava/io/File;

    .line 69
    .line 70
    const-string v1, "/data/app/com.android.vending-2"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 84
    .line 85
    const-string v1, "libunity.so"

    .line 86
    .line 87
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/io/File;

    .line 91
    .line 92
    const-string v2, "libmono.so"

    .line 93
    .line 94
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Ljava/io/File;

    .line 98
    .line 99
    const-string v3, "libmain.so"

    .line 100
    .line 101
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_13

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_13

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_2

    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_2
    const-string v3, "arm64-v8a"

    .line 125
    .line 126
    invoke-virtual {p2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_3

    .line 131
    .line 132
    new-instance p2, Ljava/lang/String;

    .line 133
    .line 134
    const-string v3, "/vendor/lib64/"

    .line 135
    .line 136
    invoke-direct {p2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    new-instance p2, Ljava/lang/String;

    .line 141
    .line 142
    const-string v3, "/vendor/lib/"

    .line 143
    .line 144
    invoke-direct {p2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 148
    .line 149
    const-string v4, ".u.check.list"

    .line 150
    .line 151
    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    if-eqz p0, :cond_8

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-lez v4, :cond_8

    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_8

    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_8

    .line 177
    .line 178
    const/4 v4, 0x0

    .line 179
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 180
    .line 181
    new-instance v6, Ljava/io/FileReader;

    .line 182
    .line 183
    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    .line 188
    .line 189
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    if-eqz v3, :cond_5

    .line 194
    .line 195
    invoke-virtual {v3, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    if-eqz v4, :cond_4

    .line 200
    .line 201
    :cond_5
    if-nez v3, :cond_6

    .line 202
    .line 203
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    .line 205
    .line 206
    :catch_0
    return-void

    .line 207
    :cond_6
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :catchall_0
    move-exception p0

    .line 212
    move-object v4, v5

    .line 213
    goto :goto_1

    .line 214
    :catch_1
    move-object v4, v5

    .line 215
    goto :goto_2

    .line 216
    :catchall_1
    move-exception p0

    .line 217
    :goto_1
    if-eqz v4, :cond_7

    .line 218
    .line 219
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 220
    .line 221
    .line 222
    :catch_2
    :cond_7
    throw p0

    .line 223
    :catch_3
    :goto_2
    if-eqz v4, :cond_8

    .line 224
    .line 225
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 226
    .line 227
    .line 228
    :catch_4
    :cond_8
    :goto_3
    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->getLibraryMd5(Ljava/io/File;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    if-eqz p0, :cond_13

    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-gtz v3, :cond_9

    .line 239
    .line 240
    goto/16 :goto_6

    .line 241
    .line 242
    :cond_9
    new-instance v3, Ljava/io/File;

    .line 243
    .line 244
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-nez p0, :cond_a

    .line 256
    .line 257
    return-void

    .line 258
    :cond_a
    invoke-static {v1}, Lcom/android/internal/content/NativeLibraryHelper;->getLibraryMd5(Ljava/io/File;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    if-eqz p0, :cond_13

    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-gtz v4, :cond_b

    .line 269
    .line 270
    goto/16 :goto_6

    .line 271
    .line 272
    :cond_b
    new-instance v4, Ljava/io/File;

    .line 273
    .line 274
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    if-nez p0, :cond_c

    .line 286
    .line 287
    return-void

    .line 288
    :cond_c
    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper;->getLibraryMd5(Ljava/io/File;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    if-eqz p0, :cond_13

    .line 293
    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-gtz v5, :cond_d

    .line 299
    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :cond_d
    new-instance v5, Ljava/io/File;

    .line 303
    .line 304
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    if-nez p0, :cond_e

    .line 316
    .line 317
    return-void

    .line 318
    :cond_e
    new-instance p0, Ljava/io/File;

    .line 319
    .line 320
    const-string p2, "libunity.so.orig"

    .line 321
    .line 322
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    new-instance p2, Ljava/io/File;

    .line 326
    .line 327
    const-string v6, "libmono.so.orig"

    .line 328
    .line 329
    invoke-direct {p2, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    new-instance v6, Ljava/io/File;

    .line 333
    .line 334
    const-string v7, "libmain.so.orig"

    .line 335
    .line 336
    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-eqz p1, :cond_12

    .line 344
    .line 345
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_12

    .line 350
    .line 351
    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-nez p1, :cond_f

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {p1, v3}, Lcom/android/internal/content/NativeLibraryHelper;->nativeReplaceUnityLibraries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-eqz p1, :cond_11

    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    invoke-static {p1, v3}, Lcom/android/internal/content/NativeLibraryHelper;->nativeReplaceUnityLibraries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-eqz p1, :cond_11

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-static {p1, v3}, Lcom/android/internal/content/NativeLibraryHelper;->nativeReplaceUnityLibraries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    if-nez p1, :cond_10

    .line 399
    .line 400
    goto :goto_4

    .line 401
    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 402
    .line 403
    .line 404
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 405
    .line 406
    .line 407
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :cond_11
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 424
    .line 425
    .line 426
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    :cond_12
    :goto_5
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 431
    .line 432
    .line 433
    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 434
    .line 435
    .line 436
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 437
    .line 438
    .line 439
    :cond_13
    :goto_6
    return-void
.end method

.method private static sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    if-ge v4, v1, :cond_0

    .line 8
    .line 9
    aget-wide v5, v0, v4

    .line 10
    .line 11
    iget-boolean v7, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 12
    .line 13
    invoke-static {v5, v6, p1, v7}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;Z)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    add-long/2addr v2, v5

    .line 18
    add-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-wide v2
.end method

.method private static sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    aget-object p1, p1, v0

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0

    .line 14
    :cond_0
    const-wide/16 p0, 0x0

    .line 15
    .line 16
    return-wide p0
.end method

.method public static sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    .line 2
    .line 3
    const-string v1, "-"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "NativeHelper"

    .line 18
    .line 19
    const-string v0, "Ignoring abiOverride for multi arch application."

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 25
    .line 26
    array-length v0, p1

    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    add-long/2addr v2, v0

    .line 34
    :cond_1
    sget-object p1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 35
    .line 36
    array-length v0, p1

    .line 37
    if-lez v0, :cond_7

    .line 38
    .line 39
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide p0

    .line 43
    :goto_0
    add-long/2addr v2, p0

    .line 44
    goto :goto_4

    .line 45
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    if-eqz p1, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    :goto_1
    move-object p1, v1

    .line 57
    :goto_2
    if-eqz p1, :cond_5

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    aput-object p1, v0, v1

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 67
    .line 68
    :goto_3
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 69
    .line 70
    array-length v1, v1

    .line 71
    if-lez v1, :cond_6

    .line 72
    .line 73
    if-nez p1, :cond_6

    .line 74
    .line 75
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 82
    .line 83
    :cond_6
    invoke-static {p0, v0}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide p0

    .line 87
    goto :goto_0

    .line 88
    :cond_7
    :goto_4
    return-wide v2
.end method

.method private static trimCuccLibs(Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    move-wide v5, v1

    .line 18
    move v4, v3

    .line 19
    move v3, v0

    .line 20
    :goto_0
    array-length v7, p0

    .line 21
    if-ge v0, v7, :cond_3

    .line 22
    .line 23
    aget-object v7, p0, v0

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_2

    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const-string v9, "cucc_"

    .line 36
    .line 37
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_2

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    cmp-long v9, v5, v1

    .line 50
    .line 51
    if-eqz v9, :cond_1

    .line 52
    .line 53
    cmp-long v9, v7, v5

    .line 54
    .line 55
    if-gez v9, :cond_2

    .line 56
    .line 57
    :cond_1
    move v4, v0

    .line 58
    move-wide v5, v7

    .line 59
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/16 v0, 0xa

    .line 63
    .line 64
    if-le v3, v0, :cond_4

    .line 65
    .line 66
    aget-object p0, p0, v4

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void
.end method
