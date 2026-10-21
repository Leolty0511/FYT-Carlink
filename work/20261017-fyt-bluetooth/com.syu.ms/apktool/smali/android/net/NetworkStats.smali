.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String; = null

.field public static final SET_ALL:I = -0x1

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private final elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/net/NetworkStats;->size:I

    .line 4
    new-array p1, p3, [Ljava/lang/String;

    iput-object p1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 5
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 6
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->set:[I

    .line 7
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 8
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 9
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 10
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 11
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 12
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->operations:[J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStats;->operations:[J

    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/net/NetworkStats$Entry;

    invoke-direct {p1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 5
    :goto_0
    sget-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 6
    iput p3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v0, -0x1

    .line 7
    iput v0, p1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v1, 0x0

    .line 8
    iput v1, p1, Landroid/net/NetworkStats$Entry;->tag:I

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 10
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 11
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 12
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 13
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    move v2, v1

    .line 14
    :goto_1
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_7

    const/4 v3, 0x1

    if-eq p3, v0, :cond_2

    .line 15
    iget-object v4, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v4, v2

    if-ne p3, v4, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v3

    :goto_3
    if-eqz p2, :cond_4

    .line 16
    iget-object v5, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    move v3, v1

    :cond_4
    :goto_4
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 17
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_5

    if-nez p4, :cond_5

    goto :goto_5

    .line 18
    :cond_5
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v5, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 19
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v5, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 20
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v5, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 21
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 22
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v5, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-object p1
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "FOREGROUND"

    return-object p0

    :cond_1
    const-string p0, "DEFAULT"

    return-object p0

    :cond_2
    const-string p0, "ALL"

    return-object p0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 2
    iget-wide v0, v6, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v2, v7, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 3
    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    :cond_0
    move-wide v0, v8

    .line 4
    :cond_1
    new-instance v10, Landroid/net/NetworkStats$Entry;

    invoke-direct {v10}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 5
    new-instance v11, Landroid/net/NetworkStats;

    iget v2, v6, Landroid/net/NetworkStats;->size:I

    invoke-direct {v11, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v0, 0x0

    move v12, v0

    .line 6
    :goto_0
    iget v0, v6, Landroid/net/NetworkStats;->size:I

    if-ge v12, v0, :cond_6

    .line 7
    iget-object v0, v6, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v0, v12

    iput-object v1, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 8
    iget-object v0, v6, Landroid/net/NetworkStats;->uid:[I

    aget v2, v0, v12

    iput v2, v10, Landroid/net/NetworkStats$Entry;->uid:I

    .line 9
    iget-object v0, v6, Landroid/net/NetworkStats;->set:[I

    aget v3, v0, v12

    iput v3, v10, Landroid/net/NetworkStats$Entry;->set:I

    .line 10
    iget-object v0, v6, Landroid/net/NetworkStats;->tag:[I

    aget v4, v0, v12

    iput v4, v10, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v0, p1

    move v5, v12

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_2

    .line 12
    iget-object v0, v6, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v0, v12

    iput-wide v1, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 13
    iget-object v0, v6, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v0, v12

    iput-wide v1, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 14
    iget-object v0, v6, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v0, v12

    iput-wide v1, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 15
    iget-object v0, v6, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v0, v12

    iput-wide v1, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 16
    iget-object v0, v6, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v0, v12

    iput-wide v1, v10, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide v2, v8

    goto/16 :goto_2

    .line 17
    :cond_2
    iget-object v0, v6, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v0, v12

    iget-object v0, v7, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v13, v0, v4

    sub-long/2addr v1, v13

    iput-wide v1, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 18
    iget-object v0, v6, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v13, v0, v12

    iget-object v0, v7, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v15, v0, v4

    sub-long/2addr v13, v15

    iput-wide v13, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 19
    iget-object v0, v6, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v15, v0, v12

    iget-object v0, v7, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v17, v0, v4

    sub-long v8, v15, v17

    iput-wide v8, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 20
    iget-object v0, v6, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v15, v0, v12

    iget-object v0, v7, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v17, v0, v4

    move-wide/from16 v19, v8

    sub-long v8, v15, v17

    iput-wide v8, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 21
    iget-object v0, v6, Landroid/net/NetworkStats;->operations:[J

    aget-wide v15, v0, v12

    iget-object v0, v7, Landroid/net/NetworkStats;->operations:[J

    aget-wide v17, v0, v4

    sub-long v5, v15, v17

    iput-wide v5, v10, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v15, 0x0

    cmp-long v0, v1, v15

    if-ltz v0, :cond_4

    cmp-long v0, v13, v15

    if-ltz v0, :cond_4

    cmp-long v0, v19, v15

    if-ltz v0, :cond_4

    cmp-long v0, v8, v15

    if-ltz v0, :cond_4

    cmp-long v0, v5, v15

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move v2, v12

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 22
    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 23
    :cond_5
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 24
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 25
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 26
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 27
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->operations:J

    .line 28
    :goto_2
    invoke-virtual {v11, v10}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    move-wide v8, v2

    goto/16 :goto_0

    :cond_6
    return-object v11
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 15

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    .line 1
    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 4

    .line 2
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 3
    array-length v0, v1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 4
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 5
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 6
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 7
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 8
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 9
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 10
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 11
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 12
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget-object v2, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 14
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v2, v0, v1

    .line 15
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v2, v0, v1

    .line 16
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v2, v0, v1

    .line 17
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v2, v0, v1

    .line 18
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v2, v0, v1

    .line 19
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v2, v0, v1

    .line 20
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v2, v0, v1

    .line 21
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 22
    iput v1, p0, Landroid/net/NetworkStats;->size:I

    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 16

    .line 1
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 4

    .line 2
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6

    .line 3
    iget-object v0, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v1, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 6
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 7
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 8
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 9
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_0
    return-object p0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 16

    .line 2
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    .line 1
    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "NetworkStats: elapsedRealtime="

    .line 2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  ["

    .line 5
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " iface="

    .line 6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " uid="

    .line 7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " set="

    .line 8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " tag="

    .line 9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " rxBytes="

    .line 10
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " rxPackets="

    .line 11
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " txBytes="

    .line 12
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " txPackets="

    .line 13
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " operations="

    .line 14
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lu/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_2

    .line 2
    div-int/lit8 v2, v0, 0x2

    .line 3
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    add-int/2addr v2, p5

    .line 4
    rem-int/2addr v2, v1

    goto :goto_1

    :cond_0
    add-int v3, v1, p5

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 5
    rem-int v2, v3, v1

    .line 6
    :goto_1
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v2

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v2

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v2

    if-ne p4, v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Lu/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getElapsedRealtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getTotalBytes()J
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 2
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v4, v5, :cond_0

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueUids()[I
    .locals 7

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    const/4 v6, 0x1

    .line 3
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 5
    new-array v2, v1, [I

    :goto_1
    if-ge v3, v1, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Landroid/net/NetworkStats$Entry;

    invoke-direct {p2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 2
    :goto_0
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 4
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->set:I

    .line 5
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 6
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 8
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 9
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 10
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->operations:J

    return-object p2
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 6

    .line 1
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, -0x1

    .line 3
    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 4
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v2, 0x0

    .line 5
    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    const-wide/16 v3, 0x0

    .line 6
    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 7
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1

    .line 8
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 10
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 11
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 12
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 13
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 14
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 6

    .line 1
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 3
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v2, -0x1

    .line 4
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v2, 0x0

    .line 5
    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 6
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1

    .line 7
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v2

    iput v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 9
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 10
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 11
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 12
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 13
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 14
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public internalSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/net/NetworkStats;->tag:[I

    aget v4, v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 4

    .line 1
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 5
    iget v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lu/a;->a([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5
    iget-object p2, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6
    iget-object p2, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7
    iget-object p2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 8
    iget-object p2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 9
    iget-object p2, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 10
    iget-object p2, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 11
    iget-object p2, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
