.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final abiList:Ljava/lang/String;

.field private isEof:Z

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [[I

    .line 14
    .line 15
    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p2, Ljava/io/DataOutputStream;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 18
    .line 19
    new-instance p2, Ljava/io/BufferedReader;

    .line 20
    .line 21
    new-instance v0, Ljava/io/InputStreamReader;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x100

    .line 31
    .line 32
    invoke-direct {p2, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 36
    .line 37
    const/16 p2, 0x3e8

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p1

    .line 53
    const-string p2, "Zygote"

    .line 54
    .line 55
    const-string v0, "Cannot read peer credentials"

    .line 56
    .line 57
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget p0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 12
    .line 13
    and-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lcom/android/internal/os/ZygoteSecurityException;

    .line 19
    .line 20
    const-string p1, "Peer is permitted to specify anexplicit invoke-with wrapper command only for debuggableapplications."

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "wrap."

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x3e8

    .line 7
    .line 8
    if-ne v0, v2, :cond_2

    .line 9
    .line 10
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 26
    .line 27
    if-lt v0, v2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance p0, Lcom/android/internal/os/ZygoteSecurityException;

    .line 31
    .line 32
    const-string p1, "System UID may not launch process with UID < 1000"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 49
    .line 50
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 61
    .line 62
    :cond_4
    return-void
.end method

.method private handleAbiListQuery()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 10
    .line 11
    array-length v2, v0

    .line 12
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "Error writing to command socket"

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v1
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    aget-object v1, p2, v0

    .line 8
    .line 9
    sget v2, Landroid/system/OsConstants;->STDIN_FILENO:I

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget-object v1, p2, v1

    .line 16
    .line 17
    sget v2, Landroid/system/OsConstants;->STDOUT_FILENO:I

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    aget-object v1, p2, v1

    .line 24
    .line 25
    sget v2, Landroid/system/OsConstants;->STDERR_FILENO:I

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 28
    .line 29
    .line 30
    array-length v1, p2

    .line 31
    :goto_0
    if-ge v0, v1, :cond_0

    .line 32
    .line 33
    aget-object v2, p2, v0

    .line 34
    .line 35
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p2

    .line 42
    const-string v0, "Zygote"

    .line 43
    .line 44
    const-string v1, "Error reopening stdio"

    .line 45
    .line 46
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    invoke-static {p2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const-wide/16 v0, 0x40

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    iget-object p2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    .line 66
    .line 67
    sput-object p2, Lcom/android/internal/os/RuntimeInit;->appDataDir:Ljava/lang/String;

    .line 68
    .line 69
    iget p2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 72
    .line 73
    const/4 p3, 0x0

    .line 74
    invoke-static {p2, p1, p3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_2
    iget-object v3, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 80
    .line 81
    iget v4, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 82
    .line 83
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-object v7, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 88
    .line 89
    move-object v6, p3

    .line 90
    invoke-static/range {v2 .. v7}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    const-string p2, "WrapperInit.execApplication unexpectedly returned"

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "Error reading pid from wrapped process, child may have died"

    .line 10
    .line 11
    const-string v5, "Zygote"

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v6, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    array-length v7, v0

    .line 22
    move v8, v6

    .line 23
    :goto_0
    if-ge v8, v7, :cond_1

    .line 24
    .line 25
    aget-object v9, v0, v8

    .line 26
    .line 27
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v8, v8, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-eqz v3, :cond_b

    .line 34
    .line 35
    if-lez v2, :cond_b

    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    :try_start_0
    new-array v0, v8, [Landroid/system/StructPollfd;

    .line 39
    .line 40
    new-instance v9, Landroid/system/StructPollfd;

    .line 41
    .line 42
    invoke-direct {v9}, Landroid/system/StructPollfd;-><init>()V

    .line 43
    .line 44
    .line 45
    aput-object v9, v0, v6

    .line 46
    .line 47
    const/4 v9, 0x4

    .line 48
    new-array v10, v9, [B

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    const/16 v13, 0x7530

    .line 55
    .line 56
    move v14, v6

    .line 57
    move v15, v13

    .line 58
    :goto_1
    if-ge v14, v9, :cond_6

    .line 59
    .line 60
    if-lez v15, :cond_6

    .line 61
    .line 62
    aget-object v7, v0, v6

    .line 63
    .line 64
    iput-object v3, v7, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 65
    .line 66
    sget v9, Landroid/system/OsConstants;->POLLIN:I

    .line 67
    .line 68
    int-to-short v9, v9

    .line 69
    iput-short v9, v7, Landroid/system/StructPollfd;->events:S

    .line 70
    .line 71
    iput-short v6, v7, Landroid/system/StructPollfd;->revents:S

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    iput-object v9, v7, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v0, v15}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 84
    sub-long v16, v16, v11

    .line 85
    .line 86
    const-wide/32 v18, 0xf4240

    .line 87
    .line 88
    .line 89
    :try_start_1
    div-long v8, v16, v18

    .line 90
    .line 91
    long-to-int v8, v8

    .line 92
    rsub-int v8, v8, 0x7530

    .line 93
    .line 94
    if-lez v7, :cond_4

    .line 95
    .line 96
    aget-object v7, v0, v6

    .line 97
    .line 98
    iget-short v7, v7, Landroid/system/StructPollfd;->revents:S

    .line 99
    .line 100
    sget v9, Landroid/system/OsConstants;->POLLIN:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    and-int/2addr v7, v9

    .line 103
    if-eqz v7, :cond_3

    .line 104
    .line 105
    const/4 v9, 0x1

    .line 106
    :try_start_2
    invoke-static {v3, v10, v14, v9}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-ltz v7, :cond_2

    .line 111
    .line 112
    add-int/2addr v14, v7

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 115
    .line 116
    const-string v3, "Some error"

    .line 117
    .line 118
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_3
    const/4 v9, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    const/4 v9, 0x1

    .line 125
    if-nez v7, :cond_5

    .line 126
    .line 127
    const-string v7, "Timed out waiting for child."

    .line 128
    .line 129
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_2
    move v15, v8

    .line 133
    move v8, v9

    .line 134
    const/4 v9, 0x4

    .line 135
    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const/4 v9, 0x1

    .line 138
    goto :goto_5

    .line 139
    :cond_6
    move v9, v8

    .line 140
    :goto_3
    const/4 v0, 0x4

    .line 141
    if-ne v14, v0, :cond_7

    .line 142
    .line 143
    new-instance v0, Ljava/io/DataInputStream;

    .line 144
    .line 145
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 146
    .line 147
    invoke-direct {v3, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    move v3, v0

    .line 158
    goto :goto_4

    .line 159
    :catch_1
    move-exception v0

    .line 160
    goto :goto_5

    .line 161
    :cond_7
    const/4 v3, -0x1

    .line 162
    :goto_4
    const/4 v7, -0x1

    .line 163
    if-ne v3, v7, :cond_8

    .line 164
    .line 165
    :try_start_3
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :catch_2
    move-exception v0

    .line 170
    move v7, v3

    .line 171
    goto :goto_6

    .line 172
    :catch_3
    move-exception v0

    .line 173
    move v9, v8

    .line 174
    :goto_5
    const/4 v7, -0x1

    .line 175
    :goto_6
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .line 177
    .line 178
    move v3, v7

    .line 179
    :cond_8
    :goto_7
    if-lez v3, :cond_b

    .line 180
    .line 181
    move v0, v3

    .line 182
    :goto_8
    if-lez v0, :cond_9

    .line 183
    .line 184
    if-eq v0, v2, :cond_9

    .line 185
    .line 186
    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    goto :goto_8

    .line 191
    :cond_9
    if-lez v0, :cond_a

    .line 192
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v2, "Wrapped process has pid "

    .line 196
    .line 197
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move v2, v3

    .line 211
    move v6, v9

    .line 212
    goto :goto_9

    .line 213
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v4, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    .line 216
    .line 217
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v4, " innerPid="

    .line 224
    .line 225
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    :cond_b
    :goto_9
    :try_start_4
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 241
    .line 242
    .line 243
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 244
    .line 245
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :catch_4
    move-exception v0

    .line 250
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 251
    .line 252
    const-string v3, "Error writing to command socket"

    .line 253
    .line 254
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    throw v2
.end method

.method private handlePreload()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v2, "Error writing to command socket"

    .line 28
    .line 29
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const/16 v1, 0x400

    .line 16
    .line 17
    if-gt v0, v1, :cond_3

    .line 18
    .line 19
    new-array v1, v0, [Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v1, v2

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 38
    .line 39
    const-string/jumbo v1, "truncated request"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    return-object v1

    .line 47
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 48
    .line 49
    const-string v1, "max arg count exceeded"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :catch_0
    const-string v0, "Zygote"

    .line 56
    .line 57
    const-string v1, "invalid Zygote wire format: non-int at argc"

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/io/IOException;

    .line 63
    .line 64
    const-string v1, "invalid wire format"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method private setChildPgid(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/system/Os;->getpgid(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p1, v0}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const-string p1, "Zygote"

    .line 16
    .line 17
    const-string v0, "Zygote: setpgid failed. This is normal if peer is not in our session"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method


# virtual methods
.method public closeSocket()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string v1, "Zygote"

    .line 9
    .line 10
    const-string v2, "Exception while closing command socket in parent"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSocketOutputStream()Ljava/io/DataOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method public handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Zyogte does not support package preloading"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClosedByPeer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return v0
.end method

.method public isPreloadComplete()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result v0

    return v0
.end method

.method public preload()V
    .locals 0

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    return-void
.end method

.method public processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, v1, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iput-boolean v4, v1, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    new-instance v5, Lcom/android/internal/os/ZygoteConnection$Arguments;

    .line 21
    .line 22
    invoke-direct {v5, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_1
    iget-boolean v0, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()V

    .line 38
    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_2
    iget-object v0, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v2, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2, v4}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_3
    iget-wide v6, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 54
    .line 55
    const-wide/16 v8, 0x0

    .line 56
    .line 57
    cmp-long v0, v6, v8

    .line 58
    .line 59
    if-nez v0, :cond_9

    .line 60
    .line 61
    iget-wide v6, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 62
    .line 63
    cmp-long v0, v6, v8

    .line 64
    .line 65
    if-nez v0, :cond_9

    .line 66
    .line 67
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    .line 68
    .line 69
    invoke-static {v5, v0}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    .line 73
    .line 74
    invoke-static {v5, v0}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v5}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v5}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    sget-object v6, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, [[I

    .line 94
    .line 95
    move-object v10, v0

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    move-object v10, v3

    .line 98
    :goto_0
    iget-object v0, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 99
    .line 100
    const/4 v6, 0x2

    .line 101
    const/4 v7, 0x0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    :try_start_1
    invoke-static {}, Landroid/app/o;->a()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    aget-object v8, v0, v4

    .line 113
    .line 114
    aget-object v0, v0, v7

    .line 115
    .line 116
    sget v9, Landroid/system/OsConstants;->F_SETFD:I

    .line 117
    .line 118
    invoke-static {v8, v9}, Landroidx/core/view/j;->k(Ljava/io/FileDescriptor;I)V

    .line 119
    .line 120
    .line 121
    new-array v9, v6, [I

    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->getInt$()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    aput v11, v9, v7

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    aput v11, v9, v4
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    .line 135
    move-object v15, v0

    .line 136
    move-object v14, v8

    .line 137
    move-object v0, v9

    .line 138
    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    const-string v3, "Unable to set up pipe for invoke-with"

    .line 143
    .line 144
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw v2

    .line 148
    :cond_5
    move-object v0, v3

    .line 149
    move-object v14, v0

    .line 150
    move-object v15, v14

    .line 151
    :goto_1
    new-array v13, v6, [I

    .line 152
    .line 153
    fill-array-data v13, :array_0

    .line 154
    .line 155
    .line 156
    iget-object v6, v1, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 157
    .line 158
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-eqz v6, :cond_6

    .line 163
    .line 164
    invoke-virtual {v6}, Ljava/io/FileDescriptor;->getInt$()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    aput v6, v13, v7

    .line 169
    .line 170
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    if-eqz v6, :cond_7

    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/io/FileDescriptor;->getInt$()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    aput v6, v13, v4

    .line 181
    .line 182
    :cond_7
    iget v6, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 183
    .line 184
    iget v7, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 185
    .line 186
    iget-object v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 187
    .line 188
    iget v9, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 189
    .line 190
    iget v11, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    .line 191
    .line 192
    iget-object v12, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v4, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v3, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v1, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    .line 199
    .line 200
    move-object/from16 v16, v13

    .line 201
    .line 202
    move-object v13, v4

    .line 203
    move-object v4, v14

    .line 204
    move-object/from16 v14, v16

    .line 205
    .line 206
    move-object/from16 v19, v15

    .line 207
    .line 208
    move-object v15, v0

    .line 209
    move-object/from16 v16, v3

    .line 210
    .line 211
    move-object/from16 v17, v1

    .line 212
    .line 213
    invoke-static/range {v6 .. v17}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_8

    .line 218
    .line 219
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 223
    .line 224
    .line 225
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    .line 227
    .line 228
    move-object/from16 v1, p0

    .line 229
    .line 230
    :try_start_3
    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    .line 231
    .line 232
    .line 233
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 235
    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 239
    .line 240
    .line 241
    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    .line 243
    move-object v3, v4

    .line 244
    const/16 v18, 0x0

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :catchall_1
    move-exception v0

    .line 248
    move-object/from16 v1, p0

    .line 249
    .line 250
    :goto_2
    move-object/from16 v3, v19

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_8
    move-object/from16 v1, p0

    .line 254
    .line 255
    :try_start_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 256
    .line 257
    .line 258
    move-object/from16 v3, v19

    .line 259
    .line 260
    :try_start_5
    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 261
    .line 262
    .line 263
    const/4 v2, 0x0

    .line 264
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 268
    .line 269
    .line 270
    return-object v2

    .line 271
    :catchall_2
    move-exception v0

    .line 272
    const/4 v2, 0x0

    .line 273
    move-object/from16 v18, v3

    .line 274
    .line 275
    move-object v3, v2

    .line 276
    goto :goto_4

    .line 277
    :catchall_3
    move-exception v0

    .line 278
    goto :goto_2

    .line 279
    :goto_3
    move-object/from16 v18, v3

    .line 280
    .line 281
    move-object v3, v4

    .line 282
    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 283
    .line 284
    .line 285
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :cond_9
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    .line 290
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v3, "Client may not specify capabilities: permitted=0x"

    .line 294
    .line 295
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-wide v3, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 299
    .line 300
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v3, ", effective=0x"

    .line 308
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-wide v3, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 313
    .line 314
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-direct {v0, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v0

    .line 329
    :catch_1
    move-exception v0

    .line 330
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 331
    .line 332
    const-string v3, "IOException on command socket"

    .line 333
    .line 334
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    throw v2

    .line 338
    nop

    .line 339
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
