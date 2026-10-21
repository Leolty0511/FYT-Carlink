.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p0, "/system/bin/app_process64"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "/system/bin/app_process32"

    .line 16
    .line 17
    :goto_0
    const/16 p3, 0x20

    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, " /system/bin --application"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string p0, " \'--nice-name="

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, "\'"

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    const-string p0, " com.android.internal.os.WrapperInit "

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    if-eqz p4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p0, 0x0

    .line 58
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    .line 3
    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v3, 0x1

    .line 11
    aget-object v3, p0, v3

    .line 12
    .line 13
    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    :try_start_0
    new-instance v3, Ljava/io/FileDescriptor;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/io/DataOutputStream;

    .line 28
    .line 29
    new-instance v4, Ljava/io/FileOutputStream;

    .line 30
    .line 31
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    const-string v3, "AndroidRuntime"

    .line 53
    .line 54
    const-string v4, "Could not write pid of wrapped process to Zygote pipe."

    .line 55
    .line 56
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/TimingsTraceLog;

    .line 60
    .line 61
    const-string v3, "WrapperInitTiming"

    .line 62
    .line 63
    const-wide/16 v4, 0x4000

    .line 64
    .line 65
    invoke-direct {v1, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 69
    .line 70
    .line 71
    array-length v1, p0

    .line 72
    const/4 v3, 0x2

    .line 73
    sub-int/2addr v1, v3

    .line 74
    new-array v4, v1, [Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p0, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v4}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private static preserveCapabilities()V
    .locals 13

    .line 1
    const-string v0, "AndroidRuntime"

    .line 2
    .line 3
    new-instance v1, Landroid/system/StructCapUserHeader;

    .line 4
    .line 5
    sget v2, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Landroid/system/StructCapUserHeader;-><init>(II)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 15
    aget-object v4, v2, v3

    .line 16
    .line 17
    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    .line 18
    .line 19
    aget-object v5, v2, v3

    .line 20
    .line 21
    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    if-ne v4, v5, :cond_0

    .line 25
    .line 26
    aget-object v4, v2, v6

    .line 27
    .line 28
    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    .line 29
    .line 30
    aget-object v5, v2, v6

    .line 31
    .line 32
    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    .line 33
    .line 34
    if-eq v4, v5, :cond_1

    .line 35
    .line 36
    :cond_0
    new-instance v4, Landroid/system/StructCapUserData;

    .line 37
    .line 38
    aget-object v5, v2, v3

    .line 39
    .line 40
    iget v5, v5, Landroid/system/StructCapUserData;->effective:I

    .line 41
    .line 42
    aget-object v7, v2, v3

    .line 43
    .line 44
    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    .line 45
    .line 46
    aget-object v8, v2, v3

    .line 47
    .line 48
    iget v8, v8, Landroid/system/StructCapUserData;->permitted:I

    .line 49
    .line 50
    invoke-direct {v4, v5, v7, v8}, Landroid/system/StructCapUserData;-><init>(III)V

    .line 51
    .line 52
    .line 53
    aput-object v4, v2, v3

    .line 54
    .line 55
    new-instance v4, Landroid/system/StructCapUserData;

    .line 56
    .line 57
    aget-object v5, v2, v6

    .line 58
    .line 59
    iget v5, v5, Landroid/system/StructCapUserData;->effective:I

    .line 60
    .line 61
    aget-object v7, v2, v6

    .line 62
    .line 63
    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    .line 64
    .line 65
    aget-object v8, v2, v6

    .line 66
    .line 67
    iget v8, v8, Landroid/system/StructCapUserData;->permitted:I

    .line 68
    .line 69
    invoke-direct {v4, v5, v7, v8}, Landroid/system/StructCapUserData;-><init>(III)V

    .line 70
    .line 71
    .line 72
    aput-object v4, v2, v6

    .line 73
    .line 74
    :try_start_1
    invoke-static {v1, v2}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    const/16 v1, 0x40

    .line 78
    .line 79
    if-ge v3, v1, :cond_3

    .line 80
    .line 81
    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    aget-object v1, v2, v1

    .line 90
    .line 91
    iget v1, v1, Landroid/system/StructCapUserData;->inheritable:I

    .line 92
    .line 93
    and-int/2addr v1, v4

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    :try_start_2
    sget v4, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    .line 97
    .line 98
    sget v1, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    .line 99
    .line 100
    int-to-long v5, v1

    .line 101
    int-to-long v7, v3

    .line 102
    const-wide/16 v9, 0x0

    .line 103
    .line 104
    const-wide/16 v11, 0x0

    .line 105
    .line 106
    invoke-static/range {v4 .. v12}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v5, "RuntimeInit: Failed to raise ambient capability "

    .line 114
    .line 115
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v0, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    return-void

    .line 132
    :catch_1
    move-exception v1

    .line 133
    const-string v2, "RuntimeInit: Failed capset"

    .line 134
    .line 135
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :catch_2
    move-exception v1

    .line 140
    const-string v2, "RuntimeInit: Failed capget"

    .line 141
    .line 142
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method private static wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v2, p1, v0

    .line 9
    .line 10
    const-string v3, "-cp"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aget-object v2, p1, v2

    .line 20
    .line 21
    invoke-static {v2, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 30
    .line 31
    .line 32
    array-length v3, p1

    .line 33
    sub-int/2addr v3, v1

    .line 34
    new-array v3, v3, [Ljava/lang/String;

    .line 35
    .line 36
    array-length v4, p1

    .line 37
    sub-int/2addr v4, v1

    .line 38
    invoke-static {p1, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    move-object p1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativePreApplicationInit()V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1, v2}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
