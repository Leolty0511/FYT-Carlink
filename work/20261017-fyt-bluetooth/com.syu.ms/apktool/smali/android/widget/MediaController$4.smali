.class Landroid/widget/MediaController$4;
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
    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)V

    .line 2
    iget-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    return-void
.end method
