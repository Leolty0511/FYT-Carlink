.class public interface abstract Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract launchProjection(Landroid/bluetooth/BluetoothDevice;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onConnectedTo(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onConnectedTo(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onDisconnectedFrom(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onDisconnectedFrom(Landroid/hardware/usb/UsbDevice;)V
.end method
