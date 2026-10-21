.class public interface abstract Landroid/app/IUserSwitchObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUserSwitchObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUserSwitchComplete(I)V
.end method

.method public abstract onUserSwitching(ILandroid/os/IRemoteCallback;)V
.end method
