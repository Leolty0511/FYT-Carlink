.class public final Landroid/media/MediaDescrambler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaDescrambler"


# instance fields
.field private mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

.field private mNativeContext:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "media_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/media/MediaDescrambler;->native_init()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 1
    const-string v0, "Unsupported CA_system_id "

    .line 2
    .line 3
    const-string v1, "Failed to create descrambler: "

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2, p1}, Landroid/hardware/cas/V1_0/IMediaCasService;->createDescrambler(I)Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 21
    .line 22
    invoke-interface {p1}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Landroid/media/MediaDescrambler;->native_setup(Landroid/os/IHwBinder;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v1, p1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v2

    .line 43
    :try_start_1
    const-string v3, "MediaDescrambler"

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    .line 64
    .line 65
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v1, p1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :goto_0
    iget-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 74
    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    .line 78
    .line 79
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v1, p1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_1
    throw v1
.end method

.method private final cleanupAndRethrowIllegalState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method private final native native_descramble(BI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Landroid/os/IHwBinder;)V
.end method

.method private final validateInternalStates()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IDescramblerBase;->release()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 12
    .line 13
    throw v0

    .line 14
    :catch_0
    :goto_0
    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->native_release()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final descramble(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;)I
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 2
    .line 3
    .line 4
    iget v2, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 5
    .line 6
    if-lez v2, :cond_7

    .line 7
    .line 8
    iget-object v3, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 9
    .line 10
    if-nez v3, :cond_1

    .line 11
    .line 12
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "Invalid CryptoInfo: clearData and encryptedData size arrays are both null!"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 26
    .line 27
    array-length v0, v3

    .line 28
    if-lt v0, v2, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p2, "Invalid CryptoInfo: numBytesOfClearData is too small!"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_3
    :goto_1
    iget-object v4, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 40
    .line 41
    if-eqz v4, :cond_5

    .line 42
    .line 43
    array-length v0, v4

    .line 44
    if-lt v0, v2, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p2, "Invalid CryptoInfo: numBytesOfEncryptedData is too small!"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_5
    :goto_2
    iget-object p3, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 56
    .line 57
    if-eqz p3, :cond_6

    .line 58
    .line 59
    array-length v0, p3

    .line 60
    const/16 v1, 0x10

    .line 61
    .line 62
    if-ne v0, v1, :cond_6

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    :try_start_0
    aget-byte v1, p3, v0

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    move-object v0, p0

    .line 84
    move-object v5, p1

    .line 85
    move-object v8, p2

    .line 86
    invoke-direct/range {v0 .. v10}, Landroid/media/MediaDescrambler;->native_descramble(BI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    .line 87
    .line 88
    .line 89
    move-result p1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return p1

    .line 91
    :catch_0
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :catch_1
    move-exception p1

    .line 96
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p2, p1}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    const/4 p1, -0x1

    .line 106
    return p1

    .line 107
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string p2, "Invalid CryptoInfo: key array is invalid!"

    .line 110
    .line 111
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v0, "Invalid CryptoInfo: invalid numSubSamples="

    .line 120
    .line 121
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget p3, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 125
    .line 126
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescrambler;->close()V

    return-void
.end method

.method public getBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/IDescramblerBase;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p1

    .line 11
    :catch_0
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public final setMediaCasSession(Landroid/media/MediaCas$Session;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 5
    .line 6
    iget-object p1, p1, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/IDescramblerBase;->setMediaCasSession(Ljava/util/ArrayList;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
