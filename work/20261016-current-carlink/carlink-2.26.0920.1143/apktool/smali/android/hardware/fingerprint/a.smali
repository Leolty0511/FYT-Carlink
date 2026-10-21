.class public final synthetic Landroid/hardware/fingerprint/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field public final synthetic c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/a;->b:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    iput-object p2, p0, Landroid/hardware/fingerprint/a;->c:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/a;->b:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$1;->a(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method
