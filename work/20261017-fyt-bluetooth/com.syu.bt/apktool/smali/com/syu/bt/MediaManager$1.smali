.class Lcom/syu/bt/MediaManager$1;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 173
    :try_start_0
    invoke-static {}, Lcom/syu/bt/MediaManager;->access$0()Landroid/media/session/MediaSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/syu/bt/MediaManager;->access$0()Landroid/media/session/MediaSession;

    move-result-object v1

    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bBtAvPlayState:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    sget v3, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    int-to-long v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_1
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_1
.end method
