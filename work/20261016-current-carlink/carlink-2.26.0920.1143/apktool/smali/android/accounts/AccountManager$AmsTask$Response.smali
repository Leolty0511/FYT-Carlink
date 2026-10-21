.class Landroid/accounts/AccountManager$AmsTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$AmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$AmsTask;


# direct methods
.method private constructor <init>(Landroid/accounts/AccountManager$AmsTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x65

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    .line 14
    .line 15
    iget-object v1, v0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->access$700(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Landroid/accounts/AccountManager$AmsTask;->access$800(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-virtual {p1, p2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "intent"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/content/Intent;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo v0, "retry"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :try_start_0
    iget-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    throw p1

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
