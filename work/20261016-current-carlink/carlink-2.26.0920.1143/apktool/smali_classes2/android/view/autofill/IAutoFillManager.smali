.class public interface abstract Landroid/view/autofill/IAutoFillManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I
.end method

.method public abstract cancelSession(II)V
.end method

.method public abstract disableOwnedAutofillServices(I)V
.end method

.method public abstract finishSession(II)V
.end method

.method public abstract getFillEventHistory()Landroid/service/autofill/FillEventHistory;
.end method

.method public abstract isServiceEnabled(ILjava/lang/String;)Z
.end method

.method public abstract isServiceSupported(I)Z
.end method

.method public abstract onPendingSaveUi(ILandroid/os/IBinder;)V
.end method

.method public abstract restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z
.end method

.method public abstract setAuthenticationResult(Landroid/os/Bundle;III)V
.end method

.method public abstract setHasCallback(IIZ)V
.end method

.method public abstract startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILjava/lang/String;)I
.end method

.method public abstract updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILjava/lang/String;II)I
.end method

.method public abstract updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
.end method
