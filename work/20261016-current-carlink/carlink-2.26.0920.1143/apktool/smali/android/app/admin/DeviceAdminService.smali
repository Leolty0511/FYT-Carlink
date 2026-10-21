.class public Landroid/app/admin/DeviceAdminService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;-><init>(Landroid/app/admin/DeviceAdminService;Landroid/app/admin/DeviceAdminService$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/admin/DeviceAdminService;->mImpl:Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroid/app/admin/DeviceAdminService;->mImpl:Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;

    invoke-virtual {p1}, Landroid/app/admin/IDeviceAdminService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
