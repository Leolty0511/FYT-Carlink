.class public interface abstract Landroid/bluetooth/IBluetoothHeadset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub;
    }
.end annotation


# virtual methods
.method public abstract acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract clccResponse(IIIIZLjava/lang/String;I)V
.end method

.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract connectAudio()Z
.end method

.method public abstract disconnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract disconnectAudio()Z
.end method

.method public abstract getAudioState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
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

.method public abstract isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract isAudioOn()Z
.end method

.method public abstract phoneStateChanged(IIILjava/lang/String;I)V
.end method

.method public abstract rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
.end method

.method public abstract startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
.end method
