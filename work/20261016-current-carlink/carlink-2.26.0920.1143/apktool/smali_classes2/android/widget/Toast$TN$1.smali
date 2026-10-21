.class Landroid/widget/Toast$TN$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast$TN;-><init>(Ljava/lang/String;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toast$TN;


# direct methods
.method public constructor <init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/Toast$TN;->handleHide()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    .line 19
    .line 20
    iput-object v1, p1, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->access$100()Landroid/app/INotificationManager;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    .line 27
    .line 28
    iget-object v1, v0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p1, v1, v0}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/widget/Toast$TN;->handleHide()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    .line 40
    .line 41
    iput-object v1, p1, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Landroid/os/IBinder;

    .line 47
    .line 48
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/Toast$TN;->handleShow(Landroid/os/IBinder;)V

    .line 51
    .line 52
    .line 53
    :catch_0
    :goto_0
    return-void
.end method
