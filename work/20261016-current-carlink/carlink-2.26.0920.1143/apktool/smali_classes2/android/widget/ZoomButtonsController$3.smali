.class Landroid/widget/ZoomButtonsController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method public constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    .line 2
    .line 3
    invoke-static {}, Landroid/widget/ZoomButtonsController;->access$400()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroid/widget/ZoomButtonsController;->access$500(Landroid/widget/ZoomButtonsController;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-interface {p1, v0}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
