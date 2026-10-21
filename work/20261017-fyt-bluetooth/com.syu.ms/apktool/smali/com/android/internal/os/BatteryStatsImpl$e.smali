.class public Lcom/android/internal/os/BatteryStatsImpl$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->f:J

    .line 4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->b:J

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->c:J

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->d:J

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->e:J

    .line 8
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->b:J

    return-void
.end method

.method public b(I)J
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->d:J

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->b:J

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->e:J

    :goto_0
    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->c:J

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public c(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$e;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
