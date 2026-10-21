.class Lcom/syu/bt/MediaManager$MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaButtonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/MediaManager;


# direct methods
.method constructor <init>(Lcom/syu/bt/MediaManager;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/syu/bt/MediaManager$MediaButtonReceiver;->this$0:Lcom/syu/bt/MediaManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 61
    .local v0, "event":Landroid/view/KeyEvent;
    const-string v1, "bt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ** MediaButtonReceiver getKeyCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :sswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avNext()V

    goto :goto_0

    .line 69
    :sswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPrev()V

    goto :goto_0

    .line 74
    :sswitch_2
    const-string v1, "LZP"

    const-string v2, "event.getKeyCode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlayPause()V

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_2
        0x57 -> :sswitch_0
        0x58 -> :sswitch_1
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
    .end sparse-switch
.end method
