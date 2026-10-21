.class Landroid/media/FocusRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"


# instance fields
.field private final mCallingUid:I

.field private final mClientId:Ljava/lang/String;

.field private mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

.field private final mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mFocusGainRequest:I

.field private mFocusLossReceived:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSourceRef:Landroid/os/IBinder;

.field private final mStreamType:I


# direct methods
.method public constructor <init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/media/FocusRequester;->mStreamType:I

    .line 3
    iput-object p3, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4
    iput-object p4, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 5
    iput-object p5, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    .line 7
    iput-object p7, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 8
    iput p8, p0, Landroid/media/FocusRequester;->mCallingUid:I

    .line 9
    iput p2, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    return-void
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object p0

    :pswitch_1
    const-string p0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object p0

    :pswitch_2
    const-string p0, "GAIN_TRANSIENT"

    return-object p0

    :pswitch_3
    const-string p0, "GAIN"

    return-object p0

    :pswitch_4
    const-string p0, "none"

    return-object p0

    :pswitch_5
    const-string p0, "LOSS"

    return-object p0

    :pswitch_6
    const-string p0, "LOSS_TRANSIENT"

    return-object p0

    :pswitch_7
    const-string p0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private focusGainToString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    invoke-static {v0}, Landroid/media/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private focusLossForGainRequest(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x3

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_8

    if-eqz v0, :cond_8

    .line 2
    :cond_1
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_7

    .line 3
    :cond_2
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_5

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaFocusControl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_3
    return v3

    :cond_4
    return v2

    :cond_5
    return v1

    :cond_6
    return v3

    :cond_7
    return v2

    :cond_8
    return v3
.end method

.method private focusLossToString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    invoke-static {v0}, Landroid/media/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/media/FocusRequester;->focusGainToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/media/FocusRequester;->focusLossToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/FocusRequester;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/FocusRequester;->release()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getGainRequest()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/FocusRequester;->mStreamType:I

    return v0
.end method

.method public handleExternalFocusGain(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/FocusRequester;->focusLossForGainRequest(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/FocusRequester;->handleFocusLoss(I)V

    return-void
.end method

.method public handleFocusGain(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaFocusControl"

    const-string v1, "Failure to signal gain of audio focus due to: "

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public handleFocusLoss(I)V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 4
    :cond_0
    iput p1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaFocusControl"

    const-string v1, "Failure to signal loss of audio focus due to:"

    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public hasSameBinder(Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasSameClient(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public hasSamePackage(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public hasSameUid(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/FocusRequester;->mCallingUid:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public release()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaFocusControl"

    const-string v2, "FocusRequester.release() hit "

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
