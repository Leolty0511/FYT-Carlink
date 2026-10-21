.class public interface abstract Lcom/android/internal/view/IInputMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethod$Stub;
    }
.end annotation


# virtual methods
.method public abstract attachToken(Landroid/os/IBinder;)V
.end method

.method public abstract bindInput(Landroid/view/inputmethod/InputBinding;)V
.end method

.method public abstract changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
.end method

.method public abstract hideSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
.end method

.method public abstract setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
.end method

.method public abstract showSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;Z)V
.end method

.method public abstract unbindInput()V
.end method
