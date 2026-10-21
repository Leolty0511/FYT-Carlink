.class Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeWeightedEMA"
.end annotation


# instance fields
.field private final mAlpha:D

.field private mProduct:D

.field private mValue:D

.field private mVolume:D

.field public final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    .line 3
    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    .line 4
    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    .line 5
    iput-wide p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    return-void
.end method

.method public static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    return-wide v0
.end method

.method public static synthetic access$4300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    return-wide v0
.end method


# virtual methods
.method public update(DI)V
    .locals 10

    if-gtz p3, :cond_0

    return-void

    :cond_0
    int-to-double v0, p3

    mul-double/2addr p1, v0

    .line 1
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    mul-double/2addr p1, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, v2

    iget-wide v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    mul-double/2addr v6, v8

    add-double/2addr p1, v6

    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    mul-double/2addr v0, v2

    sub-double/2addr v4, v2

    .line 2
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    div-double/2addr p1, v0

    .line 3
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    return-void
.end method
