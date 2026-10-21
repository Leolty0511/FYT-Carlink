.class public final Landroid/os/health/TimerStat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:I

.field private mTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/health/TimerStat$1;

    invoke-direct {v0}, Landroid/os/health/TimerStat$1;-><init>()V

    sput-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/os/health/TimerStat;->mCount:I

    .line 4
    iput-wide p2, p0, Landroid/os/health/TimerStat;->mTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/health/TimerStat;->mCount:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/os/health/TimerStat;->mCount:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Landroid/os/health/TimerStat;->mCount:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/health/TimerStat;->mTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/os/health/TimerStat;->mCount:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
