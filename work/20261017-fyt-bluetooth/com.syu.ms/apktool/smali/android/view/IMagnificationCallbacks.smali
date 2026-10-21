.class public interface abstract Landroid/view/IMagnificationCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IMagnificationCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMagnifedBoundsChanged(Landroid/graphics/Region;)V
.end method

.method public abstract onRectangleOnScreenRequested(IIII)V
.end method

.method public abstract onRotationChanged(I)V
.end method

.method public abstract onUserContextChanged()V
.end method
