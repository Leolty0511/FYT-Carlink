.class final Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_REVOKE_APP_PERMISSION:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method public constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroid/os/RemoteCallback;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    new-instance v0, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    .line 66
    .line 67
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 p1, 0x0

    .line 75
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method
