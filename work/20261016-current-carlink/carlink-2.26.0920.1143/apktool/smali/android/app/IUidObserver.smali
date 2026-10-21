.class public interface abstract Landroid/app/IUidObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUidObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUidActive(I)V
.end method

.method public abstract onUidCachedChanged(IZ)V
.end method

.method public abstract onUidGone(IZ)V
.end method

.method public abstract onUidIdle(IZ)V
.end method

.method public abstract onUidStateChanged(IIJ)V
.end method
