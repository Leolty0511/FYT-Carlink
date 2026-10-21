.class public interface abstract Lcom/android/internal/view/IInputMethodClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBindMethod(Lcom/android/internal/view/InputBindResult;)V
.end method

.method public abstract onUnbindMethod(II)V
.end method

.method public abstract reportFullscreenMode(Z)V
.end method

.method public abstract setActive(ZZ)V
.end method

.method public abstract setUserActionNotificationSequenceNumber(I)V
.end method

.method public abstract setUsingInputMethod(Z)V
.end method
