.class final Landroid/os/ParcelFileDescriptor$ListenerBridge;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerBridge"
.end annotation


# instance fields
.field private mCommFd:Ljava/io/FileDescriptor;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    .line 3
    new-instance p1, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;

    invoke-direct {p1, p0, p2, p3}, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;-><init>(Landroid/os/ParcelFileDescriptor$ListenerBridge;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 1
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v2, v0}, Landroid/os/ParcelFileDescriptor;->access$000(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v0

    .line 2
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 4
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 6
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    throw v0
.end method
