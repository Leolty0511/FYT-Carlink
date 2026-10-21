.class public final Landroid/media/midi/MidiOutputPort;
.super Landroid/media/midi/MidiSender;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiOutputPort"


# instance fields
.field private mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mInputStream:Ljava/io/FileInputStream;

.field private mIsClosed:Z

.field private final mPortNumber:I

.field private final mThread:Ljava/lang/Thread;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/media/midi/MidiSender;-><init>()V

    .line 2
    new-instance v0, Lcom/android/internal/midi/MidiDispatcher;

    invoke-direct {v0}, Lcom/android/internal/midi/MidiDispatcher;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    .line 4
    new-instance v1, Landroid/media/midi/MidiOutputPort$1;

    invoke-direct {v1, p0}, Landroid/media/midi/MidiOutputPort$1;-><init>(Landroid/media/midi/MidiOutputPort;)V

    iput-object v1, p0, Landroid/media/midi/MidiOutputPort;->mThread:Ljava/lang/Thread;

    .line 5
    iput-object p1, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 6
    iput-object p2, p0, Landroid/media/midi/MidiOutputPort;->mToken:Landroid/os/IBinder;

    .line 7
    iput p4, p0, Landroid/media/midi/MidiOutputPort;->mPortNumber:I

    .line 8
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    new-instance p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p2, p3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string p1, "close"

    .line 10
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static synthetic access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;
    .locals 0

    iget-object p0, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;
    .locals 0

    iget-object p0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiOutputPort;->mIsClosed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    .line 11
    .line 12
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    :try_start_1
    iget-object v2, p0, Landroid/media/midi/MidiOutputPort;->mToken:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-interface {v1, v2}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    :try_start_2
    const-string v1, "MidiOutputPort"

    .line 31
    .line 32
    const-string v2, "RemoteException in MidiOutputPort.close()"

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Landroid/media/midi/MidiOutputPort;->mIsClosed:Z

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw v1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/media/midi/MidiOutputPort;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final getPortNumber()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiOutputPort;->mPortNumber:I

    return v0
.end method

.method public onConnect(Landroid/media/midi/MidiReceiver;)V
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    return-void
.end method

.method public onDisconnect(Landroid/media/midi/MidiReceiver;)V
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiSender;->disconnect(Landroid/media/midi/MidiReceiver;)V

    return-void
.end method
