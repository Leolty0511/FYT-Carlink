.class public interface abstract Landroid/os/IPermissionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPermissionController$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkPermission(Ljava/lang/String;II)Z
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract isRuntimePermission(Ljava/lang/String;)Z
.end method
