.class Landroid/media/SubtitleTrack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SubtitleTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/SubtitleTrack;

.field public final synthetic val$thenMs:J

.field public final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method public constructor <init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iput-object p2, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    iput-wide p3, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/SubtitleTrack;->access$102(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    const/4 v2, 0x1

    iget-wide v3, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 4
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iget-object v2, v1, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
