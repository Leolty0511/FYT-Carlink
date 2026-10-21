.class public interface abstract Landroid/content/pm/IPackageManagerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManagerNative$Stub;
    }
.end annotation


# virtual methods
.method public abstract getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNamesForUids([I)[Ljava/lang/String;
.end method

.method public abstract getVersionCodeForPackage(Ljava/lang/String;)I
.end method
