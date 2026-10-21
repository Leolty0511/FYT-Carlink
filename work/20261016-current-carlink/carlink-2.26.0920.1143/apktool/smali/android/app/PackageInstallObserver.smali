.class public Landroid/app/PackageInstallObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/PackageInstallObserver$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/app/PackageInstallObserver$1;-><init>(Landroid/app/PackageInstallObserver;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/PackageInstallObserver;->mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/content/pm/IPackageInstallObserver2;
    .locals 1

    iget-object v0, p0, Landroid/app/PackageInstallObserver;->mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;

    return-object v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
