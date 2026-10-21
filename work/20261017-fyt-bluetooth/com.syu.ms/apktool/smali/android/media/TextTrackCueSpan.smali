.class Landroid/media/TextTrackCueSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mEnabled:Z

.field public mText:Ljava/lang/String;

.field public mTimestampMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 3
    iput-object p1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/media/TextTrackCueSpan;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/media/TextTrackCueSpan;

    .line 3
    iget-wide v2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v4, p1, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
