.class public Lcom/syu/bt/MediaManager;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/MediaManager$MediaButtonReceiver;
    }
.end annotation


# static fields
.field public static iBtAv_CurTime_p:I

.field public static mInstance:Lcom/syu/bt/MediaManager;

.field public static mRunnable_setPlaybackState:Ljava/lang/Runnable;

.field private static mediaSession:Landroid/media/session/MediaSession;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private compName:Landroid/content/ComponentName;

.field private context:Landroid/content/Context;

.field private mediaState:Z

.field private sessionRegister:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput v0, Lcom/syu/bt/MediaManager;->iBtAv_CurTime_p:I

    .line 169
    new-instance v0, Lcom/syu/bt/MediaManager$1;

    invoke-direct {v0}, Lcom/syu/bt/MediaManager$1;-><init>()V

    sput-object v0, Lcom/syu/bt/MediaManager;->mRunnable_setPlaybackState:Ljava/lang/Runnable;

    .line 181
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/syu/bt/MediaManager;->context:Landroid/content/Context;

    .line 43
    const-string v0, "bt"

    const-string v1, "MediaManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/syu/bt/MediaManager;->audioManager:Landroid/media/AudioManager;

    .line 45
    return-void
.end method

.method static synthetic access$0()Landroid/media/session/MediaSession;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "bt"

    const-string v1, "MediaManager init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/syu/bt/MediaManager;

    invoke-direct {v0, p0}, Lcom/syu/bt/MediaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public dispFileInfo()V
    .locals 4

    .prologue
    .line 146
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 147
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 148
    .local v0, "metadataBuilder":Landroid/media/MediaMetadata$Builder;
    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 149
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sID3Album:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 150
    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sID3Album:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 152
    const-string v1, "android.media.metadata.DURATION"

    sget v2, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 155
    const-string v1, "android.media.metadata.TITLE"

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 156
    const-string v1, "android.media.metadata.ARTIST"

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sId3Artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 160
    sget-object v1, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    invoke-virtual {v1, v0}, Lcom/syu/bt/MediaManager;->updateMetadata(Landroid/media/MediaMetadata$Builder;)V

    .line 161
    const-string v1, "id33"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 MediaManager  dispFileInfo sId3Title = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iBtAv_CurTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iBtAv_CurTime_p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/syu/bt/MediaManager;->iBtAv_CurTime_p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bMediaManager:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/syu/bt/MediaManager;->iBtAv_CurTime_p:I

    sget v2, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/syu/bt/MediaManager;->setPlaybackState()V

    .line 166
    :cond_0
    sget v1, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    sput v1, Lcom/syu/bt/MediaManager;->iBtAv_CurTime_p:I

    .line 168
    .end local v0    # "metadataBuilder":Landroid/media/MediaMetadata$Builder;
    :cond_1
    return-void
.end method

.method public isMediaState()Z
    .locals 3

    .prologue
    .line 83
    const-string v0, "bt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaManager isMediaState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/syu/bt/MediaManager;->mediaState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v0, p0, Lcom/syu/bt/MediaManager;->mediaState:Z

    return v0
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 139
    const-string v0, "bt"

    const-string v1, "MediaManager onMediaButtonEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Lcom/syu/bt/MediaManager$MediaButtonReceiver;

    invoke-direct {v0, p0}, Lcom/syu/bt/MediaManager$MediaButtonReceiver;-><init>(Lcom/syu/bt/MediaManager;)V

    iget-object v1, p0, Lcom/syu/bt/MediaManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/syu/bt/MediaManager$MediaButtonReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 141
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public registerMediaButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 92
    const-string v1, "id33"

    const-string v2, " ** MediaManager registerMediaButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v1, p0, Lcom/syu/bt/MediaManager;->sessionRegister:Z

    if-eqz v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 97
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_1

    .line 98
    const-string v1, "bt"

    const-string v2, "Build.VERSION.SDK_INT <= Build.VERSION_CODES.LOLLIPOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "bt"

    const-string v2, "registerMediaButton MediaManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v1, Landroid/media/session/MediaSession;

    iget-object v2, p0, Lcom/syu/bt/MediaManager;->context:Landroid/content/Context;

    const-string v3, "MusicMediaBrowserService"

    invoke-direct {v1, v2, v3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    .line 103
    sget-object v1, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 105
    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 106
    const-wide/16 v2, 0xf35

    invoke-virtual {v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 110
    .local v0, "playbackState":Landroid/media/session/PlaybackState;
    sget-object v1, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 112
    sget-object v1, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, p0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 114
    iput-boolean v4, p0, Lcom/syu/bt/MediaManager;->sessionRegister:Z

    .line 115
    sget-object v1, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v4}, Landroid/media/session/MediaSession;->setActive(Z)V

    goto :goto_0
.end method

.method public setMediaState(Z)V
    .locals 0
    .param p1, "mediaState"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/syu/bt/MediaManager;->mediaState:Z

    .line 89
    return-void
.end method

.method public setPlaybackState()V
    .locals 4

    .prologue
    .line 191
    sget-object v0, Lcom/syu/bt/MediaManager;->mRunnable_setPlaybackState:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 192
    const/4 v0, 0x1

    sget-object v1, Lcom/syu/bt/MediaManager;->mRunnable_setPlaybackState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 203
    return-void
.end method

.method public unregisterMediaButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 120
    const-string v0, "id33"

    const-string v1, " ** MediaManager unregisterMediaButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_1

    .line 122
    const-string v0, "bt"

    const-string v1, "------------>>> unregisterMediaButton compName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v0, "bt"

    const-string v1, "MediaManager unregisterMediaButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-boolean v2, p0, Lcom/syu/bt/MediaManager;->sessionRegister:Z

    .line 128
    sget-object v0, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 130
    sget-object v0, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v3}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 131
    sget-object v0, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 132
    sput-object v3, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    goto :goto_0
.end method

.method public updateMetadata(Landroid/media/MediaMetadata$Builder;)V
    .locals 2
    .param p1, "Metadata"    # Landroid/media/MediaMetadata$Builder;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    sget-object v0, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/syu/bt/MediaManager;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 186
    :cond_0
    return-void
.end method
