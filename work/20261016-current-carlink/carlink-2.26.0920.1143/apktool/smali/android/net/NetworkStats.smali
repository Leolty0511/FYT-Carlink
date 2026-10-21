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

.field public static final METERED_ALL:I = -0x1

.field public static final METERED_NO:I = 0x0

.field public static final METERED_YES:I = 0x1

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x0

.field public static final ROAMING_YES:I = 0x1

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final STATS_PER_IFACE:I = 0x0

.field public static final STATS_PER_UID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private metered:[I

.field private operations:[J

.field private roaming:[I

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

    if-ltz p3, :cond_0

    .line 4
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 5
    new-array p1, p3, [Ljava/lang/String;

    iput-object p1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 6
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 7
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->set:[I

    .line 8
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 9
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 10
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 11
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 12
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 13
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 14
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 15
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_0

    .line 16
    :cond_0
    iput p1, p0, Landroid/net/NetworkStats;->capacity:I

    .line 17
    sget-object p1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object p1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 18
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 19
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/net/NetworkStats;->set:[I

    .line 20
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 21
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 22
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 23
    sget-object p1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 24
    sget-object p1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 25
    sget-object p1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 26
    sget-object p1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 27
    sget-object p1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/net/NetworkStats;->operations:[J

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStats;->operations:[J

    return-void
.end method

.method private addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    new-instance v3, Landroid/net/NetworkStats$Entry;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroid/net/NetworkStats$Entry;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 15
    .line 16
    .line 17
    move-object/from16 v5, p3

    .line 18
    .line 19
    iput-object v5, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    iget v6, v0, Landroid/net/NetworkStats;->size:I

    .line 23
    .line 24
    if-ge v5, v6, :cond_7

    .line 25
    .line 26
    iget-object v6, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 27
    .line 28
    aget-object v6, v6, v5

    .line 29
    .line 30
    move-object/from16 v7, p2

    .line 31
    .line 32
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_5

    .line 37
    .line 38
    iget-object v6, v0, Landroid/net/NetworkStats;->uid:[I

    .line 39
    .line 40
    aget v6, v6, v5

    .line 41
    .line 42
    move/from16 v8, p1

    .line 43
    .line 44
    if-eq v6, v8, :cond_6

    .line 45
    .line 46
    iget-wide v9, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 47
    .line 48
    const-wide/16 v11, 0x0

    .line 49
    .line 50
    cmp-long v13, v9, v11

    .line 51
    .line 52
    if-lez v13, :cond_0

    .line 53
    .line 54
    iget-wide v13, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 55
    .line 56
    iget-object v15, v0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 57
    .line 58
    aget-wide v16, v15, v5

    .line 59
    .line 60
    mul-long v13, v13, v16

    .line 61
    .line 62
    div-long/2addr v13, v9

    .line 63
    iput-wide v13, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iput-wide v11, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 67
    .line 68
    :goto_1
    iget-wide v9, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 69
    .line 70
    cmp-long v13, v9, v11

    .line 71
    .line 72
    if-lez v13, :cond_1

    .line 73
    .line 74
    iget-wide v13, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 75
    .line 76
    iget-object v15, v0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 77
    .line 78
    aget-wide v16, v15, v5

    .line 79
    .line 80
    mul-long v13, v13, v16

    .line 81
    .line 82
    div-long/2addr v13, v9

    .line 83
    iput-wide v13, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    iput-wide v11, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 87
    .line 88
    :goto_2
    iget-wide v9, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 89
    .line 90
    cmp-long v13, v9, v11

    .line 91
    .line 92
    if-lez v13, :cond_2

    .line 93
    .line 94
    iget-wide v13, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 95
    .line 96
    iget-object v15, v0, Landroid/net/NetworkStats;->txBytes:[J

    .line 97
    .line 98
    aget-wide v16, v15, v5

    .line 99
    .line 100
    mul-long v13, v13, v16

    .line 101
    .line 102
    div-long/2addr v13, v9

    .line 103
    iput-wide v13, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_2
    iput-wide v11, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 107
    .line 108
    :goto_3
    iget-wide v9, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 109
    .line 110
    cmp-long v13, v9, v11

    .line 111
    .line 112
    if-lez v13, :cond_3

    .line 113
    .line 114
    iget-wide v13, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 115
    .line 116
    iget-object v15, v0, Landroid/net/NetworkStats;->txPackets:[J

    .line 117
    .line 118
    aget-wide v16, v15, v5

    .line 119
    .line 120
    mul-long v13, v13, v16

    .line 121
    .line 122
    div-long/2addr v13, v9

    .line 123
    iput-wide v13, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_3
    iput-wide v11, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 127
    .line 128
    :goto_4
    iget-wide v9, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 129
    .line 130
    cmp-long v13, v9, v11

    .line 131
    .line 132
    if-lez v13, :cond_4

    .line 133
    .line 134
    iget-wide v11, v2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 135
    .line 136
    iget-object v13, v0, Landroid/net/NetworkStats;->operations:[J

    .line 137
    .line 138
    aget-wide v14, v13, v5

    .line 139
    .line 140
    mul-long/2addr v11, v14

    .line 141
    div-long/2addr v11, v9

    .line 142
    iput-wide v11, v4, Landroid/net/NetworkStats$Entry;->operations:J

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_4
    iput-wide v11, v4, Landroid/net/NetworkStats$Entry;->operations:J

    .line 146
    .line 147
    :goto_5
    iput v6, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 148
    .line 149
    iget-object v6, v0, Landroid/net/NetworkStats;->tag:[I

    .line 150
    .line 151
    aget v6, v6, v5

    .line 152
    .line 153
    iput v6, v4, Landroid/net/NetworkStats$Entry;->tag:I

    .line 154
    .line 155
    iget-object v6, v0, Landroid/net/NetworkStats;->set:[I

    .line 156
    .line 157
    aget v6, v6, v5

    .line 158
    .line 159
    iput v6, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 160
    .line 161
    iget-object v6, v0, Landroid/net/NetworkStats;->metered:[I

    .line 162
    .line 163
    aget v6, v6, v5

    .line 164
    .line 165
    iput v6, v4, Landroid/net/NetworkStats$Entry;->metered:I

    .line 166
    .line 167
    iget-object v6, v0, Landroid/net/NetworkStats;->roaming:[I

    .line 168
    .line 169
    aget v6, v6, v5

    .line 170
    .line 171
    iput v6, v4, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 174
    .line 175
    .line 176
    iget-object v6, v0, Landroid/net/NetworkStats;->tag:[I

    .line 177
    .line 178
    aget v6, v6, v5

    .line 179
    .line 180
    if-nez v6, :cond_6

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 183
    .line 184
    .line 185
    const/16 v6, 0x3e9

    .line 186
    .line 187
    iput v6, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_5
    move/from16 v8, p1

    .line 194
    .line 195
    :cond_6
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_7
    return-object v3
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 9

    .line 1
    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2
    .line 3
    const/16 v0, 0x3ea

    .line 4
    .line 5
    iput v0, p3, Landroid/net/NetworkStats$Entry;->set:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 9
    .line 10
    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p3, Landroid/net/NetworkStats$Entry;->metered:I

    .line 14
    .line 15
    iput v0, p3, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p2

    .line 26
    move v3, p1

    .line 27
    invoke-virtual/range {v1 .. v7}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIII)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq v1, v0, :cond_0

    .line 32
    .line 33
    invoke-static {v1, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p2

    .line 42
    move v4, p1

    .line 43
    invoke-virtual/range {v2 .. v8}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIII)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    invoke-static {p1, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 50
    .line 51
    .line 52
    :cond_1
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

    .line 9
    iput v0, p1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 10
    iput v0, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 12
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 13
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 14
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 15
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    move v2, v1

    .line 16
    :goto_1
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_7

    const/4 v3, 0x1

    if-eq p3, v0, :cond_2

    .line 17
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

    .line 18
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

    .line 19
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_5

    if-nez p4, :cond_5

    goto :goto_5

    .line 20
    :cond_5
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v5, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 21
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v5, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 22
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v5, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 23
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 24
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

.method public static meteredToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "YES"

    return-object p0

    :cond_1
    const-string p0, "NO"

    return-object p0

    :cond_2
    const-string p0, "ALL"

    return-object p0
.end method

.method public static roamingToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "YES"

    return-object p0

    :cond_1
    const-string p0, "NO"

    return-object p0

    :cond_2
    const-string p0, "ALL"

    return-object p0
.end method

.method public static setMatches(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/16 p0, 0x3e8

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unk"

    return-object p0

    :cond_0
    const-string/jumbo p0, "vpnout"

    return-object p0

    :cond_1
    const-string/jumbo p0, "vpnin"

    return-object p0

    :cond_2
    const-string p0, "fg"

    return-object p0

    :cond_3
    const-string p0, "def"

    return-object p0

    :cond_4
    const-string p0, "all"

    return-object p0
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "DBG_VPN_OUT"

    return-object p0

    :cond_1
    const-string p0, "DBG_VPN_IN"

    return-object p0

    :cond_2
    const-string p0, "FOREGROUND"

    return-object p0

    :cond_3
    const-string p0, "DEFAULT"

    return-object p0

    :cond_4
    const-string p0, "ALL"

    return-object p0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v7, p4

    .line 3
    iget-wide v0, v6, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v2, v15, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    const-wide/16 v13, 0x0

    cmp-long v2, v0, v13

    if-gez v2, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 4
    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    :cond_0
    move-wide v0, v13

    .line 5
    :cond_1
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, 0x0

    if-eqz v7, :cond_2

    .line 6
    iget v3, v7, Landroid/net/NetworkStats;->capacity:I

    iget v4, v6, Landroid/net/NetworkStats;->size:I

    if-lt v3, v4, :cond_2

    .line 7
    iput v2, v7, Landroid/net/NetworkStats;->size:I

    .line 8
    iput-wide v0, v7, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object v4, v7

    goto :goto_0

    .line 9
    :cond_2
    new-instance v3, Landroid/net/NetworkStats;

    iget v4, v6, Landroid/net/NetworkStats;->size:I

    invoke-direct {v3, v0, v1, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v4, v3

    :goto_0
    move v3, v2

    .line 10
    :goto_1
    iget v0, v6, Landroid/net/NetworkStats;->size:I

    if-ge v3, v0, :cond_6

    .line 11
    iget-object v0, v6, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v8, v0, v3

    iput-object v8, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 12
    iget-object v0, v6, Landroid/net/NetworkStats;->uid:[I

    aget v9, v0, v3

    iput v9, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 13
    iget-object v0, v6, Landroid/net/NetworkStats;->set:[I

    aget v10, v0, v3

    iput v10, v5, Landroid/net/NetworkStats$Entry;->set:I

    .line 14
    iget-object v0, v6, Landroid/net/NetworkStats;->tag:[I

    aget v11, v0, v3

    iput v11, v5, Landroid/net/NetworkStats$Entry;->tag:I

    .line 15
    iget-object v0, v6, Landroid/net/NetworkStats;->metered:[I

    aget v12, v0, v3

    iput v12, v5, Landroid/net/NetworkStats$Entry;->metered:I

    .line 16
    iget-object v0, v6, Landroid/net/NetworkStats;->roaming:[I

    aget v0, v0, v3

    iput v0, v5, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 17
    iget-object v1, v6, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v13, v1, v3

    iput-wide v13, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 18
    iget-object v1, v6, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v13, v1, v3

    iput-wide v13, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 19
    iget-object v1, v6, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v13, v1, v3

    iput-wide v13, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 20
    iget-object v1, v6, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v13, v1, v3

    iput-wide v13, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 21
    iget-object v1, v6, Landroid/net/NetworkStats;->operations:[J

    aget-wide v13, v1, v3

    iput-wide v13, v5, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v7, p1

    const-wide/16 v1, 0x0

    move v13, v0

    move v14, v3

    .line 22
    invoke-virtual/range {v7 .. v14}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIIII)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    .line 23
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v0, v15, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 24
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v0, v15, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 25
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v0, v15, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 26
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v0, v15, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 27
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v0, v15, Landroid/net/NetworkStats;->operations:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 28
    :cond_3
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    move-wide v8, v1

    move-object/from16 v1, p0

    move v2, v3

    move v10, v3

    move-object/from16 v3, p1

    move-object v11, v4

    move v4, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 29
    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-wide v8, v1

    move v10, v3

    move-object v11, v4

    move-object v7, v5

    .line 30
    :goto_2
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 31
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 32
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 33
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 34
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_3

    :cond_5
    move-wide v8, v1

    move v10, v3

    move-object v11, v4

    move-object v7, v5

    .line 35
    :goto_3
    invoke-virtual {v11, v7}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v3, v10, 0x1

    move-object v5, v7

    move-wide v13, v8

    move-object v4, v11

    goto/16 :goto_1

    :cond_6
    move-object v11, v4

    return-object v11
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/net/NetworkStats$Entry;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 12
    .line 13
    .line 14
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v2, v3, :cond_3

    .line 18
    .line 19
    iget v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 20
    .line 21
    const/16 v4, 0x3e9

    .line 22
    .line 23
    if-eq v3, v4, :cond_2

    .line 24
    .line 25
    const/16 v4, 0x3ea

    .line 26
    .line 27
    if-eq v3, v4, :cond_2

    .line 28
    .line 29
    if-ne v2, p1, :cond_0

    .line 30
    .line 31
    iget v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p5, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 47
    .line 48
    if-eq v2, p1, :cond_1

    .line 49
    .line 50
    iget v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {p4, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string p2, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string p2, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_4
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 5

    .line 1
    new-instance v0, Landroid/net/NetworkStats$Entry;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7
    .line 8
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 9
    .line 10
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 15
    .line 16
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 17
    .line 18
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 19
    .line 20
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 25
    .line 26
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 27
    .line 28
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 29
    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 35
    .line 36
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 37
    .line 38
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 39
    .line 40
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 45
    .line 46
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 47
    .line 48
    iget-wide p0, p1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 49
    .line 50
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    iput-wide p0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 55
    .line 56
    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/net/NetworkStats;->rxBytes:[J

    .line 2
    .line 3
    aget-wide v1, v0, p0

    .line 4
    .line 5
    iget-wide v3, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 6
    .line 7
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p1, Landroid/net/NetworkStats;->rxBytes:[J

    .line 12
    .line 13
    aget-wide v3, v2, p0

    .line 14
    .line 15
    sub-long/2addr v3, v0

    .line 16
    aput-wide v3, v2, p0

    .line 17
    .line 18
    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 19
    .line 20
    sub-long/2addr v2, v0

    .line 21
    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 22
    .line 23
    iget-object v0, p1, Landroid/net/NetworkStats;->rxPackets:[J

    .line 24
    .line 25
    aget-wide v1, v0, p0

    .line 26
    .line 27
    iget-wide v3, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 28
    .line 29
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-object v2, p1, Landroid/net/NetworkStats;->rxPackets:[J

    .line 34
    .line 35
    aget-wide v3, v2, p0

    .line 36
    .line 37
    sub-long/2addr v3, v0

    .line 38
    aput-wide v3, v2, p0

    .line 39
    .line 40
    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 41
    .line 42
    sub-long/2addr v2, v0

    .line 43
    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 44
    .line 45
    iget-object v0, p1, Landroid/net/NetworkStats;->txBytes:[J

    .line 46
    .line 47
    aget-wide v1, v0, p0

    .line 48
    .line 49
    iget-wide v3, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 50
    .line 51
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iget-object v2, p1, Landroid/net/NetworkStats;->txBytes:[J

    .line 56
    .line 57
    aget-wide v3, v2, p0

    .line 58
    .line 59
    sub-long/2addr v3, v0

    .line 60
    aput-wide v3, v2, p0

    .line 61
    .line 62
    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 63
    .line 64
    sub-long/2addr v2, v0

    .line 65
    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 66
    .line 67
    iget-object v0, p1, Landroid/net/NetworkStats;->txPackets:[J

    .line 68
    .line 69
    aget-wide v1, v0, p0

    .line 70
    .line 71
    iget-wide v3, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 72
    .line 73
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    iget-object p1, p1, Landroid/net/NetworkStats;->txPackets:[J

    .line 78
    .line 79
    aget-wide v2, p1, p0

    .line 80
    .line 81
    sub-long/2addr v2, v0

    .line 82
    aput-wide v2, p1, p0

    .line 83
    .line 84
    iget-wide p0, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 85
    .line 86
    sub-long/2addr p0, v0

    .line 87
    iput-wide p0, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 88
    .line 89
    return-void
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

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 4

    .line 3
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    iget v1, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 5
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 6
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 7
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 8
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 9
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 10
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 11
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 12
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 13
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 14
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 15
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 16
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget-object v2, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 18
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v2, v0, v1

    .line 19
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v2, v0, v1

    .line 20
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v2, v0, v1

    .line 21
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->metered:I

    aput v2, v0, v1

    .line 22
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    aput v2, v0, v1

    .line 23
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v2, v0, v1

    .line 24
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v2, v0, v1

    .line 25
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v2, v0, v1

    .line 26
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v2, v0, v1

    .line 27
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 28
    iput v1, p0, Landroid/net/NetworkStats;->size:I

    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIIIJJJJJ)Landroid/net/NetworkStats;
    .locals 17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    .line 2
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v16}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIJJJJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
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

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 7

    .line 3
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget v5, p1, Landroid/net/NetworkStats$Entry;->metered:I

    iget v6, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIII)I

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

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkStats: elapsedRealtime="

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "  ["

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 28
    .line 29
    .line 30
    const-string v1, "]"

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, " iface="

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 41
    .line 42
    aget-object v1, v1, v0

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, " uid="

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 53
    .line 54
    aget v1, v1, v0

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 57
    .line 58
    .line 59
    const-string v1, " set="

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 65
    .line 66
    aget v1, v1, v0

    .line 67
    .line 68
    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, " tag="

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 81
    .line 82
    aget v1, v1, v0

    .line 83
    .line 84
    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, " metered="

    .line 92
    .line 93
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 97
    .line 98
    aget v1, v1, v0

    .line 99
    .line 100
    invoke-static {v1}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, " roaming="

    .line 108
    .line 109
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 113
    .line 114
    aget v1, v1, v0

    .line 115
    .line 116
    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, " rxBytes="

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 129
    .line 130
    aget-wide v2, v1, v0

    .line 131
    .line 132
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 133
    .line 134
    .line 135
    const-string v1, " rxPackets="

    .line 136
    .line 137
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 141
    .line 142
    aget-wide v2, v1, v0

    .line 143
    .line 144
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 145
    .line 146
    .line 147
    const-string v1, " txBytes="

    .line 148
    .line 149
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 153
    .line 154
    aget-wide v2, v1, v0

    .line 155
    .line 156
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 157
    .line 158
    .line 159
    const-string v1, " txPackets="

    .line 160
    .line 161
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 165
    .line 166
    aget-wide v2, v1, v0

    .line 167
    .line 168
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 169
    .line 170
    .line 171
    const-string v1, " operations="

    .line 172
    .line 173
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 177
    .line 178
    aget-wide v2, v1, v0

    .line 179
    .line 180
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;IIIII)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    if-ne p2, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 13
    .line 14
    aget v1, v1, v0

    .line 15
    .line 16
    if-ne p3, v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 19
    .line 20
    aget v1, v1, v0

    .line 21
    .line 22
    if-ne p4, v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 25
    .line 26
    aget v1, v1, v0

    .line 27
    .line 28
    if-ne p5, v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 31
    .line 32
    aget v1, v1, v0

    .line 33
    .line 34
    if-ne p6, v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 37
    .line 38
    aget-object v1, v1, v0

    .line 39
    .line 40
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    return v0

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, -0x1

    .line 51
    return p1
.end method

.method public findIndexHinted(Ljava/lang/String;IIIIII)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_2

    .line 5
    .line 6
    div-int/lit8 v2, v0, 0x2

    .line 7
    .line 8
    rem-int/lit8 v3, v0, 0x2

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    add-int/2addr v2, p7

    .line 13
    rem-int/2addr v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int v3, v1, p7

    .line 16
    .line 17
    sub-int/2addr v3, v2

    .line 18
    add-int/lit8 v3, v3, -0x1

    .line 19
    .line 20
    rem-int v2, v3, v1

    .line 21
    .line 22
    :goto_1
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 23
    .line 24
    aget v1, v1, v2

    .line 25
    .line 26
    if-ne p2, v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 29
    .line 30
    aget v1, v1, v2

    .line 31
    .line 32
    if-ne p3, v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 35
    .line 36
    aget v1, v1, v2

    .line 37
    .line 38
    if-ne p4, v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 41
    .line 42
    aget v1, v1, v2

    .line 43
    .line 44
    if-ne p5, v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 47
    .line 48
    aget v1, v1, v2

    .line 49
    .line 50
    if-ne p6, v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 53
    .line 54
    aget-object v1, v1, v2

    .line 55
    .line 56
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    return v2

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p1, -0x1

    .line 67
    return p1
.end method

.method public getElapsedRealtime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

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

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7
    .line 8
    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 9
    .line 10
    add-long/2addr v1, v3

    .line 11
    return-wide v1
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getTotalPackets()J
    .locals 8

    .line 1
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 10
    .line 11
    aget-wide v4, v3, v0

    .line 12
    .line 13
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 14
    .line 15
    aget-wide v6, v3, v0

    .line 16
    .line 17
    add-long/2addr v4, v6

    .line 18
    add-long/2addr v1, v4

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-wide v1
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    aget-object v4, v1, v3

    .line 13
    .line 14
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 15
    .line 16
    if-eq v4, v5, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    new-array v1, v1, [Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, [Ljava/lang/String;

    .line 35
    .line 36
    return-object v0
.end method

.method public getUniqueUids()[I
    .locals 7

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v4, v2, :cond_0

    .line 12
    .line 13
    aget v5, v1, v4

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v2, v1, [I

    .line 27
    .line 28
    :goto_1
    if-ge v3, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    aput v4, v2, v3

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-object v2
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Landroid/net/NetworkStats$Entry;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 10
    .line 11
    aget-object v0, v0, p1

    .line 12
    .line 13
    iput-object v0, p2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 16
    .line 17
    aget v0, v0, p1

    .line 18
    .line 19
    iput v0, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 20
    .line 21
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 22
    .line 23
    aget v0, v0, p1

    .line 24
    .line 25
    iput v0, p2, Landroid/net/NetworkStats$Entry;->set:I

    .line 26
    .line 27
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 28
    .line 29
    aget v0, v0, p1

    .line 30
    .line 31
    iput v0, p2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 32
    .line 33
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 34
    .line 35
    aget v0, v0, p1

    .line 36
    .line 37
    iput v0, p2, Landroid/net/NetworkStats$Entry;->metered:I

    .line 38
    .line 39
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 40
    .line 41
    aget v0, v0, p1

    .line 42
    .line 43
    iput v0, p2, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 44
    .line 45
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 46
    .line 47
    aget-wide v1, v0, p1

    .line 48
    .line 49
    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 50
    .line 51
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 52
    .line 53
    aget-wide v1, v0, p1

    .line 54
    .line 55
    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 56
    .line 57
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 58
    .line 59
    aget-wide v1, v0, p1

    .line 60
    .line 61
    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 62
    .line 63
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 64
    .line 65
    aget-wide v1, v0, p1

    .line 66
    .line 67
    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 68
    .line 69
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 70
    .line 71
    aget-wide v1, v0, p1

    .line 72
    .line 73
    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 74
    .line 75
    return-object p2
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 6

    .line 1
    new-instance v0, Landroid/net/NetworkStats;

    .line 2
    .line 3
    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 4
    .line 5
    const/16 v3, 0xa

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 17
    .line 18
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 22
    .line 23
    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 24
    .line 25
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 30
    .line 31
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    .line 32
    .line 33
    if-ge v3, v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    .line 36
    .line 37
    aget v2, v2, v3

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object v2, v2, v3

    .line 45
    .line 46
    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 49
    .line 50
    aget-wide v4, v2, v3

    .line 51
    .line 52
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 53
    .line 54
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 55
    .line 56
    aget-wide v4, v2, v3

    .line 57
    .line 58
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 59
    .line 60
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 61
    .line 62
    aget-wide v4, v2, v3

    .line 63
    .line 64
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 65
    .line 66
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 67
    .line 68
    aget-wide v4, v2, v3

    .line 69
    .line 70
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 73
    .line 74
    .line 75
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-object v0
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 6

    .line 1
    new-instance v0, Landroid/net/NetworkStats;

    .line 2
    .line 3
    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 4
    .line 5
    const/16 v3, 0xa

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 24
    .line 25
    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 26
    .line 27
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 28
    .line 29
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    .line 30
    .line 31
    if-ge v3, v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    .line 34
    .line 35
    aget v2, v2, v3

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    .line 41
    .line 42
    aget v2, v2, v3

    .line 43
    .line 44
    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 45
    .line 46
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 47
    .line 48
    aget-wide v4, v2, v3

    .line 49
    .line 50
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 51
    .line 52
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 53
    .line 54
    aget-wide v4, v2, v3

    .line 55
    .line 56
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 57
    .line 58
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 59
    .line 60
    aget-wide v4, v2, v3

    .line 61
    .line 62
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 63
    .line 64
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 65
    .line 66
    aget-wide v4, v2, v3

    .line 67
    .line 68
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 69
    .line 70
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    .line 71
    .line 72
    aget-wide v4, v2, v3

    .line 73
    .line 74
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 77
    .line 78
    .line 79
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-object v0
.end method

.method public internalSize()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public migrateTun(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    new-instance v6, Landroid/net/NetworkStats$Entry;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Landroid/net/NetworkStats$Entry;

    .line 7
    .line 8
    invoke-direct {v7}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    move-object v4, v6

    .line 16
    move-object v5, v7

    .line 17
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v6, v7}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return v7

    .line 32
    :cond_0
    move-object v0, p0

    .line 33
    move v1, p1

    .line 34
    move-object v2, p2

    .line 35
    move-object v3, p3

    .line 36
    move-object v4, v6

    .line 37
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p0, p1, p3, p2}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p3, "Failed to deduct underlying network traffic from VPN package. Moved="

    .line 53
    .line 54
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p2, "NetworkStats"

    .line 65
    .line 66
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    return p1

    .line 71
    :cond_1
    return v7
.end method

.method public setElapsedRealtime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 7
    .line 8
    aget-object v3, v1, v0

    .line 9
    .line 10
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 11
    .line 12
    aget v4, v1, v0

    .line 13
    .line 14
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 15
    .line 16
    aget v5, v1, v0

    .line 17
    .line 18
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 19
    .line 20
    aget v6, v1, v0

    .line 21
    .line 22
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 23
    .line 24
    aget v7, v1, v0

    .line 25
    .line 26
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 27
    .line 28
    aget v8, v1, v0

    .line 29
    .line 30
    move-object v2, p1

    .line 31
    invoke-virtual/range {v2 .. v8}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIII)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, -0x1

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    aput-wide v2, v1, v0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    .line 46
    .line 47
    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    .line 48
    .line 49
    aget-wide v4, v3, v1

    .line 50
    .line 51
    aput-wide v4, v2, v0

    .line 52
    .line 53
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/PrintWriter;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 9
    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 4

    .line 1
    new-instance v0, Landroid/net/NetworkStats;

    .line 2
    .line 3
    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 4
    .line 5
    const/16 v3, 0xa

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    .line 17
    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 25
    .line 26
    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/NetworkStats;->size:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/NetworkStats;->capacity:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/net/NetworkStats;->uid:[I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroid/net/NetworkStats;->set:[I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/net/NetworkStats;->tag:[I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroid/net/NetworkStats;->metered:[I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Landroid/net/NetworkStats;->operations:[J

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
