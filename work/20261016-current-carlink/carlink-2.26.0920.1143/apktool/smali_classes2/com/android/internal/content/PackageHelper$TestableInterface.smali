.class public abstract Lcom/android/internal/content/PackageHelper$TestableInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/PackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TestableInterface"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fitsOnInternalStorage(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getDataDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-wide v1, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 14
    .line 15
    iget p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 16
    .line 17
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    cmp-long p1, v1, p1

    .line 26
    .line 27
    if-gtz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public abstract getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z
.end method

.method public abstract getDataDirectory()Ljava/io/File;
.end method

.method public abstract getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getForceAllowOnExternalSetting(Landroid/content/Context;)Z
.end method

.method public abstract getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
.end method
