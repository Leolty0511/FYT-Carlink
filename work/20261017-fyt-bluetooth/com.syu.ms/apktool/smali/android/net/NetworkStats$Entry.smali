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

.field public operations:J

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

.method public constructor <init>(Ljava/lang/String;IIIJJJJJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 5
    iput p2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 6
    iput p3, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 7
    iput p4, p0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 8
    iput-wide p5, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 9
    iput-wide p7, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 10
    iput-wide p9, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 11
    iput-wide p11, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 12
    iput-wide p13, p0, Landroid/net/NetworkStats$Entry;->operations:J

    return-void
.end method


# virtual methods
.method public add(Landroid/net/NetworkStats$Entry;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 3
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 4
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 5
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/net/NetworkStats$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/net/NetworkStats$Entry;

    .line 3
    iget v0, p0, Landroid/net/NetworkStats$Entry;->uid:I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->set:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/net/NetworkStats$Entry;->tag:I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 4

    .line 1
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

    .line 1
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iface="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " set="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tag="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rxBytes="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rxPackets="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " txBytes="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " txPackets="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " operations="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
