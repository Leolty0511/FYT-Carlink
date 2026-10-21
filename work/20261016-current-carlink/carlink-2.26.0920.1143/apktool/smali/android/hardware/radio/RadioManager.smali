.class public Landroid/hardware/radio/RadioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ProgramInfo;,
        Landroid/hardware/radio/RadioManager$AmBandConfig;,
        Landroid/hardware/radio/RadioManager$FmBandConfig;,
        Landroid/hardware/radio/RadioManager$BandConfig;,
        Landroid/hardware/radio/RadioManager$AmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$FmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$BandDescriptor;,
        Landroid/hardware/radio/RadioManager$ModuleProperties;,
        Landroid/hardware/radio/RadioManager$Band;
    }
.end annotation


# static fields
.field public static final BAND_AM:I = 0x0

.field public static final BAND_AM_HD:I = 0x3

.field public static final BAND_FM:I = 0x1

.field public static final BAND_FM_HD:I = 0x2

.field public static final BAND_INVALID:I = -0x1

.field public static final CLASS_AM_FM:I = 0x0

.field public static final CLASS_DT:I = 0x2

.field public static final CLASS_SAT:I = 0x1

.field public static final REGION_ITU_1:I = 0x0

.field public static final REGION_ITU_2:I = 0x1

.field public static final REGION_JAPAN:I = 0x3

.field public static final REGION_KOREA:I = 0x4

.field public static final REGION_OIRT:I = 0x2

.field public static final STATUS_BAD_VALUE:I = -0x16

.field public static final STATUS_DEAD_OBJECT:I = -0x20

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I = -0x26

.field public static final STATUS_NO_INIT:I = -0x13

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_PERMISSION_DENIED:I = -0x1

.field public static final STATUS_TIMED_OUT:I = -0x6e

.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.manager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/radio/IRadioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/hardware/radio/RadioManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string p1, "broadcastradio"

    .line 7
    .line 8
    invoke-static {p1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/hardware/radio/IRadioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IRadioService;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Landroid/hardware/radio/RadioManager;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/hardware/radio/RadioManager;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method

.method private native nativeListModules(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation
.end method

.method private static readStringMap(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v1
.end method

.method private static writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public listModules(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "BroadcastRadio.manager"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo p1, "the output list must not be empty"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/16 p1, -0x16

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    const-string v1, "Listing available tuners..."

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    .line 20
    .line 21
    invoke-interface {v1}, Landroid/hardware/radio/IRadioService;->listModules()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string p1, "Returned list was a null"

    .line 28
    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/high16 p1, -0x80000000

    .line 33
    .line 34
    return p1

    .line 35
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const-string v1, "Failed listing available tuners"

    .line 42
    .line 43
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    const/16 p1, -0x20

    .line 47
    .line 48
    return p1
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)Landroid/hardware/radio/RadioTuner;
    .locals 3

    .line 1
    const-string v0, "Failed to open tuner"

    .line 2
    .line 3
    if-eqz p4, :cond_2

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Opening tuner "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "..."

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "BroadcastRadio.manager"

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter;

    .line 30
    .line 31
    invoke-direct {v1, p4, p5}, Landroid/hardware/radio/TunerCallbackAdapter;-><init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    const/4 p4, 0x0

    .line 35
    :try_start_0
    iget-object p5, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    .line 36
    .line 37
    invoke-interface {p5, p1, p2, p3, v1}, Landroid/hardware/radio/IRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object p4

    .line 47
    :cond_0
    new-instance p3, Landroid/hardware/radio/TunerAdapter;

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p2, -0x1

    .line 57
    :goto_0
    invoke-direct {p3, p1, p2}, Landroid/hardware/radio/TunerAdapter;-><init>(Landroid/hardware/radio/ITuner;I)V

    .line 58
    .line 59
    .line 60
    return-object p3

    .line 61
    :catch_0
    move-exception p1

    .line 62
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    return-object p4

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p2, "callback must not be empty"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method
