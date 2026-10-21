.class public interface abstract Landroid/view/IApplicationToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IApplicationToken$Stub;
    }
.end annotation


# virtual methods
.method public abstract getKeyDispatchingTimeout()J
.end method

.method public abstract keyDispatchingTimedOut(Ljava/lang/String;)Z
.end method

.method public abstract windowsDrawn()V
.end method

.method public abstract windowsGone()V
.end method

.method public abstract windowsVisible()V
.end method
