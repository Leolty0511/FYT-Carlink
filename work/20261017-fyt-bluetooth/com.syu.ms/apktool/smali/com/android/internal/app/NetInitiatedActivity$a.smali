.class public Lcom/android/internal/app/NetInitiatedActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$a;->a:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetInitiatedReceiver onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetInitiatedActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.NETWORK_INITIATED_VERIFY"

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$a;->a:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {p1, p2}, Lcom/android/internal/app/NetInitiatedActivity;->b(Lcom/android/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
