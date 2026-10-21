.class Landroid/widget/MediaController$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/lit16 p1, p1, 0x3a98

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)I

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    .line 28
    .line 29
    const/16 v0, 0xbb8

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
