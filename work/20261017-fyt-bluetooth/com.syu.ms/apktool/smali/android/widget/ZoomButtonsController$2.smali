.class Landroid/widget/ZoomButtonsController$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButtonsController;
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
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->access$300(Landroid/widget/ZoomButtonsController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "ZoomButtonsController"

    const-string v0, "Cannot make the zoom controller visible if the owner view is not attached to a window."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->access$200(Landroid/widget/ZoomButtonsController;)V

    :goto_0
    return-void
.end method
