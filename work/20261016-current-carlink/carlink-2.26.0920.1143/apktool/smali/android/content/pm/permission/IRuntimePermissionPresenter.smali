.class public interface abstract Landroid/content/pm/permission/IRuntimePermissionPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
.end method
