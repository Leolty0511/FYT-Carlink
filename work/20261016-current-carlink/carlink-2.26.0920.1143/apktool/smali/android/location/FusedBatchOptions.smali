.class public Landroid/location/FusedBatchOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/FusedBatchOptions$BatchFlags;,
        Landroid/location/FusedBatchOptions$SourceTechnologies;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/FusedBatchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mFlags:I

.field private volatile mMaxPowerAllocationInMW:D

.field private volatile mPeriodInNS:J

.field private volatile mSmallestDisplacementMeters:F

.field private volatile mSourcesToUse:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/FusedBatchOptions$1;

    invoke-direct {v0}, Landroid/location/FusedBatchOptions$1;-><init>()V

    sput-object v0, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 10
    .line 11
    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .locals 2

    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    return-wide v0
.end method

.method public getPeriodInNS()J
    .locals 2

    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    return-wide v0
.end method

.method public getSmallestDisplacementMeters()F
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return v0
.end method

.method public getSourcesToUse()I
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return v0
.end method

.method public isFlagSet(I)Z
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSourceToUseSet(I)Z
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public resetFlag(I)V
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return-void
.end method

.method public resetSourceToUse(I)V
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return-void
.end method

.method public setFlag(I)V
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    return-void
.end method

.method public setPeriodInNS(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    return-void
.end method

.method public setSmallestDisplacementMeters(F)V
    .locals 0

    iput p1, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return-void
.end method

.method public setSourceToUse(I)V
    .locals 1

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
