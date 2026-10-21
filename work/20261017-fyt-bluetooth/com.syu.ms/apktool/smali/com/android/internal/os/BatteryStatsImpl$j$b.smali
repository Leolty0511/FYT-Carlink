.class public final Lcom/android/internal/os/BatteryStatsImpl$j$b;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:I

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:J

.field public j:J

.field public k:J

.field public l:I

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:[Lcom/android/internal/os/BatteryStatsImpl$f;

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/android/internal/os/BatteryStatsImpl$j;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->s:Lcom/android/internal/os/BatteryStatsImpl$j;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p1, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result p1

    new-array p1, p1, [Lcom/android/internal/os/BatteryStatsImpl$f;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->q:[Lcom/android/internal/os/BatteryStatsImpl$f;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->r:Ljava/util/ArrayList;

    return v1

    :cond_0
    const/16 v2, 0x2710

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File corrupt: too many excessive power entries "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryStatsImpl"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 4
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->r:Ljava/util/ArrayList;

    :goto_0
    if-ge v3, v0, :cond_2

    .line 5
    new-instance v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v2}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 9
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public b(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->a:J

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->b:J

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->c:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->d:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->e:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->f:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->g:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->h:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->i:J

    .line 10
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->j:J

    .line 11
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->k:J

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->l:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->m:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->n:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->o:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->p:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->s:Lcom/android/internal/os/BatteryStatsImpl$j;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v2

    if-lt v1, v2, :cond_0

    move v2, v1

    .line 19
    :cond_0
    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$f;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->q:[Lcom/android/internal/os/BatteryStatsImpl$f;

    :goto_0
    if-ge v0, v1, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->q:[Lcom/android/internal/os/BatteryStatsImpl$f;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$f;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->s:Lcom/android/internal/os/BatteryStatsImpl$j;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v3, v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$f;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v3, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$j$b;->a(Landroid/os/Parcel;)Z

    return-void
.end method

.method public c(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->r:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 6
    iget v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-wide v2, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public countExcessivePowers()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->q:[Lcom/android/internal/os/BatteryStatsImpl$f;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->q:[Lcom/android/internal/os/BatteryStatsImpl$f;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 15
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 16
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$c;->b(Landroid/os/Parcel;)V

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$j$b;->c(Landroid/os/Parcel;)V

    return-void
.end method

.method public getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getForegroundTime(I)J
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->k:J

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->c:J

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->g:J

    :goto_0
    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 4
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->o:J

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public getStarts(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->l:I

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->d:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->h:I

    :goto_0
    sub-int p1, v0, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->p:I

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method

.method public getSystemTime(I)J
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->j:J

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->b:J

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->f:J

    :goto_0
    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 4
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->n:J

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public getTimeAtCpuSpeedStep(II)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->q:[Lcom/android/internal/os/BatteryStatsImpl$f;

    array-length v1, v0

    const-wide/16 v2, 0x0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$c;->getCountLocked(I)I

    move-result p1

    int-to-long v2, p1

    :cond_0
    return-wide v2
.end method

.method public getUserTime(I)J
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->i:J

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->a:J

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->e:J

    :goto_0
    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 4
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$b;->m:J

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method
