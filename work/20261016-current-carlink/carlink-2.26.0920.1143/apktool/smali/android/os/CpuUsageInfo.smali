.class public final Landroid/os/CpuUsageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CpuUsageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActive:J

.field private mTotal:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/CpuUsageInfo$1;

    invoke-direct {v0}, Landroid/os/CpuUsageInfo$1;-><init>()V

    sput-object v0, Landroid/os/CpuUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroid/os/CpuUsageInfo;->mActive:J

    .line 4
    iput-wide p3, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Landroid/os/CpuUsageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/CpuUsageInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/CpuUsageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActive()J
    .locals 2

    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
