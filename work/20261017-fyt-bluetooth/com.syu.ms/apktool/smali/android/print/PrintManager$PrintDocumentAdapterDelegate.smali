.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.super Landroid/print/IPrintDocumentAdapter$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintDocumentAdapterDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDestroyed:Z

.field private mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

.field private mFinishRequested:Z

.field private mFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

.field private mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

.field private mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/print/IPrintDocumentAdapterObserver;

.field private mStartReqeusted:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/print/IPrintDocumentAdapter$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 5
    new-instance p2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 6
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    return p0
.end method

.method public static synthetic access$1100(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    return-void
.end method

.method public static synthetic access$200(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isFinished()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    return-object p0
.end method

.method public static synthetic access$502(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    return-object p1
.end method

.method public static synthetic access$602(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method public static synthetic access$700(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    return-object p0
.end method

.method public static synthetic access$702(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    return-object p1
.end method

.method public static synthetic access$800(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->clearLocked()V

    return-void
.end method

.method private cancelPreviousCancellableOperationLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clearLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 2
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 3
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 4
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    .line 5
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    .line 6
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v1, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    :cond_0
    return-void
.end method

.method private doPendingWorkLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStarted:Z

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStarted:Z

    .line 3
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinished:Z

    if-nez v0, :cond_3

    .line 9
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinished:Z

    .line 10
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private isFinished()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->cancelPreviousCancellableOperationLocked()Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    .line 4
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 8
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    .line 3
    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 4
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6
    iput-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 7
    :cond_0
    new-instance v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    invoke-direct {v2, p0, v3}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V

    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    .line 8
    iput-object p3, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->callback:Landroid/print/ILayoutResultCallback;

    .line 9
    iput-object p1, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->oldAttributes:Landroid/print/PrintAttributes;

    .line 10
    iput-object p2, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->newAttributes:Landroid/print/PrintAttributes;

    .line 11
    iput-object p4, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->metadata:Landroid/os/Bundle;

    .line 12
    iput p5, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->sequence:I

    .line 13
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->cancelPreviousCancellableOperationLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 16
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 17
    :try_start_1
    invoke-interface {p3, v3, p5}, Landroid/print/ILayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PrintManager"

    const-string p3, "Error notifying for cancelled layout"

    .line 18
    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    .line 4
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 5
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->clearLocked()V

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    :try_start_1
    invoke-interface {v2}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "PrintManager"

    const-string v1, "Error announcing destroyed state"

    .line 9
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    :try_start_1
    invoke-interface {p1}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PrintManager"

    const-string v1, "Error announcing destroyed state"

    .line 6
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    .line 4
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    .line 3
    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 4
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6
    iput-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 7
    :cond_0
    new-instance v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    invoke-direct {v2, p0, v3}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V

    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 8
    iput-object p3, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->callback:Landroid/print/IWriteResultCallback;

    .line 9
    iput-object p1, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->pages:[Landroid/print/PageRange;

    .line 10
    iput-object p2, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    .line 11
    iput p4, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->sequence:I

    .line 12
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->cancelPreviousCancellableOperationLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 15
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 16
    :try_start_1
    invoke-interface {p3, v3, p4}, Landroid/print/IWriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PrintManager"

    const-string p3, "Error notifying for cancelled write"

    .line 17
    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
