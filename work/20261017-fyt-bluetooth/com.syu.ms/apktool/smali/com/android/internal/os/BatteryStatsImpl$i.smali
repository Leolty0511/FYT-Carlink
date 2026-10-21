.class public abstract Lcom/android/internal/os/BatteryStatsImpl$i;
.super Landroid/os/BatteryStats$Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->a:I

    .line 15
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->b:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->a:I

    .line 3
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->b:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->d:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->e:I

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->f:I

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->h:J

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->i:J

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->j:J

    .line 12
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$i;J)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->d(Landroid/os/Parcel;J)V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(J)J
.end method

.method public d(Landroid/os/Parcel;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->b(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->h:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->j:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public getCountLocked(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->e:I

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$i;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->f:I

    :goto_0
    sub-int p1, v0, p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->d:I

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method

.method public getTotalTimeLocked(JI)J
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->i:J

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$i;->b(J)J

    move-result-wide p1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->j:J

    :goto_0
    sub-long/2addr p1, v0

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->h:J

    goto :goto_0

    :cond_2
    :goto_1
    return-wide p1
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLoadedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mUnpluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLoadedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mLastTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mUnpluggedTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method
