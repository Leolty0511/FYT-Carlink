.class public interface abstract Landroid/view/IPinnedStackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IPinnedStackListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract onImeVisibilityChanged(ZI)V
.end method

.method public abstract onListenerRegistered(Landroid/view/IPinnedStackController;)V
.end method

.method public abstract onMinimizedStateChanged(Z)V
.end method

.method public abstract onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
.end method
