.class Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;
.super Landroid/app/admin/IDeviceAdminService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DeviceAdminService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IDeviceAdminServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/admin/DeviceAdminService;


# direct methods
.method private constructor <init>(Landroid/app/admin/DeviceAdminService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;->this$0:Landroid/app/admin/DeviceAdminService;

    invoke-direct {p0}, Landroid/app/admin/IDeviceAdminService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/admin/DeviceAdminService;Landroid/app/admin/DeviceAdminService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;-><init>(Landroid/app/admin/DeviceAdminService;)V

    return-void
.end method
