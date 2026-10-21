.class public abstract Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UserInfoProvider"
.end annotation


# instance fields
.field private userIds:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->refreshUserIds()V

    return-void
.end method

.method private final exists(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private final refreshUserIds()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->getUserIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    return-void
.end method


# virtual methods
.method public abstract getUserIds()[I
.end method
