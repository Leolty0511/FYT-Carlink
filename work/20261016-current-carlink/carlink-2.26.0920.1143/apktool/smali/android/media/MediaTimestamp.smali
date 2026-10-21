.class public final Landroid/media/MediaTimestamp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clockRate:F

.field public final mediaTimeUs:J

.field public final nanoTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    .line 7
    iput-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return-void
.end method

.method public constructor <init>(JJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    .line 3
    iput-wide p3, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    .line 4
    iput p5, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return-void
.end method


# virtual methods
.method public getAnchorMediaTimeUs()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    return-wide v0
.end method

.method public getAnchorSytemNanoTime()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public getMediaClockRate()F
    .locals 1

    iget v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return v0
.end method
