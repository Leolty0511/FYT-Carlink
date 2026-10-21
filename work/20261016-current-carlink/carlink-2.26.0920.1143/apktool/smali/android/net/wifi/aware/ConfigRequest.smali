.class public final Landroid/net/wifi/aware/ConfigRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/ConfigRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLUSTER_ID_MAX:I = 0xffff

.field public static final CLUSTER_ID_MIN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/ConfigRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DW_DISABLE:I = 0x0

.field public static final DW_INTERVAL_NOT_INIT:I = -0x1

.field public static final NAN_BAND_24GHZ:I = 0x0

.field public static final NAN_BAND_5GHZ:I = 0x1


# instance fields
.field public final mClusterHigh:I

.field public final mClusterLow:I

.field public final mDiscoveryWindowInterval:[I

.field public final mMasterPreference:I

.field public final mSupport5gBand:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/aware/ConfigRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/ConfigRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZIII[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 4
    iput p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 5
    iput p3, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 6
    iput p4, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 7
    iput-object p5, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    return-void
.end method

.method public synthetic constructor <init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/ConfigRequest;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/net/wifi/aware/ConfigRequest;

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 20
    .line 21
    iget v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 26
    .line 27
    iget v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 32
    .line 33
    iget v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 34
    .line 35
    if-ne v1, v3, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 38
    .line 39
    iget-object p1, p1, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 40
    .line 41
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 2
    .line 3
    const/16 v1, 0x20f

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    mul-int/lit8 v1, v1, 0x1f

    .line 7
    .line 8
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 9
    .line 10
    add-int/2addr v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x1f

    .line 12
    .line 13
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 14
    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    .line 23
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConfigRequest [mSupport5gBand="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mMasterPreference="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mClusterLow="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mClusterHigh="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mDiscoveryWindowInterval="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 49
    .line 50
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "]"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public validate()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 2
    .line 3
    if-ltz v0, :cond_b

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_a

    .line 7
    .line 8
    const/16 v2, 0xff

    .line 9
    .line 10
    if-eq v0, v2, :cond_a

    .line 11
    .line 12
    if-gt v0, v2, :cond_a

    .line 13
    .line 14
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 15
    .line 16
    const-string v2, "Cluster specification must be non-negative"

    .line 17
    .line 18
    if-ltz v0, :cond_9

    .line 19
    .line 20
    const-string v3, "Cluster specification must not exceed 0xFFFF"

    .line 21
    .line 22
    const v4, 0xffff

    .line 23
    .line 24
    .line 25
    if-gt v0, v4, :cond_8

    .line 26
    .line 27
    iget v5, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 28
    .line 29
    if-ltz v5, :cond_7

    .line 30
    .line 31
    if-gt v5, v4, :cond_6

    .line 32
    .line 33
    if-gt v0, v5, :cond_5

    .line 34
    .line 35
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 36
    .line 37
    array-length v2, v0

    .line 38
    const/4 v3, 0x2

    .line 39
    if-ne v2, v3, :cond_4

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    aget v2, v0, v2

    .line 43
    .line 44
    const/4 v3, 0x5

    .line 45
    const/4 v4, -0x1

    .line 46
    if-eq v2, v4, :cond_1

    .line 47
    .line 48
    if-lt v2, v1, :cond_0

    .line 49
    .line 50
    if-gt v2, v3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string v1, "Invalid discovery window interval for 2.4GHz: valid is UNSET or [1,5]"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    :goto_0
    aget v0, v0, v1

    .line 62
    .line 63
    if-eq v0, v4, :cond_3

    .line 64
    .line 65
    if-ltz v0, :cond_2

    .line 66
    .line 67
    if-gt v0, v3, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v1, "Invalid discovery window interval for 5GHz: valid is UNSET or [0,5]"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_3
    :goto_1
    return-void

    .line 79
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v1, "Invalid discovery window interval: must have 2 elements (2.4 & 5"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string v1, "Master Preference specification must be non-negative"

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
