.class Landroid/companion/CompanionDeviceManager$CallbackProxy;
.super Landroid/companion/IFindDeviceCallback$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackProxy"
.end annotation


# instance fields
.field private mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mRequest:Landroid/companion/AssociationRequest;

.field final synthetic this$0:Landroid/companion/CompanionDeviceManager;


# direct methods
.method private constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/IFindDeviceCallback$Stub;-><init>()V

    .line 3
    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 4
    iput-object p4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    .line 6
    invoke-static {p1}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/CompanionDeviceManager$CallbackProxy;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->lambda$onFailure$1(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic b(Landroid/companion/CompanionDeviceManager$CallbackProxy;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->lambda$onSuccess$0(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private synthetic lambda$onFailure$1(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceManager$Callback;->onFailure(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$onSuccess$0(Landroid/app/PendingIntent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceManager$Callback;->onDeviceFound(Landroid/content/IntentSender;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/companion/CompanionDeviceManager;->access$300(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    .line 17
    .line 18
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->access$200(Landroid/companion/CompanionDeviceManager;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1, v0, p0, v1}, Landroid/companion/ICompanionDeviceManager;->stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 47
    .line 48
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    .line 51
    .line 52
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroid/companion/a;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p0, p1, v2}, Landroid/companion/a;-><init>(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSuccess(Landroid/app/PendingIntent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroid/companion/a;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, p1, v2}, Landroid/companion/a;-><init>(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
