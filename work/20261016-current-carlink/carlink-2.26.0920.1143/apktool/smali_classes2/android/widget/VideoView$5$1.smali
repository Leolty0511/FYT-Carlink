.class Landroid/widget/VideoView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/VideoView$5;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView$5;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    .line 20
    .line 21
    iget-object p2, p2, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 22
    .line 23
    invoke-static {p2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p1, p2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
