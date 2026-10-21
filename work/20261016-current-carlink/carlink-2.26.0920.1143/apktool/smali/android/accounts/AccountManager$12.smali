.class Landroid/accounts/AccountManager$12;
.super Landroid/accounts/AccountManager$AmsTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AccountManager$12;->this$0:Landroid/accounts/AccountManager;

    iput-object p5, p0, Landroid/accounts/AccountManager$12;->val$accountType:Ljava/lang/String;

    iput-object p6, p0, Landroid/accounts/AccountManager$12;->val$authTokenType:Ljava/lang/String;

    iput-object p7, p0, Landroid/accounts/AccountManager$12;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p8, p0, Landroid/accounts/AccountManager$12;->val$activity:Landroid/app/Activity;

    iput-object p9, p0, Landroid/accounts/AccountManager$12;->val$optionsIn:Landroid/os/Bundle;

    iput-object p10, p0, Landroid/accounts/AccountManager$12;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/accounts/AccountManager$12;->this$0:Landroid/accounts/AccountManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accounts/AccountManager;->access$000(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 8
    .line 9
    iget-object v3, p0, Landroid/accounts/AccountManager$12;->val$accountType:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Landroid/accounts/AccountManager$12;->val$authTokenType:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, p0, Landroid/accounts/AccountManager$12;->val$requiredFeatures:[Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Landroid/accounts/AccountManager$12;->val$activity:Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    move v6, v0

    .line 23
    iget-object v7, p0, Landroid/accounts/AccountManager$12;->val$optionsIn:Landroid/os/Bundle;

    .line 24
    .line 25
    iget-object v0, p0, Landroid/accounts/AccountManager$12;->val$userHandle:Landroid/os/UserHandle;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    invoke-interface/range {v1 .. v8}, Landroid/accounts/IAccountManager;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
