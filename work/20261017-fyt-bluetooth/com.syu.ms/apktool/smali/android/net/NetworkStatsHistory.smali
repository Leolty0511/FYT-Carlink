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

    .line 1
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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 31
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    if-lt v0, v2, :cond_2

    .line 32
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    goto :goto_1

    :cond_2
    array-length v0, v1

    new-array v0, v0, [J

    :goto_1
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 33
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 34
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 35
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 36
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 37
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 38
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 39
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Lu/a;->l([J)J

    move-result-wide v0

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Lu/a;->l([J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 41
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 42
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 43
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 44
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 45
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 46
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 47
    array-length p1, p1

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 48
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Lu/a;->l([J)J

    move-result-wide v0

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Lu/a;->l([J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 49
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

    .line 50
    :cond_4
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Mismatched history lengths"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addLong([JIJ)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
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

    rem-long v2, p1, v0

    sub-long/2addr p1, v2

    .line 2
    rem-long v2, p3, v0

    sub-long v2, v0, v2

    rem-long/2addr v2, v0

    add-long/2addr p3, v2

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 5
    :cond_0
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    aget-wide p2, p0, p1

    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v2, v1

    if-lt v0, v2, :cond_5

    .line 2
    array-length v0, v1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 3
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 4
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 7
    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 8
    :cond_3
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 9
    :cond_4
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_5

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 10
    :cond_5
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v0, :cond_b

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, p1

    .line 11
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_6

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :cond_6
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_7

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    :cond_7
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_8

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_8
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_9

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_9
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_a

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    :cond_a
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_b

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :cond_b
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v0, p1

    .line 19
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v0, 0x0

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 20
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 21
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 22
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 23
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 24
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 25
    iget p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 1

    long-to-float v0, p1

    .line 1
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    sub-long/2addr p3, p1

    long-to-float p1, p3

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    float-to-long p0, v0

    return-wide p0
.end method

.method private static setLong([JIJ)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    aput-wide p2, p0, p1

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lu/h;Z)V
    .locals 3

    const-string v0, "NetworkStatsHistory: bucketDuration="

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2
    invoke-virtual {p1}, Lu/h;->b()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 p2, p2, -0x20

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    const-string p2, "(omitting "

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " buckets)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_1
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, p2, :cond_8

    const-string p2, "bucketStart="

    .line 6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 7
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz p2, :cond_2

    const-string p2, " activeTime="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 8
    :cond_2
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz p2, :cond_3

    const-string p2, " rxBytes="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 9
    :cond_3
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz p2, :cond_4

    const-string p2, " rxPackets="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 10
    :cond_4
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz p2, :cond_5

    const-string p2, " txBytes="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 11
    :cond_5
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz p2, :cond_6

    const-string p2, " txPackets="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 12
    :cond_6
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz p2, :cond_7

    const-string p2, " operations="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 13
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_8
    invoke-virtual {p1}, Lu/h;->a()V

    return-void
.end method

.method public estimateResizeBuckets(J)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int p1, v0

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

    mul-float/2addr v1, v2

    float-to-long v9, v1

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

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 4

    .line 1
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getIndexAfter(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result p1

    if-gez p1, :cond_0

    not-int p1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    :goto_0
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, v2, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    return p1
.end method

.method public getIndexBefore(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result p1

    if-gez p1, :cond_0

    not-int p1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2
    :goto_0
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, v2, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    return p1
.end method

.method public getStart()J
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 1
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

    add-long v9, v9, v16

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 24
    :cond_e
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v9, :cond_f

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v10, v10, v16

    iput-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 25
    :cond_f
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v9, :cond_10

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v10, v10, v16

    iput-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 26
    :cond_10
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v9, :cond_11

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v10, v10, v16

    iput-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 27
    :cond_11
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v9, :cond_12

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v10, v10, v16

    iput-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 28
    :cond_12
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v9, :cond_13

    iget-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    aget-wide v16, v9, v6

    mul-long v16, v16, v13

    div-long v16, v16, v7

    add-long v10, v10, v16

    iput-wide v10, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

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

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

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

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .locals 18

    move-object/from16 v0, p1

    .line 1
    new-instance v14, Landroid/net/NetworkStats$Entry;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object v1, v14

    move-object/from16 v17, v14

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    const/4 v1, 0x0

    move v7, v1

    .line 2
    :goto_0
    iget v1, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v7, v1, :cond_2

    .line 3
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, v7

    .line 4
    iget-wide v4, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v4, v2

    cmp-long v1, v2, p2

    if-ltz v1, :cond_1

    cmp-long v1, v4, p4

    if-lez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v8, 0x0

    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    move-object/from16 v12, v17

    iput-wide v10, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 6
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 8
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 9
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, v7, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v8

    iput-wide v8, v12, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v1, p0

    move-object v6, v12

    .line 10
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object/from16 v12, v17

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v17, v12

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, v0

    .line 3
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v0, :cond_8

    .line 4
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p2, p1

    .line 5
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 6
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz p1, :cond_2

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz p1, :cond_3

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 8
    :cond_3
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz p1, :cond_4

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 9
    :cond_4
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz p1, :cond_5

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 10
    :cond_5
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz p1, :cond_6

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 11
    :cond_6
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz p1, :cond_7

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 12
    :cond_7
    iget p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    :cond_8
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2
    new-instance v1, Lu/h;

    const-string v2, "  "

    invoke-direct {v1, v0, v2}, Lu/h;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lu/h;Z)V

    .line 3
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 3
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 4
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 5
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 6
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 7
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 8
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 9
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 3
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 4
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 5
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 6
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 7
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 8
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 9
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    return-void
.end method
