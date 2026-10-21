.class Landroid/widget/MediaController$6;
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
.field public final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method public constructor <init>(Landroid/widget/MediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result p1

    add-int/lit16 p1, p1, -0x1388

    .line 2
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 3
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)I

    .line 4
    iget-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    return-void
.end method
