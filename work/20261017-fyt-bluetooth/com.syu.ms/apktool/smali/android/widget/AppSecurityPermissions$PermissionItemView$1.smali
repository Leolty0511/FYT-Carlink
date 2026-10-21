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
.field public final synthetic this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;


# direct methods
.method public constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2
    iget-object p2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-static {p2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->access$000(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
