.class Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CaptureCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field private mFailedJpeg:Z

.field private mFailedPreview:Z

.field private mHasStarted:Z

.field private final mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mPreviewCompleted:Z

.field private mReceivedFlags:I

.field private final mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mTimestamp:J

.field public final needsJpeg:Z

.field public final needsPreview:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/CaptureCollector;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 12
    .line 13
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    .line 20
    .line 21
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    .line 22
    .line 23
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 24
    .line 25
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v0

    iget-object p1, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCompleted()Z
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJpegCompleted()Z
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewCompleted()Z
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    const/16 v1, 0xc

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setJpegFailed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    .line 14
    .line 15
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public setJpegProduced()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string/jumbo v1, "setJpegProduced called on already completed request."

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string/jumbo v1, "setJpegProduced called for capture with no jpeg targets."

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public setJpegTimestamp(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 16
    .line 17
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 26
    .line 27
    :cond_0
    iget-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 33
    .line 34
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 41
    .line 42
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string/jumbo p2, "setJpegTimestamp called on already completed request."

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string/jumbo p2, "setJpegTimestamp called for capture with no jpeg targets."

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public setPreviewFailed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    .line 14
    .line 15
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x4

    .line 18
    .line 19
    or-int/lit8 v0, v0, 0x8

    .line 20
    .line 21
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public setPreviewProduced()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x4

    .line 14
    .line 15
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string/jumbo v1, "setPreviewProduced called on already completed request."

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string/jumbo v1, "setPreviewProduced called for capture with no preview targets."

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public setPreviewTimestamp(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 16
    .line 17
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 26
    .line 27
    :cond_0
    iget-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 37
    .line 38
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 39
    .line 40
    invoke-static {p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 45
    .line 46
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 47
    .line 48
    const/4 v2, -0x1

    .line 49
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string/jumbo p2, "setPreviewTimestamp called on already completed request."

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string/jumbo p2, "setPreviewTimestamp called for capture with no preview targets."

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public tryComplete()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$000(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 19
    .line 20
    .line 21
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    .line 30
    .line 31
    if-nez v0, :cond_6

    .line 32
    .line 33
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 51
    .line 52
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 57
    .line 58
    iget-wide v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 59
    .line 60
    const/4 v5, 0x3

    .line 61
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/view/Surface;

    .line 90
    .line 91
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/legacy/RequestHolder;->jpegType(Landroid/view/Surface;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/4 v4, 0x5

    .line 98
    const/4 v5, 0x0

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 106
    .line 107
    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 112
    .line 113
    invoke-virtual {v3, v6, v5, v4, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    .line 118
    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 122
    .line 123
    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 128
    .line 129
    invoke-virtual {v3, v6, v5, v4, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v4, "Unexpected exception when querying Surface: "

    .line 137
    .line 138
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string v3, "CaptureCollector"

    .line 149
    .line 150
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 155
    .line 156
    invoke-static {v0, p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$200(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    .line 157
    .line 158
    .line 159
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    .line 160
    .line 161
    :cond_6
    return-void
.end method
