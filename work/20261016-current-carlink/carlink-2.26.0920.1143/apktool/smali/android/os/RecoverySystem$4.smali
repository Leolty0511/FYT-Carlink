.class final Landroid/os/RecoverySystem$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$isWipeEuicc:Z


# direct methods
.method public constructor <init>(ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-boolean p1, p0, Landroid/os/RecoverySystem$4;->val$isWipeEuicc:Z

    iput-object p2, p0, Landroid/os/RecoverySystem$4;->val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.android.internal.action.EUICC_FACTORY_RESET"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const-string v0, "RecoverySystem"

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string p1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-boolean p2, p0, Landroid/os/RecoverySystem$4;->val$isWipeEuicc:Z

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const-string p2, "Error wiping euicc data, Detailed code = "

    .line 33
    .line 34
    invoke-static {p2, p1, v0}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p2, "Error retaining euicc data, Detailed code = "

    .line 39
    .line 40
    invoke-static {p2, p1, v0}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-boolean p1, p0, Landroid/os/RecoverySystem$4;->val$isWipeEuicc:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const-string p1, "Successfully wiped euicc data."

    .line 49
    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p1, "Successfully retained euicc data."

    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object p1, p0, Landroid/os/RecoverySystem$4;->val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method
