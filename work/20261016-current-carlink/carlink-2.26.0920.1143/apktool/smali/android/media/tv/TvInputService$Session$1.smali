.class Landroid/media/tv/TvInputService$Session$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->setOverlayViewEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$enable:Z


# direct methods
.method public constructor <init>(Landroid/media/tv/TvInputService$Session;Z)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-boolean p2, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->access$400(Landroid/media/tv/TvInputService$Session;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 13
    .line 14
    iget-boolean v1, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/media/tv/TvInputService$Session;->access$402(Landroid/media/tv/TvInputService$Session;Z)Z

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->access$500(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->access$500(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 38
    .line 39
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$600(Landroid/media/tv/TvInputService$Session;)Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method
