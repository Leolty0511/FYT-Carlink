.class Landroid/widget/MediaController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-long v0, p1

    .line 15
    int-to-long p1, p2

    .line 16
    mul-long/2addr v0, p1

    .line 17
    const-wide/16 p1, 0x3e8

    .line 18
    .line 19
    div-long/2addr v0, p1

    .line 20
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    long-to-int p2, v0

    .line 27
    invoke-interface {p1, p2}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/widget/MediaController;->access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 39
    .line 40
    invoke-static {p1}, Landroid/widget/MediaController;->access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p3, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 45
    .line 46
    invoke-static {p3, p2}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 2
    .line 3
    const v0, 0x36ee80

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Landroid/widget/MediaController;->access$602(Landroid/widget/MediaController;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/widget/MediaController;->access$602(Landroid/widget/MediaController;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)I

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/widget/MediaController;->access$1200(Landroid/widget/MediaController;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 18
    .line 19
    const/16 v0, 0xbb8

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
