.class Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
.super Landroid/content/pm/PermissionInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyPermissionInfo"
.end annotation


# instance fields
.field public mExistingReqFlags:I

.field public mLabel:Ljava/lang/CharSequence;

.field public mNew:Z

.field public mNewReqFlags:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    return-void
.end method
