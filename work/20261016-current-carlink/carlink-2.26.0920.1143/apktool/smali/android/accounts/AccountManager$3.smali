.class Landroid/accounts/AccountManager$3;
.super Landroid/accounts/AccountManager$Future2Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task<",
        "[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$features:[Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    iput-object p4, p0, Landroid/accounts/AccountManager$3;->val$type:Ljava/lang/String;

    iput-object p5, p0, Landroid/accounts/AccountManager$3;->val$features:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$3;->bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;
    .locals 3

    const-string v0, "accounts"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 4
    array-length v0, p1

    new-array v0, v0, [Landroid/accounts/Account;

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 6
    aget-object v2, p1, v1

    check-cast v2, Landroid/accounts/Account;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p1, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v0, "no result in response"

    invoke-direct {p1, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doWork()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

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
    iget-object v2, p0, Landroid/accounts/AccountManager$3;->val$type:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Landroid/accounts/AccountManager$3;->val$features:[Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    .line 14
    .line 15
    invoke-static {v4}, Landroid/accounts/AccountManager;->access$100(Landroid/accounts/AccountManager;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
