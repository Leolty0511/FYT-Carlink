.class Lcom/android/internal/app/ShutdownCountdownActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownCountdownActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ShutdownCountdownActivity$2;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ShutdownCountdownActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2$1;->this$1:Lcom/android/internal/app/ShutdownCountdownActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const-string v0, "ShutdownCountdownActivity"

    .line 2
    .line 3
    const-string v1, "ShutdownThread->shutdown"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2$1;->this$1:Lcom/android/internal/app/ShutdownCountdownActivity$2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$100(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2$1;->this$1:Lcom/android/internal/app/ShutdownCountdownActivity$2;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$100(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2$1;->this$1:Lcom/android/internal/app/ShutdownCountdownActivity$2;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$400(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/os/IPowerManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string/jumbo v1, "timer"

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-interface {v0, v2, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    return-void
.end method
