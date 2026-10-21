.class public Landroid/net/NetworkStats$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public iface:Ljava/lang/String;

.field public metered:I

.field public operations:J

.field public roaming:I

.field public rxBytes:J

.field public rxPackets:J

.field public set:I

.field public tag:I

.field public txBytes:J

.field public txPackets:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 15

    .line 2
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 5
    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move v1, p2

    .line 6
    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    move v1, p3

    .line 7
    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    move v1, p4

    .line 8
    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    move v1, p5

    .line 9
    iput v1, v0, Landroid/net/NetworkStats$Entry;->metered:I

    move v1, p6

    .line 10
    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    move-wide v1, p7

    .line 11
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide v1, p9

    .line 12
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide v1, p11

    .line 13
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v1, p13

    .line 14
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v1, p15

    .line 15
    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJJJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    invoke-direct/range {v0 .. v16}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIJJJJJ)V

    return-void
.end method


# virtual methods
.method public add(Landroid/net/NetworkStats$Entry;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2
    .line 3
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 9
    .line 10
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 14
    .line 15
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 16
    .line 17
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 21
    .line 22
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 23
    .line 24
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 28
    .line 29
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 30
    .line 31
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 32
    .line 33
    add-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 35
    .line 36
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/net/NetworkStats$Entry;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/net/NetworkStats$Entry;

    .line 7
    .line 8
    iget v0, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 9
    .line 10
    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 15
    .line 16
    iget v2, p1, Landroid/net/NetworkStats$Entry;->set:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 21
    .line 22
    iget v2, p1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 23
    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    iget v0, p0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 27
    .line 28
    iget v2, p1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 29
    .line 30
    if-ne v0, v2, :cond_0

    .line 31
    .line 32
    iget v0, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 33
    .line 34
    iget v2, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 35
    .line 36
    if-ne v0, v2, :cond_0

    .line 37
    .line 38
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 39
    .line 40
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 41
    .line 42
    cmp-long v0, v2, v4

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 47
    .line 48
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 49
    .line 50
    cmp-long v0, v2, v4

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 55
    .line 56
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 57
    .line 58
    cmp-long v0, v2, v4

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 63
    .line 64
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 65
    .line 66
    cmp-long v0, v2, v4

    .line 67
    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 71
    .line 72
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 73
    .line 74
    cmp-long v0, v2, v4

    .line 75
    .line 76
    if-nez v0, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 79
    .line 80
    iget-object p1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget v1, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget v1, p0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iget v1, p0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    iget v1, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x4

    .line 47
    aput-object v1, v0, v2

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    iget-object v2, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 51
    .line 52
    aput-object v2, v0, v1

    .line 53
    .line 54
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNegative()Z
    .locals 4

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "iface="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " uid="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " set="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 30
    .line 31
    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " tag="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 44
    .line 45
    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " metered="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v1, p0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 58
    .line 59
    invoke-static {v1}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " roaming="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 72
    .line 73
    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, " rxBytes="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, " rxPackets="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " txBytes="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, " txPackets="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, " operations="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    return-object v0
.end method
