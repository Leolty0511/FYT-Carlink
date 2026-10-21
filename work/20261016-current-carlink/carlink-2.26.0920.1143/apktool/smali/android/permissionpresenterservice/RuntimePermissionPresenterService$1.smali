.class Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;
.super Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method public constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)V
    .locals 0

    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-direct {p0}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->access$000(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->access$000(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x3

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
