.class public Lcom/syu/broadcast/BtavPlayPauseService;
.super Landroid/app/Service;
.source "BtavPlayPauseService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 26
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtAv()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->LauncherRequestAppIdBtAv()V

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "status":Ljava/lang/String;
    const-string v1, "gdy1"

    const-string v2, "  02  BtavPlayPauseService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/syu/bt/util/MyMediaPlayer;->getIntances()Lcom/syu/bt/util/MyMediaPlayer;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/util/MyMediaPlayer;->audioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/syu/bt/util/MyMediaPlayer;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 37
    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlay()V

    .line 50
    .end local v0    # "status":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 39
    .restart local v0    # "status":Ljava/lang/String;
    :cond_2
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPause()V

    goto :goto_0

    .line 42
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlayPause()V

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlayPause()V

    goto :goto_0
.end method
