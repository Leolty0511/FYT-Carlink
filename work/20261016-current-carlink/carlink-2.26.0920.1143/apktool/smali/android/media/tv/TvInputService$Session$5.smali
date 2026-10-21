.class Landroid/media/tv/TvInputService$Session$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTrackSelected(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(Landroid/media/tv/TvInputService$Session;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$5;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$5;->val$type:I

    iput-object p3, p0, Landroid/media/tv/TvInputService$Session$5;->val$trackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$5;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->access$700(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$5;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->access$700(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Landroid/media/tv/TvInputService$Session$5;->val$type:I

    .line 16
    .line 17
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$5;->val$trackId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onTrackSelected(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "TvInputService"

    .line 25
    .line 26
    const-string v2, "error in notifyTrackSelected"

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void
.end method
