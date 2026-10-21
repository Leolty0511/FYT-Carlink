.class Landroid/widget/VideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-static {p1, v0}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/widget/VideoView;->access$1202(Landroid/widget/VideoView;I)I

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 38
    .line 39
    invoke-static {p1}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 53
    .line 54
    invoke-static {p1}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    .line 61
    .line 62
    invoke-static {p1}, Landroid/widget/VideoView;->access$1500(Landroid/widget/VideoView;)Landroid/media/AudioManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method
