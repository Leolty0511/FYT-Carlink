.class Landroid/widget/VideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 2
    .line 3
    invoke-static {p1, p3}, Landroid/widget/VideoView;->access$1002(Landroid/widget/VideoView;I)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 7
    .line 8
    invoke-static {p1, p4}, Landroid/widget/VideoView;->access$1102(Landroid/widget/VideoView;I)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x3

    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    move p1, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v1

    .line 25
    :goto_0
    iget-object p2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 26
    .line 27
    invoke-static {p2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ne p2, p3, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 34
    .line 35
    invoke-static {p2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-ne p2, p4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v0, v1

    .line 43
    :goto_1
    iget-object p2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 44
    .line 45
    invoke-static {p2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 56
    .line 57
    invoke-static {p1}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 64
    .line 65
    invoke-static {p1}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/widget/VideoView;->access$2102(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/widget/VideoView;->access$2200(Landroid/widget/VideoView;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/widget/VideoView;->access$2102(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {p1, v0}, Landroid/widget/VideoView;->access$2300(Landroid/widget/VideoView;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
