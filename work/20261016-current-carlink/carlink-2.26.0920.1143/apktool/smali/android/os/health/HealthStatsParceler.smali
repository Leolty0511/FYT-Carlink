.class public Landroid/os/health/HealthStatsParceler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/health/HealthStatsParceler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHealthStats:Landroid/os/health/HealthStats;

.field private mWriter:Landroid/os/health/HealthStatsWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/health/HealthStatsParceler$1;

    invoke-direct {v0}, Landroid/os/health/HealthStatsParceler$1;-><init>()V

    sput-object v0, Landroid/os/health/HealthStatsParceler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/health/HealthStats;

    invoke-direct {v0, p1}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    return-void
.end method

.method public constructor <init>(Landroid/os/health/HealthStatsWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHealthStats()Landroid/os/health/HealthStats;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/os/health/HealthStats;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    .line 29
    .line 30
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string p2, "Can not re-parcel HealthStatsParceler that was constructed from a Parcel"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method
