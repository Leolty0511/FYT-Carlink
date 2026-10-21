.class public Lcom/syu/broadcast/BtavNextService;
.super Landroid/app/Service;
.source "BtavNextService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 21
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtAv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->LauncherRequestAppIdBtAv()V

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    const-string v0, "gdy1"

    const-string v1, "  01  BtavNextService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/syu/bt/util/MyMediaPlayer;->getIntances()Lcom/syu/bt/util/MyMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/util/MyMediaPlayer;->audioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/syu/bt/util/MyMediaPlayer;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 27
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avNext()V

    .line 30
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
