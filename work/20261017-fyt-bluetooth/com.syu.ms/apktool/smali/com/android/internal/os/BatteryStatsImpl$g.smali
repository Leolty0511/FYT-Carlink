.class public final Lcom/android/internal/os/BatteryStatsImpl$g;
.super Lcom/android/internal/os/BatteryStatsImpl$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ZLandroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->k:I

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->l:I

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->m:J

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->n:J

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    move v0, p3

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->p:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->o:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$i;-><init>(ILjava/util/ArrayList;)V

    .line 9
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->p:Z

    .line 10
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->o:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->o:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->p:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->k:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->l:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public b(J)J
    .locals 4

    .line 1
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->p:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->m:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->n:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr p1, v0

    return-wide p1
.end method

.method public d(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->d(Landroid/os/Parcel;J)V

    .line 2
    iget p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->m:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->n:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->p:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->q:I

    return v0
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->p:Z

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->n:J

    .line 3
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->l:I

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->q:I

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->l:I

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->l:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->p:Z

    .line 4
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->k:I

    return-void
.end method

.method public i(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->o:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->n:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->p:Z

    .line 4
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->m:J

    return-void
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$i;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mCurrentReportedCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->k:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mUnpluggedReportedCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->l:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCurrentReportedTotalTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mUnpluggedReportedTotalTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$g;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method
