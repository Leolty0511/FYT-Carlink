.class final Landroid/os/RecoverySystem$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field lastPercent:I

.field lastPublishTime:J

.field soFar:J

.field toRead:J

.field final synthetic val$commentSize:I

.field final synthetic val$fileLen:J

.field final synthetic val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$raf:Ljava/io/RandomAccessFile;

.field final synthetic val$startTimeMillis:J


# direct methods
.method public constructor <init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    .line 2
    .line 3
    iput p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    .line 4
    .line 5
    iput-wide p4, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    .line 6
    .line 7
    iput-object p6, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    iput-object p7, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    int-to-long p6, p3

    .line 15
    sub-long/2addr p1, p6

    .line 16
    const-wide/16 p6, 0x2

    .line 17
    .line 18
    sub-long/2addr p1, p6

    .line 19
    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->toRead:J

    .line 20
    .line 21
    const-wide/16 p1, 0x0

    .line 22
    .line 23
    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->soFar:J

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    .line 27
    .line 28
    iput-wide p4, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 6

    .line 2
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v2, p3

    add-long/2addr v2, v0

    iget-wide v4, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    sub-long/2addr v4, v0

    long-to-int p3, v4

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    .line 6
    iget-wide p2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    .line 7
    iget-object p2, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    if-eqz p2, :cond_3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 9
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 10
    iget v1, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    if-le v0, v1, :cond_3

    iget-wide v1, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 11
    iput v0, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    .line 12
    iput-wide p2, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    .line 13
    iget-object p2, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    invoke-interface {p2, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_3
    return p1
.end method
