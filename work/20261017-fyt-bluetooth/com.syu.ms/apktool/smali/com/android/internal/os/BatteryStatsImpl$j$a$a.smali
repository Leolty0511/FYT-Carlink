.class public final Lcom/android/internal/os/BatteryStatsImpl$j$a$a;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:I

.field public i:J

.field public j:I

.field public k:I

.field public l:J

.field public m:I

.field public n:I

.field public o:J

.field public p:I

.field public q:I

.field public final synthetic r:Lcom/android/internal/os/BatteryStatsImpl$j$a;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$j$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->r:Lcom/android/internal/os/BatteryStatsImpl$j$a;

    invoke-direct {p0, p1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>(Landroid/os/BatteryStats$Uid$Pkg;)V

    .line 2
    iget-object p1, p1, Lcom/android/internal/os/BatteryStatsImpl$j$a;->f:Lcom/android/internal/os/BatteryStatsImpl$j;

    iget-object p1, p1, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->c:Z

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->a:J

    return-wide p1

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->a:J

    add-long/2addr v0, p1

    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->b:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public b(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->a:J

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->b:J

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->c:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->d:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->e:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->f:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->g:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->h:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->i:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->j:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->k:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->l:J

    .line 13
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->m:I

    .line 14
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->n:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->o:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->p:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->q:I

    return-void
.end method

.method public c(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->c:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->g:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public getLaunches(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->n:I

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->h:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->k:I

    :goto_0
    sub-int p1, v0, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->q:I

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method

.method public getStartTime(JI)J
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->l:J

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->a(J)J

    move-result-wide p1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->i:J

    :goto_0
    sub-long/2addr p1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 4
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->o:J

    goto :goto_0

    :cond_2
    :goto_1
    return-wide p1
.end method

.method public getStarts(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->m:I

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->d:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->j:I

    :goto_0
    sub-int p1, v0, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->p:I

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method
