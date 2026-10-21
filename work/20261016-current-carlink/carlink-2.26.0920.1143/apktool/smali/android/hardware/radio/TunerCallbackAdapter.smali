.class Landroid/hardware/radio/TunerCallbackAdapter;
.super Landroid/hardware/radio/ITunerCallback$Stub;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.TunerCallbackAdapter"


# instance fields
.field private final mCallback:Landroid/hardware/radio/RadioTuner$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/radio/ITunerCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onBackgroundScanComplete$7()V

    return-void
.end method

.method public static synthetic b(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTrafficAnnouncement$3(Z)V

    return-void
.end method

.method public static synthetic c(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onAntennaState$5(Z)V

    return-void
.end method

.method public static synthetic d(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic e(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public static synthetic f(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onError$0(I)V

    return-void
.end method

.method public static synthetic g(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onProgramListChanged$8()V

    return-void
.end method

.method public static synthetic h(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onBackgroundScanAvailabilityChange$6(Z)V

    return-void
.end method

.method public static synthetic i(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onEmergencyAnnouncement$4(Z)V

    return-void
.end method

.method private synthetic lambda$onAntennaState$5(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onAntennaState(Z)V

    return-void
.end method

.method private synthetic lambda$onBackgroundScanAvailabilityChange$6(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method private synthetic lambda$onBackgroundScanComplete$7()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanComplete()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method private synthetic lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private synthetic lambda$onEmergencyAnnouncement$4(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method private synthetic lambda$onError$0(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method private synthetic lambda$onProgramListChanged$8()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramListChanged()V

    return-void
.end method

.method private synthetic lambda$onTrafficAnnouncement$3(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onTrafficAnnouncement(Z)V

    return-void
.end method


# virtual methods
.method public onAntennaState(Z)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Landroid/hardware/radio/d;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/hardware/radio/d;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackgroundScanComplete()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/hardware/radio/f;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/hardware/radio/c;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "BroadcastRadio.TunerCallbackAdapter"

    .line 4
    .line 5
    const-string v0, "ProgramInfo must not be null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Landroid/hardware/radio/c;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, p1, v2}, Landroid/hardware/radio/c;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroid/hardware/radio/d;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/e;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/e;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgramListChanged()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/radio/f;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Landroid/hardware/radio/d;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
