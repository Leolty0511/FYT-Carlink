.class public interface abstract Landroid/bluetooth/le/IAdvertisingSetCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAdvertisingDataSet(II)V
.end method

.method public abstract onAdvertisingEnabled(IZI)V
.end method

.method public abstract onAdvertisingParametersUpdated(III)V
.end method

.method public abstract onAdvertisingSetStarted(III)V
.end method

.method public abstract onAdvertisingSetStopped(I)V
.end method

.method public abstract onOwnAddressRead(IILjava/lang/String;)V
.end method

.method public abstract onPeriodicAdvertisingDataSet(II)V
.end method

.method public abstract onPeriodicAdvertisingEnabled(IZI)V
.end method

.method public abstract onPeriodicAdvertisingParametersUpdated(II)V
.end method

.method public abstract onScanResponseDataSet(II)V
.end method
