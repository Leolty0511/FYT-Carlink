.class Landroid/widget/MediaController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method public constructor <init>(Landroid/widget/MediaController;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    rem-int/lit16 v0, v0, 0x3e8

    .line 42
    .line 43
    rsub-int v0, v0, 0x3e8

    .line 44
    .line 45
    int-to-long v3, v0

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
