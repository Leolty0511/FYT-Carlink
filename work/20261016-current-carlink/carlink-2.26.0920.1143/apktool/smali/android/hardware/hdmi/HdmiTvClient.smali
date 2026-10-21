.class public final Landroid/hardware/hdmi/HdmiTvClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;,
        Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;,
        Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiTvClient"

.field public static final VENDOR_DATA_SIZE:I = 0x10


# direct methods
.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-void
.end method

.method private checkTimerRecordingSourceType(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Invalid source type:"

    .line 14
    .line 15
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public static create(Landroid/hardware/hdmi/IHdmiControlService;)Landroid/hardware/hdmi/HdmiTvClient;
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-object v0
.end method

.method private static getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$1;-><init>(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V

    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$2;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$2;-><init>(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V

    return-object v0
.end method

.method private getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    .locals 1

    .line 3
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$4;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiTvClient$4;-><init>(Landroid/hardware/hdmi/HdmiTvClient;Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V

    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
    .locals 1

    .line 2
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$3;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$3;-><init>(Landroid/hardware/hdmi/HdmiRecordListener;)V

    return-object v0
.end method


# virtual methods
.method public clearTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p3, v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 17
    .line 18
    invoke-interface {p3, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->clearTimerRecording(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-string p2, "HdmiTvClient"

    .line 24
    .line 25
    const-string p3, "failed to start record: "

    .line 26
    .line 27
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string/jumbo p2, "source must not be null."

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string p2, "HdmiTvClient"

    .line 15
    .line 16
    const-string v0, "failed to select device: "

    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p2, "callback must not be null."

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, "TAG"

    .line 10
    .line 11
    const-string v2, "Failed to call getDeviceList():"

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public portSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string p2, "HdmiTvClient"

    .line 15
    .line 16
    const-string v0, "failed to select port: "

    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p2, "Callback must not be null"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public sendMhlVendorCommand(III[B)V
    .locals 2

    .line 1
    if-eqz p4, :cond_2

    .line 2
    .line 3
    array-length v0, p4

    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    if-ltz p2, :cond_1

    .line 9
    .line 10
    if-ge p2, v1, :cond_1

    .line 11
    .line 12
    if-ltz p3, :cond_0

    .line 13
    .line 14
    add-int v0, p2, p3

    .line 15
    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 19
    .line 20
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->sendMhlVendorCommand(III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    const-string p2, "HdmiTvClient"

    .line 26
    .line 27
    const-string p3, "failed to send vendor command: "

    .line 28
    .line 29
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Invalid length:"

    .line 36
    .line 37
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p3, "Invalid offset:"

    .line 48
    .line 49
    invoke-static {p3, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p2, "Invalid vendor command data."

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public sendStandby(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTvClient;->getDeviceType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->sendStandby(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    const-string v0, "HdmiTvClient"

    .line 13
    .line 14
    const-string/jumbo v1, "sendStandby threw exception "

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string v0, "HdmiTvClient"

    .line 15
    .line 16
    const-string v1, "failed to set hdmi mhl vendor command listener: "

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string/jumbo v0, "listener must not be null."

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string v0, "TAG"

    .line 15
    .line 16
    const-string v1, "Failed to set InputChangeListener:"

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string/jumbo v0, "listener must not be null."

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public setRecordListener(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string v0, "HdmiTvClient"

    .line 15
    .line 16
    const-string v1, "failed to set record listener."

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string/jumbo v0, "listener must not be null."

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    const-string p2, "HdmiTvClient"

    .line 13
    .line 14
    const-string v0, "failed to set system audio mode:"

    .line 15
    .line 16
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setSystemAudioMute(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "HdmiTvClient"

    .line 9
    .line 10
    const-string v1, "failed to set mute: "

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setSystemAudioVolume(III)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string p2, "HdmiTvClient"

    .line 9
    .line 10
    const-string p3, "failed to set volume: "

    .line 11
    .line 12
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public startOneTouchRecord(ILandroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 15
    .line 16
    invoke-interface {p2, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->startOneTouchRecord(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    const-string p2, "HdmiTvClient"

    .line 22
    .line 23
    const-string v0, "failed to start record: "

    .line 24
    .line 25
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo p2, "source must not be null."

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public startTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p3, v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 17
    .line 18
    invoke-interface {p3, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->startTimerRecording(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-string p2, "HdmiTvClient"

    .line 24
    .line 25
    const-string p3, "failed to start record: "

    .line 26
    .line 27
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string/jumbo p2, "source must not be null."

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public stopOneTouchRecord(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->stopOneTouchRecord(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "HdmiTvClient"

    .line 9
    .line 10
    const-string v1, "failed to stop record: "

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
