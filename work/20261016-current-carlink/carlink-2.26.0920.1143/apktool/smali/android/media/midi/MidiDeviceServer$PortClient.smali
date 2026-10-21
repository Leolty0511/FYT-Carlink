.class abstract Landroid/media/midi/MidiDeviceServer$PortClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PortClient"
.end annotation


# instance fields
.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    return-void
.end method

.method public abstract close()V
.end method

.method public getInputPort()Landroid/media/midi/MidiInputPort;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
