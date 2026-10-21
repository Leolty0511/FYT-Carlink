.class Landroid/media/tv/TvInputService$RecordingSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$RecordingSession;->notifyTuned(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$RecordingSession;

.field final synthetic val$channelUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    iput-object p2, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->val$channelUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->access$1400(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->access$1400(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->val$channelUri:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onTuned(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v1, "TvInputService"

    .line 23
    .line 24
    const-string v2, "error in notifyTuned"

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    return-void
.end method
