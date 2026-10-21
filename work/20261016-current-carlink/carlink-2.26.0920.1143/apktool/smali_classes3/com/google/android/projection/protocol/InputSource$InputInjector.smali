.class public interface abstract Lcom/google/android/projection/protocol/InputSource$InputInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputInjector"
.end annotation


# virtual methods
.method public abstract onKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract onMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onRelativeEvent(II)V
.end method
