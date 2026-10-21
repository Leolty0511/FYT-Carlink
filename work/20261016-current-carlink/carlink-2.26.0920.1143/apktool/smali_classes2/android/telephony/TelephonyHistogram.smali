.class public final Landroid/telephony/TelephonyHistogram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ABSENT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRESENT:I = 0x1

.field private static final RANGE_CALCULATION_COUNT:I = 0xa

.field public static final TELEPHONY_CATEGORY_RIL:I = 0x1


# instance fields
.field private mAverageTimeMs:I

.field private final mBucketCount:I

.field private final mBucketCounters:[I

.field private final mBucketEndPoints:[I

.field private final mCategory:I

.field private final mId:I

.field private mInitialTimings:[I

.field private mMaxTimeMs:I

.field private mMinTimeMs:I

.field private mSampleCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/TelephonyHistogram$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyHistogram$1;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 3
    iput p2, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    const p1, 0x7fffffff

    .line 4
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 6
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 7
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 p1, 0xa

    new-array p1, p1, [I

    .line 8
    iput-object p1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 9
    iput p3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 p1, p3, -0x1

    .line 10
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 11
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid number of buckets"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 32
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v1, v0, -0x1

    .line 35
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 37
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyHistogram;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 15
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 16
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 17
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 18
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 19
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 20
    invoke-direct {p1}, Landroid/telephony/TelephonyHistogram;->getInitialTimings()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 21
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 22
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 23
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    return-void
.end method

.method private addToBucketCounter([I[II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    aget v1, p1, v0

    .line 6
    .line 7
    if-gt p3, v1, :cond_0

    .line 8
    .line 9
    aget p1, p2, v0

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    aput p1, p2, v0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    aget p1, p2, v0

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    aput p1, p2, v0

    .line 24
    .line 25
    return-void
.end method

.method private calculateBucketEndPoints([I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 7
    .line 8
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 9
    .line 10
    sub-int/2addr v3, v2

    .line 11
    mul-int/2addr v3, v0

    .line 12
    div-int/2addr v3, v1

    .line 13
    add-int/2addr v3, v2

    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    aput v3, p1, v1

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private getDeepCopyOfArray([I)[I
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    array-length v2, p1

    .line 6
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private getInitialTimings()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    return-object v0
.end method


# virtual methods
.method public addTimeTaken(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    const v4, 0x7fffffff

    .line 10
    .line 11
    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 16
    .line 17
    if-ge p1, v4, :cond_1

    .line 18
    .line 19
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 20
    .line 21
    :cond_1
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 22
    .line 23
    if-le p1, v4, :cond_2

    .line 24
    .line 25
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 26
    .line 27
    :cond_2
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 28
    .line 29
    int-to-long v4, v4

    .line 30
    int-to-long v6, v0

    .line 31
    mul-long/2addr v4, v6

    .line 32
    int-to-long v6, p1

    .line 33
    add-long/2addr v4, v6

    .line 34
    add-int/2addr v0, v3

    .line 35
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 36
    .line 37
    int-to-long v6, v0

    .line 38
    div-long/2addr v4, v6

    .line 39
    long-to-int v4, v4

    .line 40
    iput v4, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 41
    .line 42
    if-ge v0, v1, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 45
    .line 46
    sub-int/2addr v0, v3

    .line 47
    aput p1, v1, v0

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    if-ne v0, v1, :cond_5

    .line 51
    .line 52
    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 53
    .line 54
    sub-int/2addr v0, v3

    .line 55
    aput p1, v4, v0

    .line 56
    .line 57
    iget-object p1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 58
    .line 59
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-ge v2, v1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 65
    .line 66
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 67
    .line 68
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 69
    .line 70
    aget v3, v3, v2

    .line 71
    .line 72
    invoke-direct {p0, p1, v0, v3}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 83
    .line 84
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 85
    .line 86
    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    :goto_1
    if-nez v0, :cond_7

    .line 91
    .line 92
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 93
    .line 94
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 95
    .line 96
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    new-array v0, v1, [I

    .line 100
    .line 101
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 102
    .line 103
    :goto_2
    iput v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 104
    .line 105
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 106
    .line 107
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 111
    .line 112
    aput p1, v0, v2

    .line 113
    .line 114
    iget-object p1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 115
    .line 116
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 120
    .line 121
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 122
    .line 123
    .line 124
    :goto_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAverageTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    return v0
.end method

.method public getBucketCount()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    return v0
.end method

.method public getBucketCounters()[I
    .locals 4

    .line 1
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_1

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 11
    .line 12
    add-int/lit8 v1, v0, -0x1

    .line 13
    .line 14
    new-array v1, v1, [I

    .line 15
    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 23
    .line 24
    if-ge v2, v3, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 27
    .line 28
    aget v3, v3, v2

    .line 29
    .line 30
    invoke-direct {p0, v1, v0, v3}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0

    .line 37
    :cond_1
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 38
    .line 39
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public getBucketEndPoints()[I
    .locals 3

    .line 1
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    return v0
.end method

.method public getMaxTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    return v0
.end method

.method public getMinTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    return v0
.end method

.method public getSampleCount()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " Histogram id = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " Time(ms): min = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " max = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " avg = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " Count = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    if-ge v1, v2, :cond_0

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 65
    .line 66
    const-string v2, " Interval Endpoints:"

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    move v3, v2

    .line 73
    :goto_0
    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 74
    .line 75
    array-length v4, v4

    .line 76
    const-string v5, " "

    .line 77
    .line 78
    if-ge v3, v4, :cond_1

    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 86
    .line 87
    aget v5, v5, v3

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const-string v3, " Interval counters:"

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    .line 106
    .line 107
    :goto_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 108
    .line 109
    array-length v3, v3

    .line 110
    if-ge v2, v3, :cond_2

    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 118
    .line 119
    aget v4, v4, v2

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    .line 130
    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p2, 0x1

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget p2, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
