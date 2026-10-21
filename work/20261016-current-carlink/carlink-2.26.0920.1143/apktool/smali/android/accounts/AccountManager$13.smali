.class Landroid/accounts/AccountManager$13;
.super Landroid/accounts/AccountManager$Future2Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->copyAccountToUser(Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$fromUser:Landroid/os/UserHandle;

.field final synthetic val$toUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AccountManager$13;->this$0:Landroid/accounts/AccountManager;

    iput-object p4, p0, Landroid/accounts/AccountManager$13;->val$account:Landroid/accounts/Account;

    iput-object p5, p0, Landroid/accounts/AccountManager$13;->val$fromUser:Landroid/os/UserHandle;

    iput-object p6, p0, Landroid/accounts/AccountManager$13;->val$toUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public bundleToResult(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "booleanResult"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v0, "no result in response"

    invoke-direct {p1, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$13;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public doWork()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/accounts/AccountManager$13;->this$0:Landroid/accounts/AccountManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accounts/AccountManager;->access$000(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/accounts/AccountManager$13;->val$account:Landroid/accounts/Account;

    .line 10
    .line 11
    iget-object v3, p0, Landroid/accounts/AccountManager$13;->val$fromUser:Landroid/os/UserHandle;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, p0, Landroid/accounts/AccountManager$13;->val$toUser:Landroid/os/UserHandle;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
