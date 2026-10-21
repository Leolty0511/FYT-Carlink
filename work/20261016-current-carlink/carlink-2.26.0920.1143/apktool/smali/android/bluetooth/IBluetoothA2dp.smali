.class public interface abstract Landroid/bluetooth/IBluetoothA2dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub;
    }
.end annotation


# virtual methods
.method public abstract adjustAvrcpAbsoluteVolume(I)V
.end method

.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract disableOptionalCodecs()V
.end method

.method public abstract disconnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract enableOptionalCodecs()V
.end method

.method public abstract getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;
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

.method public abstract getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getPriority(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract isAvrcpAbsoluteVolumeSupported()Z
.end method

.method public abstract setAvrcpAbsoluteVolume(I)V
.end method

.method public abstract setCodecConfigPreference(Landroid/bluetooth/BluetoothCodecConfig;)V
.end method

.method public abstract setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
.end method

.method public abstract supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I
.end method
