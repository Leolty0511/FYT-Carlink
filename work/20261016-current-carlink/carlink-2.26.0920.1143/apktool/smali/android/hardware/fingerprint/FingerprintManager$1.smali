.class Landroid/hardware/fingerprint/FingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$1;->lambda$onLockoutReset$0(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method private static synthetic lambda$onLockoutReset$0(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;->onLockoutReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 10
    .line 11
    .line 12
    throw p0
.end method


# virtual methods
.method public onLockoutReset(JLandroid/os/IRemoteCallback;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$powerManager:Landroid/os/PowerManager;

    .line 3
    .line 4
    const-string/jumbo v0, "lockoutResetCallback"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 22
    .line 23
    new-instance v2, Landroid/hardware/fingerprint/a;

    .line 24
    .line 25
    invoke-direct {v2, v1, p2}, Landroid/hardware/fingerprint/a;-><init>(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    invoke-interface {p3, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method
