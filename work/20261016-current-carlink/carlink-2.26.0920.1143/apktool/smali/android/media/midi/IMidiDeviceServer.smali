.class public interface abstract Landroid/media/midi/IMidiDeviceServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceServer$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeDevice()V
.end method

.method public abstract closePort(Landroid/os/IBinder;)V
.end method

.method public abstract connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I
.end method

.method public abstract getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
.end method

.method public abstract openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
.end method

.method public abstract openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
.end method

.method public abstract setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
.end method
