.class public Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field private mRemaining:J


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-super {p0, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-int p1, v0

    .line 20
    int-to-long v0, p1

    .line 21
    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-ltz v2, :cond_1

    .line 8
    .line 9
    const-wide/32 v2, 0x7fffffff

    .line 10
    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    long-to-int v0, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v0, 0x7fffffff

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-super {p0}, Ljava/io/FileInputStream;->available()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    return v0
.end method

.method public mark(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FileInputStream;->mark(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public markSupported()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-super {p0}, Ljava/io/FileInputStream;->markSupported()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public read()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public read([B)I
    .locals 2

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 5

    .line 2
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    long-to-int p3, v0

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_2

    .line 4
    iget-wide p2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    :cond_2
    return p1

    .line 5
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/FileInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public skip(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_3

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const-wide/16 p1, -0x1

    .line 14
    .line 15
    return-wide p1

    .line 16
    :cond_0
    cmp-long v4, p1, v0

    .line 17
    .line 18
    if-lez v4, :cond_1

    .line 19
    .line 20
    move-wide p1, v0

    .line 21
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    cmp-long v0, p1, v2

    .line 26
    .line 27
    if-ltz v0, :cond_2

    .line 28
    .line 29
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 30
    .line 31
    sub-long/2addr v0, p1

    .line 32
    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 33
    .line 34
    :cond_2
    return-wide p1

    .line 35
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    return-wide p1
.end method
