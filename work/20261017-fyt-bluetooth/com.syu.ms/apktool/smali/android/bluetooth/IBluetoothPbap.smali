.class public interface abstract Landroid/bluetooth/IBluetoothPbap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothPbap$Stub;
    }
.end annotation


# virtual methods
.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract getClient()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getState()I
.end method

.method public abstract isConnected(Landroid/bluetooth/BluetoothDevice;)Z
.end method
