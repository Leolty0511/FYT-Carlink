.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$NetworkDataEntry;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"

.field private static final UNKNOWN:I = 0x7fffffff

.field private static final VDBG:Z = false

.field private static mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lu/b;

.field private mDefaultRouteSet:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPhoneService:Lr/d;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mSamplingDataTracker:Landroid/net/SamplingDataTracker;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field public mUserDataEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0xf

    new-array v1, v0, [Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    .line 1
    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x2

    const/16 v4, 0xed

    const/16 v5, 0x76

    const v6, 0x7fffffff

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v4, 0x1

    const/16 v5, 0x30

    const/16 v7, 0x28

    invoke-direct {v2, v4, v5, v7, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v4, 0x3

    const/16 v5, 0x180

    const/16 v7, 0x40

    invoke-direct {v2, v4, v5, v7, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0x8

    const/16 v5, 0x3840

    invoke-direct {v2, v3, v5, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v4, 0x9

    const/16 v7, 0x1680

    invoke-direct {v2, v4, v5, v7, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v9, 0xa

    invoke-direct {v2, v9, v5, v7, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v10, 0x5208

    invoke-direct {v2, v0, v10, v7, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    const/4 v0, 0x6

    aput-object v2, v1, v0

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    invoke-direct {v2, v8, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    const/4 v7, 0x7

    aput-object v2, v1, v7

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    invoke-direct {v2, v7, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0x9a4

    const/16 v7, 0x99

    invoke-direct {v2, v5, v3, v7, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xc00

    const/16 v4, 0x708

    invoke-direct {v2, v0, v3, v4, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v1, v9

    new-instance v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v2, 0xc

    const/16 v3, 0x396c

    invoke-direct {v0, v2, v3, v4, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-instance v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    invoke-direct {v0, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v0, v1, v2

    new-instance v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v2, 0xd

    const v3, 0x186a0

    const v4, 0xc350

    invoke-direct {v0, v2, v3, v4, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v0, v1, v2

    new-instance v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v2, 0xe

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v0, v1, v2

    sput-object v1, Landroid/net/MobileDataStateTracker;->mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 3
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 4
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 6
    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/MobileDataStateTracker;->mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Landroid/net/SamplingDataTracker;

    invoke-direct {v0}, Landroid/net/SamplingDataTracker;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    .line 9
    new-instance v0, Landroid/net/MobileDataStateTracker$1;

    invoke-direct {v0, p0}, Landroid/net/MobileDataStateTracker$1;-><init>(Landroid/net/MobileDataStateTracker;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 10
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 11
    invoke-static {p1}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1000(Landroid/net/MobileDataStateTracker;)Landroid/net/SamplingDataTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/net/MobileDataStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method public static synthetic access$1100(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public static synthetic access$1102(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method public static synthetic access$1200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$202(Landroid/net/MobileDataStateTracker;Lu/b;)Lu/b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    return-object p1
.end method

.method public static synthetic access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0
.end method

.method public static synthetic access$502(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method public static synthetic access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    return-object p0
.end method

.method private static getNetworkDataEntry(I)Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    .locals 5

    .line 1
    sget-object v0, Landroid/net/MobileDataStateTracker;->mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->networkType:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find Theoretical BW entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNormalizedSignalStrength(ILandroid/telephony/SignalStrength;)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const p0, 0x7fffffff

    return p0

    .line 1
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result p0

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result p0

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result p0

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result p0

    :goto_0
    mul-int/lit8 p0, p0, 0x64

    .line 5
    div-int/lit8 p0, p0, 0x5

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getPhoneService(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lr/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "phone"

    .line 2
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr/d$a;->J2(Landroid/os/IBinder;)Lr/d;

    move-result-object p1

    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lr/d;

    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/16 v0, 0xe

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to apnType."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/MobileDataStateTracker;->sloge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "cbs"

    return-object p0

    :pswitch_1
    const-string p0, "ims"

    return-object p0

    :pswitch_2
    const-string p0, "fota"

    return-object p0

    :cond_0
    const-string p0, "hipri"

    return-object p0

    :cond_1
    const-string p0, "dun"

    return-object p0

    :cond_2
    const-string/jumbo p0, "supl"

    return-object p0

    :cond_3
    const-string p0, "mms"

    return-object p0

    :cond_4
    const-string p0, "ia"

    return-object p0

    :cond_5
    const-string p0, "default"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDetailed state, old ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 3
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    move-object p2, v1

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/high16 p2, 0x70000

    new-instance p3, Landroid/net/NetworkInfo;

    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p3, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lr/d;

    if-nez v1, :cond_0

    const-string v0, "Ignoring feature request because could not acquire PhoneService"

    .line 3
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    :try_start_0
    invoke-interface {v1, p1}, Lr/d;->A(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-interface {v1, p1}, Lr/d;->h2(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const-string p2, "enable"

    goto :goto_2

    :cond_4
    const-string p2, "disable"

    :goto_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " APN type \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MobileDataStateTracker"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "linkProperties"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    const-string v0, "CONNECTED event did not supply link properties."

    .line 2
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    const-string v0, "linkCapabilities"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/LinkCapabilities;

    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez p1, :cond_1

    const-string p1, "CONNECTED event did not supply link capabilities."

    .line 6
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/net/LinkCapabilities;

    invoke-direct {p1}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    :cond_1
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    :cond_0
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    return-void
.end method

.method public enableMobileProvisioning(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMobileProvisioning(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x42025

    .line 4
    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, "provisioningUrl"

    .line 5
    invoke-static {v2, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {v0, v1}, Lu/b;->p(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkQualityInfo;->setNetworkType(I)V

    .line 4
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v1, v0}, Landroid/net/SamplingDataTracker;->setCommonLinkQualityInfoFields(Landroid/net/LinkQualityInfo;)V

    .line 5
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/MobileLinkQualityInfo;->setMobileNetworkType(I)V

    .line 7
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Landroid/net/MobileDataStateTracker;->getNetworkDataEntry(I)Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget v2, v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->downloadBandwidth:I

    invoke-virtual {v0, v2}, Landroid/net/LinkQualityInfo;->setTheoreticalRxBandwidth(I)V

    .line 9
    iget v2, v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->uploadBandwidth:I

    invoke-virtual {v0, v2}, Landroid/net/LinkQualityInfo;->setTheoreticalRxBandwidth(I)V

    .line 10
    iget v1, v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->latency:I

    invoke-virtual {v0, v1}, Landroid/net/LinkQualityInfo;->setTheoreticalLatency(I)V

    .line 11
    :cond_1
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/net/MobileLinkQualityInfo;->getMobileNetworkType()I

    move-result v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-static {v1, v2}, Landroid/net/MobileDataStateTracker;->getNormalizedSignalStrength(ILandroid/telephony/SignalStrength;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkQualityInfo;->setNormalizedSignalStrength(I)V

    .line 13
    :cond_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setRssi(I)V

    .line 15
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setGsmErrorRate(I)V

    .line 16
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setCdmaDbm(I)V

    .line 17
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setCdmaEcio(I)V

    .line 18
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setEvdoDbm(I)V

    .line 19
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setEvdoEcio(I)V

    .line 20
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setEvdoSnr(I)V

    .line 21
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setLteSignalStrength(I)V

    .line 22
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setLteRsrp(I)V

    .line 23
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setLteRsrq(I)V

    .line 24
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/MobileLinkQualityInfo;->setLteRssnr(I)V

    .line 25
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/MobileLinkQualityInfo;->setLteCqi(I)V

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const-string v2, "evdo"

    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    const-string/jumbo v2, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v2, "hspap"

    goto :goto_0

    :pswitch_1
    const-string v2, "ehrpd"

    goto :goto_0

    :pswitch_2
    const-string v2, "lte"

    goto :goto_0

    :pswitch_3
    const-string v2, "iden"

    goto :goto_0

    :pswitch_4
    const-string v2, "hspa"

    goto :goto_0

    :pswitch_5
    const-string v2, "hsupa"

    goto :goto_0

    :pswitch_6
    const-string v2, "hsdpa"

    goto :goto_0

    :pswitch_7
    const-string v2, "1xrtt"

    goto :goto_0

    :pswitch_8
    const-string v2, "cdma"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v2, "umts"

    goto :goto_0

    :pswitch_a
    const-string v2, "edge"

    goto :goto_0

    :pswitch_b
    const-string v2, "gprs"

    .line 4
    :goto_0
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net.tcp.buffersize."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isProvisioningNetwork()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x42026

    .line 2
    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, "apnType"

    .line 3
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    invoke-virtual {v2, v1}, Lu/b;->u(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 5
    iget v1, v1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isProvisioningNetwork: X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 7
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProvisioningNetwork: retVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    return-void
.end method

.method public reconnect()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const-string v1, "Error in reconnect - unexpected response."

    .line 3
    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public releaseWakeLock()V
    .locals 0

    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "apnType"

    invoke-static {v1, v0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDependencyMet: E met="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x4201f

    .line 4
    iput v2, v1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    iget-object p1, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    invoke-virtual {p1, v1}, Lu/b;->p(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDependencyMet: X mAc was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setEnableFailFastMobileData(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnableFailFastMobileData(enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    if-eqz v0, :cond_0

    const v1, 0x42024

    .line 3
    invoke-virtual {v0, v1, p1}, Lu/b;->l(II)V

    :cond_0
    return-void
.end method

.method public setInternalDataEnable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInternalDataEnable: E enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    if-eqz v0, :cond_0

    const v1, 0x4201b

    .line 3
    invoke-virtual {v0, v1, p1}, Lu/b;->l(II)V

    :cond_0
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPolicyDataEnable(enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    if-eqz v0, :cond_0

    const v1, 0x42020

    .line 3
    invoke-virtual {v0, v1, p1}, Lu/b;->l(II)V

    .line 4
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    :cond_0
    return-void
.end method

.method public setRadio(Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lr/d;

    if-nez v2, :cond_0

    const-string v1, "Ignoring mobile radio request because could not acquire PhoneService"

    .line 3
    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lr/d;->setRadio(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set radio power to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string p1, "on"

    goto :goto_2

    :cond_3
    const-string p1, "off"

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserDataEnable: E enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lu/b;

    if-eqz v0, :cond_0

    const v1, 0x4201e

    .line 3
    invoke-virtual {v0, v1, p1}, Lu/b;->l(II)V

    .line 4
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    :cond_0
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iput-object p2, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 2
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/net/MobileDataStateTracker$MdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/net/MobileDataStateTracker$MdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V

    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.ANY_DATA_STATE"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.DATA_CONNECTION_FAILED"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$DataState;->c:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 10
    iget-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 11
    iget-object p2, p0, Landroid/net/MobileDataStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v0, 0x100

    invoke-virtual {p1, p2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 3

    .line 1
    new-instance v0, Lu/b;

    invoke-direct {v0}, Lu/b;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p1}, Lu/b;->b(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    return-void
.end method

.method public teardown()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "Mobile data state: "

    .line 3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "Data enabled: user="

    .line 4
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, ", policy="

    .line 5
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 6
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
