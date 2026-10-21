.class Landroid/media/RemoteController$PlaybackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# instance fields
.field public mCurrentPosMs:J

.field public mSpeed:F

.field public mState:I

.field public mStateChangeTimeMs:J


# direct methods
.method public constructor <init>(IJJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    .line 3
    iput-wide p2, p0, Landroid/media/RemoteController$PlaybackInfo;->mStateChangeTimeMs:J

    .line 4
    iput-wide p4, p0, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    .line 5
    iput p6, p0, Landroid/media/RemoteController$PlaybackInfo;->mSpeed:F

    return-void
.end method
