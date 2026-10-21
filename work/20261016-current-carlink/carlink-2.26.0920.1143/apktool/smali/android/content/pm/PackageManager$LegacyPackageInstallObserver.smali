.class public Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyPackageInstallObserver"
.end annotation


# instance fields
.field private final mLegacy:Landroid/content/pm/IPackageInstallObserver;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageInstallObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p3, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p3, p1, p2}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method
