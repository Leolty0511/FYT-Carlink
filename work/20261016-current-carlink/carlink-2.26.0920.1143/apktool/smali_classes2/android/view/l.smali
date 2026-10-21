.class public abstract synthetic Landroid/view/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/WindowManagerPolicy$PointerEventListener;Landroid/view/MotionEvent;I)V
    .locals 0

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, Landroid/view/WindowManagerPolicy$PointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
