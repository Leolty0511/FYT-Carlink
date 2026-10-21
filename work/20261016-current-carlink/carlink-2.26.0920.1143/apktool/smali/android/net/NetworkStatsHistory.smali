.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 5
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 6
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_0
    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    .line 7
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_1
    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    .line 8
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_2
    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_3

    .line 9
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_3
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_4

    .line 10
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_4
    and-int/lit8 p1, p4, 0x20

    if-eqz p1, :cond_5

    .line 11
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_5
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const-wide/16 p1, 0x0

    .line 13
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .locals 1

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 18
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 19
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 20
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 21
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 22
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 23
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 24
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 25
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected version: "

    .line 30
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 33
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    if-lt v0, v2, :cond_2

    .line 34
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    goto :goto_1

    :cond_2
    array-length v0, v1

    new-array v0, v0, [J

    :goto_1
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 35
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 36
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 37
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 38
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 39
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 40
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 41
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v0

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 43
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 44
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 45
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 46
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 47
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 48
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 49
    array-length p1, p1

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 50
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v0

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 51
    :goto_2
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    array-length p1, p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    array-length p1, p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    array-length p1, p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length p1, p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length p1, p1

    if-ne p1, v0, :cond_4

    return-void

    .line 52
    :cond_4
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Mismatched history lengths"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addLong([JIJ)V
    .locals 2

    if-eqz p0, :cond_0

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 2
    .line 3
    rem-long v2, p1, v0

    .line 4
    .line 5
    sub-long/2addr p1, v2

    .line 6
    rem-long v2, p3, v0

    .line 7
    .line 8
    sub-long v2, v0, v2

    .line 9
    .line 10
    rem-long/2addr v2, v0

    .line 11
    add-long/2addr v2, p3

    .line 12
    :goto_0
    cmp-long p3, p1, v2

    .line 13
    .line 14
    if-gez p3, :cond_1

    .line 15
    .line 16
    iget-object p3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 20
    .line 21
    invoke-static {p3, p4, v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-gez p3, :cond_0

    .line 26
    .line 27
    not-int p3, p3

    .line 28
    invoke-direct {p0, p3, p1, p2}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-wide p3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 32
    .line 33
    add-long/2addr p1, p3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0

    if-eqz p0, :cond_0

    aget-wide p2, p0, p1

    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-lt v0, v2, :cond_5

    .line 7
    .line 8
    array-length v0, v1

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    mul-int/lit8 v0, v0, 0x3

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 26
    .line 27
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 56
    .line 57
    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 66
    .line 67
    :cond_3
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 76
    .line 77
    :cond_4
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 86
    .line 87
    :cond_5
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 88
    .line 89
    if-ge p1, v0, :cond_b

    .line 90
    .line 91
    add-int/lit8 v1, p1, 0x1

    .line 92
    .line 93
    sub-int/2addr v0, p1

    .line 94
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 95
    .line 96
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 100
    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 104
    .line 105
    .line 106
    :cond_6
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 107
    .line 108
    if-eqz v2, :cond_7

    .line 109
    .line 110
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 111
    .line 112
    .line 113
    :cond_7
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 114
    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 118
    .line 119
    .line 120
    :cond_8
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 121
    .line 122
    if-eqz v2, :cond_9

    .line 123
    .line 124
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 125
    .line 126
    .line 127
    :cond_9
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 128
    .line 129
    if-eqz v2, :cond_a

    .line 130
    .line 131
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 132
    .line 133
    .line 134
    :cond_a
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 135
    .line 136
    if-eqz v2, :cond_b

    .line 137
    .line 138
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 139
    .line 140
    .line 141
    :cond_b
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 142
    .line 143
    aput-wide p2, v0, p1

    .line 144
    .line 145
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 146
    .line 147
    const-wide/16 v0, 0x0

    .line 148
    .line 149
    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 153
    .line 154
    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 158
    .line 159
    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 163
    .line 164
    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 168
    .line 169
    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 170
    .line 171
    .line 172
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 173
    .line 174
    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 175
    .line 176
    .line 177
    iget p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 178
    .line 179
    add-int/lit8 p1, p1, 0x1

    .line 180
    .line 181
    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 182
    .line 183
    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 1

    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    sub-long/2addr p3, p1

    long-to-float p1, p3

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-long p0, p0

    return-wide p0
.end method

.method private static setLong([JIJ)V
    .locals 0

    if-eqz p0, :cond_0

    aput-wide p2, p0, p1

    :cond_0
    return-void
.end method

.method private static writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V
    .locals 2

    if-eqz p3, :cond_0

    .line 13
    aget-wide v0, p3, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 6

    .line 1
    const-string v0, "NetworkStatsHistory: bucketDuration="

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 7
    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    div-long/2addr v0, v2

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 22
    .line 23
    add-int/lit8 p2, p2, -0x20

    .line 24
    .line 25
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    if-lez v0, :cond_1

    .line 30
    .line 31
    const-string p2, "(omitting "

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 37
    .line 38
    .line 39
    const-string p2, " buckets)"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_1
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 45
    .line 46
    if-ge v0, p2, :cond_7

    .line 47
    .line 48
    const-string/jumbo p2, "st="

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 55
    .line 56
    aget-wide v4, p2, v0

    .line 57
    .line 58
    div-long/2addr v4, v2

    .line 59
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    const-string p2, " rb="

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 72
    .line 73
    aget-wide v4, p2, v0

    .line 74
    .line 75
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 79
    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    const-string p2, " rp="

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 88
    .line 89
    aget-wide v4, p2, v0

    .line 90
    .line 91
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 95
    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    const-string p2, " tb="

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 104
    .line 105
    aget-wide v4, p2, v0

    .line 106
    .line 107
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 111
    .line 112
    if-eqz p2, :cond_5

    .line 113
    .line 114
    const-string p2, " tp="

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 120
    .line 121
    aget-wide v4, p2, v0

    .line 122
    .line 123
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 127
    .line 128
    if-eqz p2, :cond_6

    .line 129
    .line 130
    const-string p2, " op="

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 136
    .line 137
    aget-wide v4, p2, v0

    .line 138
    .line 139
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 140
    .line 141
    .line 142
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 143
    .line 144
    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    const-string v0, "d,"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 7
    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    div-long/2addr v0, v2

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 19
    .line 20
    if-ge v0, v1, :cond_5

    .line 21
    .line 22
    const-string v1, "b,"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 28
    .line 29
    aget-wide v4, v1, v0

    .line 30
    .line 31
    div-long/2addr v4, v2

    .line 32
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x2c

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 41
    .line 42
    const-string v5, "*"

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    aget-wide v6, v4, v0

    .line 47
    .line 48
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-wide v6, v4, v0

    .line 63
    .line 64
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    aget-wide v6, v4, v0

    .line 79
    .line 80
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    aget-wide v6, v4, v0

    .line 95
    .line 96
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_3
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 107
    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    aget-wide v4, v1, v0

    .line 111
    .line 112
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_4
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    return-void
.end method

.method public estimateResizeBuckets(J)I
    .locals 4

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v2, v0

    div-long/2addr v2, p1

    long-to-int p1, v2

    return p1
.end method

.method public generateRandom(JJJ)V
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    .line 2
    invoke-virtual {v15}, Ljava/util/Random;->nextFloat()F

    move-result v0

    move-wide/from16 v1, p5

    long-to-float v1, v1

    mul-float v2, v1, v0

    float-to-long v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, v1

    float-to-long v9, v2

    const-wide/16 v0, 0x400

    .line 3
    div-long v7, v5, v0

    .line 4
    div-long v11, v9, v0

    const-wide/16 v0, 0x800

    .line 5
    div-long v13, v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 6
    invoke-virtual/range {v0 .. v15}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide/from16 v0, p3

    move-object/from16 v2, p15

    .line 7
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 8
    new-instance v14, Landroid/net/NetworkStats$Entry;

    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v3, v14

    move-object/from16 v19, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    :goto_0
    const-wide/16 v13, 0x400

    cmp-long v15, v3, v13

    if-gtz v15, :cond_1

    const-wide/16 v15, 0x80

    cmp-long v17, v5, v15

    if-gtz v17, :cond_1

    cmp-long v13, v7, v13

    if-gtz v13, :cond_1

    cmp-long v13, v9, v15

    if-gtz v13, :cond_1

    const-wide/16 v13, 0x20

    cmp-long v13, v11, v13

    if-lez v13, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    move-wide/from16 v13, p1

    .line 9
    invoke-static {v2, v13, v14, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v15

    sub-long v17, v0, v15

    const-wide/16 v20, 0x2

    .line 10
    div-long v0, v17, v20

    const-wide/16 v13, 0x0

    invoke-static {v2, v13, v14, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    add-long/2addr v0, v15

    move-wide/from16 p8, v0

    .line 11
    invoke-static {v2, v13, v14, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    move-wide/from16 p6, v15

    move-object/from16 v15, v19

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 12
    invoke-static {v2, v13, v14, v5, v6}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 13
    invoke-static {v2, v13, v14, v7, v8}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 14
    invoke-static {v2, v13, v14, v9, v10}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 15
    invoke-static {v2, v13, v14, v11, v12}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->operations:J

    .line 16
    iget-wide v13, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v3, v13

    .line 17
    iget-wide v13, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v5, v13

    .line 18
    iget-wide v13, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v7, v13

    .line 19
    iget-wide v13, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v9, v13

    sub-long/2addr v11, v0

    move-object/from16 p5, p0

    move-object/from16 p10, v15

    .line 20
    invoke-virtual/range {p5 .. p10}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    move-wide/from16 v0, p3

    goto :goto_0
.end method

.method public getBucketDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 4

    .line 1
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget-wide v0, v1, v0

    .line 10
    .line 11
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 12
    .line 13
    add-long/2addr v0, v2

    .line 14
    return-wide v0

    .line 15
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 16
    .line 17
    return-wide v0
.end method

.method public getIndexAfter(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 2
    .line 3
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    not-int p1, p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    :goto_0
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 17
    .line 18
    add-int/lit8 p2, p2, -0x1

    .line 19
    .line 20
    invoke-static {p1, v2, p2}, Landroid/util/MathUtils;->constrain(III)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public getIndexBefore(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 2
    .line 3
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    not-int p1, p1

    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    :goto_0
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 19
    .line 20
    add-int/lit8 p2, p2, -0x1

    .line 21
    .line 22
    invoke-static {p1, v2, p2}, Landroid/util/MathUtils;->constrain(III)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public getStart()J
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget-wide v1, v0, v1

    .line 9
    .line 10
    return-wide v1

    .line 11
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 5

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {p2}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .line 2
    :goto_0
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 3
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v0, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 4
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 5
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 6
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 7
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 8
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 9
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v0

    iput-wide v0, p2, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    return-object p2
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    if-eqz p7, :cond_0

    move-object/from16 v5, p7

    goto :goto_0

    .line 11
    :cond_0
    new-instance v5, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    :goto_0
    sub-long v6, v3, v1

    .line 12
    iput-wide v6, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 13
    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 14
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_1

    move-wide v11, v9

    goto :goto_1

    :cond_1
    move-wide v11, v7

    :goto_1
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 15
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_2

    move-wide v11, v9

    goto :goto_2

    :cond_2
    move-wide v11, v7

    :goto_2
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 16
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_3

    move-wide v11, v9

    goto :goto_3

    :cond_3
    move-wide v11, v7

    :goto_3
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 17
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_4

    move-wide v11, v9

    goto :goto_4

    :cond_4
    move-wide v11, v7

    :goto_4
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 18
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_5

    move-wide v11, v9

    goto :goto_5

    :cond_5
    move-wide v11, v7

    :goto_5
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 19
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_6

    move-wide v7, v9

    :cond_6
    iput-wide v7, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 20
    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v6

    :goto_6
    if-ltz v6, :cond_14

    .line 21
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v11, v7, v6

    .line 22
    iget-wide v7, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v13, v11, v7

    cmp-long v15, v13, v1

    if-gtz v15, :cond_7

    goto/16 :goto_c

    :cond_7
    cmp-long v15, v11, v3

    if-ltz v15, :cond_8

    goto/16 :goto_b

    :cond_8
    cmp-long v15, v11, p5

    if-gez v15, :cond_9

    cmp-long v15, v13, p5

    if-lez v15, :cond_9

    const/4 v15, 0x1

    goto :goto_7

    :cond_9
    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_a

    move-wide v13, v7

    goto :goto_a

    :cond_a
    cmp-long v15, v13, v3

    if-gez v15, :cond_b

    goto :goto_8

    :cond_b
    move-wide v13, v3

    :goto_8
    cmp-long v15, v11, v1

    if-lez v15, :cond_c

    goto :goto_9

    :cond_c
    move-wide v11, v1

    :goto_9
    sub-long/2addr v13, v11

    :goto_a
    cmp-long v11, v13, v9

    if-gtz v11, :cond_d

    goto :goto_b

    .line 23
    :cond_d
    iget-object v11, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v11, :cond_e

    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    aget-wide v16, v11, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v9, v16, v9

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 24
    :cond_e
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v9, :cond_f

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v9, v16, v10

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 25
    :cond_f
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v9, :cond_10

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v9, v16, v10

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 26
    :cond_10
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v9, :cond_11

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v9, v16, v10

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 27
    :cond_11
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v9, :cond_12

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v9, v16, v10

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 28
    :cond_12
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v9, :cond_13

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v7, v16, v10

    iput-wide v7, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    :cond_13
    :goto_b
    add-int/lit8 v6, v6, -0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_6

    :cond_14
    :goto_c
    return-object v5
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 8

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object p1

    return-object p1
.end method

.method public intersects(JJ)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v4, p1, v0

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-ltz v4, :cond_0

    .line 13
    .line 14
    cmp-long v4, p1, v2

    .line 15
    .line 16
    if-gtz v4, :cond_0

    .line 17
    .line 18
    return v5

    .line 19
    :cond_0
    cmp-long v4, p3, v0

    .line 20
    .line 21
    if-ltz v4, :cond_1

    .line 22
    .line 23
    cmp-long v4, p3, v2

    .line 24
    .line 25
    if-gtz v4, :cond_1

    .line 26
    .line 27
    return v5

    .line 28
    :cond_1
    cmp-long v4, v0, p1

    .line 29
    .line 30
    if-ltz v4, :cond_2

    .line 31
    .line 32
    cmp-long v0, v0, p3

    .line 33
    .line 34
    if-gtz v0, :cond_2

    .line 35
    .line 36
    return v5

    .line 37
    :cond_2
    cmp-long p1, v2, p1

    .line 38
    .line 39
    if-ltz p1, :cond_3

    .line 40
    .line 41
    cmp-long p1, v2, p3

    .line 42
    .line 43
    if-gtz p1, :cond_3

    .line 44
    .line 45
    return v5

    .line 46
    :cond_3
    const/4 p1, 0x0

    .line 47
    return p1
.end method

.method public recordData(JJJJ)V
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v15, Landroid/net/NetworkStats$Entry;

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v0, v15

    move-wide/from16 v5, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .locals 28

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 2
    iget-wide v6, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 3
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 4
    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 5
    iget-wide v12, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 6
    iget-wide v14, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 7
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v16

    if-nez v16, :cond_5

    .line 8
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    sub-long v16, v3, v1

    .line 10
    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v18

    move/from16 v5, v18

    :goto_0
    if-ltz v5, :cond_4

    move-wide/from16 v18, v14

    .line 11
    iget-object v14, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-wide/from16 v20, v12

    aget-wide v12, v14, v5

    .line 12
    iget-wide v14, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v14, v12

    cmp-long v22, v14, v1

    if-gez v22, :cond_1

    goto :goto_3

    :cond_1
    cmp-long v22, v12, v3

    if-lez v22, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    sub-long/2addr v14, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v14, v12

    if-gtz v12, :cond_3

    :goto_1
    move-wide/from16 v14, v18

    move-wide/from16 v12, v20

    goto :goto_2

    :cond_3
    mul-long v12, v6, v14

    .line 14
    div-long v12, v12, v16

    mul-long v22, v8, v14

    .line 15
    div-long v1, v22, v16

    mul-long v22, v10, v14

    .line 16
    div-long v3, v22, v16

    mul-long v22, v20, v14

    move-wide/from16 v24, v10

    .line 17
    div-long v10, v22, v16

    mul-long v22, v18, v14

    move-wide/from16 v26, v10

    .line 18
    div-long v10, v22, v16

    move-wide/from16 v22, v10

    .line 19
    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v10, v5, v14, v15}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 20
    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v10, v5, v12, v13}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long/2addr v6, v12

    .line 21
    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v10, v5, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long/2addr v8, v1

    .line 22
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v5, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v10, v24, v3

    .line 23
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-wide/from16 v2, v26

    invoke-static {v1, v5, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v12, v20, v2

    .line 24
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-wide/from16 v2, v22

    invoke-static {v1, v5, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v1, v18, v2

    sub-long v16, v16, v14

    move-wide v14, v1

    :goto_2
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    goto :goto_0

    .line 25
    :cond_4
    :goto_3
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    move-object/from16 v3, p5

    iget-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v4, v1

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void

    .line 26
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "tried recording negative data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .locals 6

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v14, Landroid/net/NetworkStats$Entry;

    .line 4
    .line 5
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const-wide/16 v6, 0x0

    .line 11
    .line 12
    const-wide/16 v8, 0x0

    .line 13
    .line 14
    const-wide/16 v10, 0x0

    .line 15
    .line 16
    const-wide/16 v12, 0x0

    .line 17
    .line 18
    const-wide/16 v15, 0x0

    .line 19
    .line 20
    move-object v1, v14

    .line 21
    move-object/from16 v17, v14

    .line 22
    .line 23
    move-wide v14, v15

    .line 24
    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    move v7, v1

    .line 29
    :goto_0
    iget v1, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 30
    .line 31
    if-ge v7, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 34
    .line 35
    aget-wide v2, v1, v7

    .line 36
    .line 37
    iget-wide v4, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 38
    .line 39
    add-long/2addr v4, v2

    .line 40
    cmp-long v1, v2, p2

    .line 41
    .line 42
    if-ltz v1, :cond_1

    .line 43
    .line 44
    cmp-long v1, v4, p4

    .line 45
    .line 46
    if-lez v1, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 50
    .line 51
    const-wide/16 v8, 0x0

    .line 52
    .line 53
    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    move-object/from16 v12, v17

    .line 58
    .line 59
    iput-wide v10, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 60
    .line 61
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 62
    .line 63
    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    .line 64
    .line 65
    .line 66
    move-result-wide v10

    .line 67
    iput-wide v10, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 68
    .line 69
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 70
    .line 71
    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v10

    .line 75
    iput-wide v10, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 76
    .line 77
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 78
    .line 79
    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v10

    .line 83
    iput-wide v10, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 84
    .line 85
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 86
    .line 87
    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    iput-wide v8, v12, Landroid/net/NetworkStats$Entry;->operations:J

    .line 92
    .line 93
    move-object/from16 v1, p0

    .line 94
    .line 95
    move-object v6, v12

    .line 96
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    :goto_1
    move-object/from16 v12, v17

    .line 101
    .line 102
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    move-object/from16 v17, v12

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 7
    .line 8
    aget-wide v2, v1, v0

    .line 9
    .line 10
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 11
    .line 12
    add-long/2addr v2, v4

    .line 13
    cmp-long v1, v2, p1

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    if-lez v0, :cond_8

    .line 22
    .line 23
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 24
    .line 25
    array-length p2, p1

    .line 26
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 31
    .line 32
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 61
    .line 62
    :cond_4
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 71
    .line 72
    :cond_5
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 73
    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 81
    .line 82
    :cond_6
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 83
    .line 84
    if-eqz p1, :cond_7

    .line 85
    .line 86
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 91
    .line 92
    :cond_7
    iget p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 93
    .line 94
    sub-int/2addr p1, v0

    .line 95
    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 96
    .line 97
    :cond_8
    return-void
.end method

.method public setValues(ILandroid/net/NetworkStatsHistory$Entry;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 6
    .line 7
    aget-wide v3, v0, p1

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 17
    .line 18
    aget-wide v3, v0, p1

    .line 19
    .line 20
    sub-long/2addr v1, v3

    .line 21
    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 24
    .line 25
    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 26
    .line 27
    aput-wide v1, v0, p1

    .line 28
    .line 29
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 30
    .line 31
    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 32
    .line 33
    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 37
    .line 38
    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 39
    .line 40
    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 44
    .line 45
    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 46
    .line 47
    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 51
    .line 52
    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 53
    .line 54
    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 58
    .line 59
    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 60
    .line 61
    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 65
    .line 66
    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 67
    .line 68
    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 72
    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 76
    .line 77
    aget-wide v2, p2, p1

    .line 78
    .line 79
    add-long/2addr v0, v2

    .line 80
    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 81
    .line 82
    :cond_2
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 83
    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 87
    .line 88
    aget-wide p1, p2, p1

    .line 89
    .line 90
    add-long/2addr v0, p1

    .line 91
    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    .line 8
    const-string v2, "  "

    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 7
    .line 8
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 9
    .line 10
    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 14
    .line 15
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 16
    .line 17
    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 21
    .line 22
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 23
    .line 24
    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 28
    .line 29
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 30
    .line 31
    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 35
    .line 36
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 37
    .line 38
    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 42
    .line 43
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 44
    .line 45
    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 49
    .line 50
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 51
    .line 52
    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 53
    .line 54
    .line 55
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide v2, 0x10400000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_0

    const-wide v4, 0x21100000002L

    .line 4
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 5
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v6, v1, v0

    invoke-virtual {p1, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10400000002L

    .line 6
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v6, 0x10400000003L

    .line 7
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v6, 0x10400000004L

    .line 8
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v6, 0x10400000005L

    .line 9
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v6, 0x10400000006L

    .line 10
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 11
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 11
    .line 12
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 18
    .line 19
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 25
    .line 26
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 32
    .line 33
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 34
    .line 35
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 39
    .line 40
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 41
    .line 42
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 46
    .line 47
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 48
    .line 49
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 53
    .line 54
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 55
    .line 56
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
