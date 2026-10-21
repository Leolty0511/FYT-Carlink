.class public abstract Landroid/app/PackageManagerEx;
.super Landroid/content/pm/PackageManager;
.source "SourceFile"


# static fields
.field public static final BACKUPAPP_FAILED_UNKNOWN:I = -0x1

.field public static final BACKUPAPP_FILE_NOTFOUND:I = -0x2

.field public static final BACKUPAPP_PKG_DONINSTALL:I = -0x3

.field public static final BACKUPAPP_SUCCEED:I


# instance fields
.field protected final mContext:Landroid/app/ContextImpl;

.field protected final mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/PackageManagerEx;->mContext:Landroid/app/ContextImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/PackageManagerEx;->mPM:Landroid/content/pm/IPackageManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public backupAppData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/PackageManagerEx;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->backupAppData(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public getPrimaryEmulatedStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/PackageManagerEx;->mContext:Landroid/app/ContextImpl;

    .line 2
    .line 3
    const-class v1, Landroid/os/storage/StorageManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryEmulatedStorageUuid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public movePrimaryEmulatedStorage(Landroid/os/storage/VolumeInfo;)I
    .locals 2

    .line 1
    :try_start_0
    const-string/jumbo v0, "private"

    .line 2
    .line 3
    .line 4
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string/jumbo p1, "primary_physical"

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Landroid/app/PackageManagerEx;->mPM:Landroid/content/pm/IPackageManager;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->movePrimaryEmulatedStorage(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    throw p1
.end method

.method public restoreAppData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/PackageManagerEx;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->restoreAppData(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public setComponentEnabledSettingForSetupMenu(Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/PackageManagerEx;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/PackageManagerEx;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSettingForSetupMenu(Landroid/content/ComponentName;IILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setComponentEnabledSettingForSpecific(Landroid/content/ComponentName;IILandroid/content/Intent;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/PackageManagerEx;->mPM:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/PackageManagerEx;->mContext:Landroid/app/ContextImpl;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    move-object v1, p1

    .line 10
    move v2, p2

    .line 11
    move v3, p3

    .line 12
    move-object v5, p4

    .line 13
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSettingForSpecific(Landroid/content/ComponentName;IIILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    return-void
.end method
