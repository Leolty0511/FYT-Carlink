.class Landroid/accounts/AccountManager$23;
.super Landroid/accounts/AccountManager$AmsTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appInfo:Landroid/os/Bundle;

.field final synthetic val$sessionBundle:Landroid/os/Bundle;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AccountManager$23;->this$0:Landroid/accounts/AccountManager;

    iput-object p5, p0, Landroid/accounts/AccountManager$23;->val$sessionBundle:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/accounts/AccountManager$23;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Landroid/accounts/AccountManager$23;->val$appInfo:Landroid/os/Bundle;

    iput-object p8, p0, Landroid/accounts/AccountManager$23;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/accounts/AccountManager$23;->this$0:Landroid/accounts/AccountManager;

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
    iget-object v3, p0, Landroid/accounts/AccountManager$23;->val$sessionBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v0, p0, Landroid/accounts/AccountManager$23;->val$activity:Landroid/app/Activity;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    move v4, v0

    .line 19
    iget-object v5, p0, Landroid/accounts/AccountManager$23;->val$appInfo:Landroid/os/Bundle;

    .line 20
    .line 21
    iget-object v0, p0, Landroid/accounts/AccountManager$23;->val$userHandle:Landroid/os/UserHandle;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-interface/range {v1 .. v6}, Landroid/accounts/IAccountManager;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
