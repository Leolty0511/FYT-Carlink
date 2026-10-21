.class public interface abstract Lcom/android/ims/internal/IImsUt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract queryCLIP()I
.end method

.method public abstract queryCLIR()I
.end method

.method public abstract queryCOLP()I
.end method

.method public abstract queryCOLR()I
.end method

.method public abstract queryCallBarring(I)I
.end method

.method public abstract queryCallForward(ILjava/lang/String;)I
.end method

.method public abstract queryCallWaiting()I
.end method

.method public abstract setListener(Lcom/android/ims/internal/IImsUtListener;)V
.end method

.method public abstract transact(Landroid/os/Bundle;)I
.end method

.method public abstract updateCLIP(Z)I
.end method

.method public abstract updateCLIR(I)I
.end method

.method public abstract updateCOLP(Z)I
.end method

.method public abstract updateCOLR(I)I
.end method

.method public abstract updateCallBarring(II[Ljava/lang/String;)I
.end method

.method public abstract updateCallForward(IILjava/lang/String;II)I
.end method

.method public abstract updateCallWaiting(ZI)I
.end method
