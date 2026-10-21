.class Landroid/widget/MediaController$5;
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

    iput-object p1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/MediaController;->access$900(Landroid/widget/MediaController;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    .line 7
    .line 8
    const/16 v0, 0xbb8

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
