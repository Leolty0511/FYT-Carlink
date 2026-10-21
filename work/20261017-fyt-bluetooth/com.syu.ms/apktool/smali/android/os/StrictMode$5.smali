.class final Landroid/os/StrictMode$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$info:Landroid/os/StrictMode$ViolationInfo;

.field public final synthetic val$violationMaskSubset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0

    .line 1
    iput p2, p0, Landroid/os/StrictMode$5;->val$violationMaskSubset:I

    iput-object p3, p0, Landroid/os/StrictMode$5;->val$info:Landroid/os/StrictMode$ViolationInfo;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "StrictMode"

    const/16 v1, 0xa

    .line 1
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "No activity manager; failed to Dropbox violation."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->a()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/os/StrictMode$5;->val$violationMaskSubset:I

    iget-object v4, p0, Landroid/os/StrictMode$5;->val$info:Landroid/os/StrictMode$ViolationInfo;

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteException handling StrictMode violation"

    .line 5
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->access$1400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 7
    invoke-static {}, Landroid/os/StrictMode;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropbox complete; in-flight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
