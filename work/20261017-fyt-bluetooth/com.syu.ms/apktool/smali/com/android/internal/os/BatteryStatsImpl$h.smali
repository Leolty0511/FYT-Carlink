.class public final Lcom/android/internal/os/BatteryStatsImpl$h;
.super Lcom/android/internal/os/BatteryStatsImpl$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final k:Lcom/android/internal/os/BatteryStatsImpl$j;

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:J

.field public o:J

.field public p:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$j;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$i;-><init>(ILjava/util/ArrayList;)V

    .line 6
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->k:Lcom/android/internal/os/BatteryStatsImpl$j;

    .line 7
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->l:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$j;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$i;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    .line 2
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->k:Lcom/android/internal/os/BatteryStatsImpl$j;

    .line 3
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->l:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->n:J

    return-void
.end method

.method public static e(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->b(J)J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 v2, p0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 5
    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$h;->n:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 6
    iget-wide v6, v3, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    int-to-long v8, p0

    div-long/2addr v4, v8

    add-long/2addr v6, v4

    iput-wide v6, v3, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    .line 7
    :cond_0
    iput-wide v0, v3, Lcom/android/internal/os/BatteryStatsImpl$h;->n:J

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    return v0
.end method

.method public b(J)J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->n:J

    add-long v6, v4, v0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    add-long p1, v4, v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->m:I

    if-lez v4, :cond_2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->n:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    int-to-long v2, v2

    div-long v2, p1, v2

    :cond_2
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->d(Landroid/os/Parcel;J)V

    .line 2
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->n:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public f(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->m:I

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->n:J

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$h;->e(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V

    .line 5
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    .line 7
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->o:J

    :cond_1
    return-void
.end method

.method public g(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->m:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->m:I

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$h;->e(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V

    .line 5
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 7
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->b(J)J

    move-result-wide v2

    .line 8
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->m:I

    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->m:I

    .line 11
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->o:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    .line 12
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    :cond_2
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

    const-string p2, "mNesting="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->m:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mUpdateTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mAcquireTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$h;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method
