.class public interface abstract Lcom/android/internal/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/d$a;
    }
.end annotation


# virtual methods
.method public abstract attachToken(Landroid/os/IBinder;)V
.end method

.method public abstract bindInput(Landroid/view/inputmethod/InputBinding;)V
.end method

.method public abstract changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract createSession(Landroid/view/InputChannel;Lcom/android/internal/view/h;)V
.end method

.method public abstract hideSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract restartInput(Lcom/android/internal/view/b;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract revokeSession(Lcom/android/internal/view/g;)V
.end method

.method public abstract setSessionEnabled(Lcom/android/internal/view/g;Z)V
.end method

.method public abstract showSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract startInput(Lcom/android/internal/view/b;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract unbindInput()V
.end method
