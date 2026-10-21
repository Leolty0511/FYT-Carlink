.class Landroid/media/TtmlCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "SourceFile"


# instance fields
.field public mText:Ljava/lang/String;

.field public mTtmlFragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    .line 7
    .line 8
    iput-object p5, p0, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Landroid/media/TtmlCue;->mTtmlFragment:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
