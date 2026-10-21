.class public interface abstract Landroid/content/pm/IPackageInstaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstaller$Stub;
    }
.end annotation


# virtual methods
.method public abstract abandonSession(I)V
.end method

.method public abstract createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
.end method

.method public abstract getAllSessions(I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
.end method

.method public abstract openSession(I)Landroid/content/pm/IPackageInstallerSession;
.end method

.method public abstract registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
.end method

.method public abstract setPermissionsResult(IZ)V
.end method

.method public abstract uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
.end method

.method public abstract unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
.end method

.method public abstract updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract updateSessionAppLabel(ILjava/lang/String;)V
.end method
