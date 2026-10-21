.class public interface abstract Landroid/service/autofill/IFillCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IFillCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCancellable(Landroid/os/ICancellationSignal;)V
.end method

.method public abstract onFailure(Ljava/lang/CharSequence;)V
.end method

.method public abstract onSuccess(Landroid/service/autofill/FillResponse;)V
.end method
