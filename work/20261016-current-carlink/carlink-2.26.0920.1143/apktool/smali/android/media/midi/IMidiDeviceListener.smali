.class public interface abstract Landroid/media/midi/IMidiDeviceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
.end method

.method public abstract onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
.end method

.method public abstract onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
.end method
