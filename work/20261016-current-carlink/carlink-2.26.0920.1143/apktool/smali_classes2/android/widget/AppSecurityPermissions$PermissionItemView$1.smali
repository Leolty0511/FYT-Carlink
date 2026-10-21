.class Landroid/widget/AppSecurityPermissions$PermissionItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;


# direct methods
.method public constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->access$100(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Landroid/os/UserHandle;

    .line 24
    .line 25
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 26
    .line 27
    invoke-static {v2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->access$200(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 42
    .line 43
    const/16 p2, 0x8

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
