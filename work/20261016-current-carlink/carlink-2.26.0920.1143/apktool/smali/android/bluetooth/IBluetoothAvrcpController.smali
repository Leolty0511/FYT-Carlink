.class public interface abstract Landroid/bluetooth/IBluetoothAvrcpController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothAvrcpController$Stub;
    }
.end annotation


# virtual methods
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

.method public abstract getElementAttrCmd()V
.end method

.method public abstract getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
.end method

.method public abstract sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V
.end method

.method public abstract sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
.end method

.method public abstract setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z
.end method
