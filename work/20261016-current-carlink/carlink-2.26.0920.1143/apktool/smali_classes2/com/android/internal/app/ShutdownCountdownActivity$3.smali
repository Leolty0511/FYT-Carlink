.class Lcom/android/internal/app/ShutdownCountdownActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownCountdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownCountdownActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ShutdownCountdownActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity$3;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/internal/app/ShutdownCountdownActivity$3;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$300(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$3;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$200(Lcom/android/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity$3;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
