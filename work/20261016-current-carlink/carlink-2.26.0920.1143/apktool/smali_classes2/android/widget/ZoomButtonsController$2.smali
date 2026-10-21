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
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method public constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->access$300(Landroid/widget/ZoomButtonsController;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string p1, "ZoomButtonsController"

    .line 26
    .line 27
    const-string v0, "Cannot make the zoom controller visible if the owner view is not attached to a window."

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    .line 48
    .line 49
    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->access$200(Landroid/widget/ZoomButtonsController;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
