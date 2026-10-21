.class abstract Landroid/webkit/WebSyncManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSyncManager$SyncHandler;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "websync"

.field private static SYNC_LATER_INTERVAL:I = 0x493e0

.field private static final SYNC_MESSAGE:I = 0x65

.field private static SYNC_NOW_INTERVAL:I = 0x64


# instance fields
.field public mDataBase:Landroid/webkit/WebViewDatabase;

.field public mHandler:Landroid/os/Handler;

.field private mStartSyncRefCount:I

.field private mSyncThread:Ljava/lang/Thread;

.field private mThreadName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/webkit/WebSyncManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/webkit/WebSyncManager;->mThreadName:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroid/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    .line 5
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mThreadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroid/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSyncInit()V
    .locals 0

    return-void
.end method

.method public resetSync()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x65

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Landroid/webkit/WebSyncManager$SyncHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebSyncManager$SyncHandler;-><init>(Landroid/webkit/WebSyncManager;Landroid/webkit/WebSyncManager$1;)V

    iput-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebSyncManager;->onSyncInit()V

    const/16 v0, 0xa

    .line 4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public startSync()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x65

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public stopSync()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    if-nez v1, :cond_1

    const/16 v1, 0x65

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public sync()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x65

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_NOW_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public abstract syncFromRamToFlash()V
.end method
