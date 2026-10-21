.class public interface abstract Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
.end method

.method public abstract onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
.end method

.method public abstract onSyncLost(I)V
.end method
