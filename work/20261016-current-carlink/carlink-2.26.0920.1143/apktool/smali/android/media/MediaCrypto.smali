.class public final Landroid/media/MediaCrypto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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
    invoke-static {}, Landroid/media/MediaCrypto;->native_init()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCrypto;->native_setup([B[B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/16 p0, 0x10

    .line 10
    .line 11
    new-array p0, p0, [B

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    const/16 v5, 0x8

    .line 15
    .line 16
    if-ge v4, v5, :cond_0

    .line 17
    .line 18
    rsub-int/lit8 v6, v4, 0x7

    .line 19
    .line 20
    mul-int/2addr v6, v5

    .line 21
    ushr-long v7, v0, v6

    .line 22
    .line 23
    long-to-int v5, v7

    .line 24
    int-to-byte v5, v5

    .line 25
    aput-byte v5, p0, v4

    .line 26
    .line 27
    add-int/lit8 v5, v4, 0x8

    .line 28
    .line 29
    ushr-long v6, v2, v6

    .line 30
    .line 31
    long-to-int v6, v6

    .line 32
    int-to-byte v6, v6

    .line 33
    aput-byte v6, p0, v5

    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object p0
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 0

    invoke-static {p0}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaCrypto;->isCryptoSchemeSupportedNative([B)Z

    move-result p0

    return p0
.end method

.method private static final native isCryptoSchemeSupportedNative([B)Z
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup([B[B)V
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCrypto;->native_finalize()V

    return-void
.end method

.method public final native release()V
.end method

.method public final native requiresSecureDecoderComponent(Ljava/lang/String;)Z
.end method

.method public final native setMediaDrmSession([B)V
.end method
