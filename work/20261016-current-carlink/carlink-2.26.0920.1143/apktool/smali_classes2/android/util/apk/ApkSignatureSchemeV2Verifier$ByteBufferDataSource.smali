.class final Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteBufferDataSource"
.end annotation


# instance fields
.field private final mBuf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    long-to-int p2, p2

    .line 7
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    .line 9
    .line 10
    iget-object p3, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    add-int/2addr p2, p4

    .line 13
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    array-length p3, p1

    .line 24
    const/4 p4, 0x0

    .line 25
    move v0, p4

    .line 26
    :goto_0
    if-ge v0, p3, :cond_0

    .line 27
    .line 28
    aget-object v1, p1, v0

    .line 29
    .line 30
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
