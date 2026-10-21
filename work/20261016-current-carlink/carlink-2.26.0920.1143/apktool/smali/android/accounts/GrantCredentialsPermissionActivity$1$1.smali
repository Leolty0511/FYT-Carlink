.class Landroid/accounts/GrantCredentialsPermissionActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/GrantCredentialsPermissionActivity$1;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

.field final synthetic val$authTokenLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/GrantCredentialsPermissionActivity$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iput-object p2, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenLabel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->this$0:Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    .line 12
    .line 13
    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->val$authTokenTypeView:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenLabel:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    .line 21
    .line 22
    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->val$authTokenTypeView:Landroid/widget/TextView;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
