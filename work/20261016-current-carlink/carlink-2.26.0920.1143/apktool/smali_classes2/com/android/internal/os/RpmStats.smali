.class public final Lcom/android/internal/os/RpmStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RpmStats$PowerStateSubsystem;,
        Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;,
        Lcom/android/internal/os/RpmStats$PowerStateElement;
    }
.end annotation


# instance fields
.field public mPlatformLowPowerStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;",
            ">;"
        }
    .end annotation
.end field

.field public mSubsystemLowPowerStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStateSubsystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getAndUpdatePlatformState(Ljava/lang/String;JI)Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-wide p2, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mTimeMs:J

    .line 22
    .line 23
    iput p4, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mCount:I

    .line 24
    .line 25
    return-object v0
.end method

.method public getSubsystem(Ljava/lang/String;)Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method
