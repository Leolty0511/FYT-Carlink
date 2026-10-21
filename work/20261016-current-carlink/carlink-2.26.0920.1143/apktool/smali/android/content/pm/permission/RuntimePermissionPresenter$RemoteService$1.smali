.class Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

.field final synthetic val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->this$0:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    iput-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$handler:Landroid/os/Handler;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    new-instance v1, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void
.end method
