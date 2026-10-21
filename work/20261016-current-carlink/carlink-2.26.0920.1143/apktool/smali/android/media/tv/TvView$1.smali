.class Landroid/media/tv/TvView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvView;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroid/media/tv/TvView;->access$002(Landroid/media/tv/TvView;I)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 7
    .line 8
    invoke-static {p1, p3}, Landroid/media/tv/TvView;->access$102(Landroid/media/tv/TvView;I)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 12
    .line 13
    invoke-static {p1, p4}, Landroid/media/tv/TvView;->access$202(Landroid/media/tv/TvView;I)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-static {p1, p2}, Landroid/media/tv/TvView;->access$302(Landroid/media/tv/TvView;Z)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/media/tv/TvView;->access$000(Landroid/media/tv/TvView;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget-object p3, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 29
    .line 30
    invoke-static {p3}, Landroid/media/tv/TvView;->access$100(Landroid/media/tv/TvView;)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    iget-object p4, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 35
    .line 36
    invoke-static {p4}, Landroid/media/tv/TvView;->access$200(Landroid/media/tv/TvView;)I

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    invoke-static {p1, p2, p3, p4}, Landroid/media/tv/TvView;->access$400(Landroid/media/tv/TvView;III)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Landroid/media/tv/TvView;->access$502(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/media/tv/TvView;->access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$600(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$502(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Landroid/media/tv/TvView;->access$302(Landroid/media/tv/TvView;Z)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$600(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
