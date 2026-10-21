.class Landroid/widget/ZoomButtonsController$4;
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
.field public final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method public constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {}, Landroid/widget/ZoomButtonsController;->access$400()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/ZoomButtonsController;->access$500(Landroid/widget/ZoomButtonsController;I)V

    .line 2
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_0
    return-void
.end method
