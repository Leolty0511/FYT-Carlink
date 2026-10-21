.class public interface abstract Landroid/media/midi/IMidiManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
.end method

.method public abstract getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
.end method

.method public abstract getDevices()[Landroid/media/midi/MidiDeviceInfo;
.end method

.method public abstract getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
.end method

.method public abstract openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
.end method

.method public abstract openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
.end method

.method public abstract registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;
.end method

.method public abstract registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
.end method

.method public abstract setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
.end method

.method public abstract unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
.end method

.method public abstract unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
.end method
