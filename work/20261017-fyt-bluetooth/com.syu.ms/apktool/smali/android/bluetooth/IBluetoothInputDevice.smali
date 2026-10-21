.class public interface abstract Landroid/bluetooth/IBluetoothInputDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothInputDevice$Stub;
    }
.end annotation


# virtual methods
.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract disconnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract getConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPriority(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
.end method

.method public abstract sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
.end method

.method public abstract setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
.end method

.method public abstract setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
.end method

.method public abstract setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
.end method

.method public abstract virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
.end method
