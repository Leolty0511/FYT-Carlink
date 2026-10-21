.class Landroid/media/midi/MidiDeviceServer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "MidiDeviceServer"

    .line 2
    .line 3
    const-string v1, "MidiInputPort failed to send data"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/media/midi/MidiDeviceServer;->access$1200(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    monitor-enter p2

    .line 15
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->access$1200(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/media/midi/MidiDeviceServer$PortClient;

    .line 26
    .line 27
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method
