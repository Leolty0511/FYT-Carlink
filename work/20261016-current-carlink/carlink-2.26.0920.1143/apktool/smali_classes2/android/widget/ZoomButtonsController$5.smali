.class Landroid/widget/ZoomButtonsController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ZoomButtonsController;->setVisible(Z)V
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

    iput-object p1, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$700(Landroid/widget/ZoomButtonsController;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-interface {v0, v1}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
