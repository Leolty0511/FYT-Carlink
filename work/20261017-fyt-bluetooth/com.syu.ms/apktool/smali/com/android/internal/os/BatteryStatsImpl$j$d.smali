.class public final Lcom/android/internal/os/BatteryStatsImpl$j$d;
.super Landroid/os/BatteryStats$Uid$Wakelock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public b:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public c:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public final synthetic d:Lcom/android/internal/os/BatteryStatsImpl$j;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->d:Lcom/android/internal/os/BatteryStatsImpl$j;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/internal/os/BatteryStatsImpl$i;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->b:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->a:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-object p1
.end method

.method public b(Ljava/util/ArrayList;Landroid/os/Parcel;)V
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
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->d:Lcom/android/internal/os/BatteryStatsImpl$j;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$d;->c(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->a:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->d:Lcom/android/internal/os/BatteryStatsImpl$j;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->c:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$d;->c(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->b:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->d:Lcom/android/internal/os/BatteryStatsImpl$j;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->d:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$d;->c(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-void
.end method

.method public final c(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$h;"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->d:Lcom/android/internal/os/BatteryStatsImpl$j;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    return-object v6
.end method

.method public d(Landroid/os/Parcel;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->a:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->c(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$i;J)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->b:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->c(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$i;J)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$d;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->c(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$i;J)V

    return-void
.end method

.method public bridge synthetic getWakeTime(I)Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$j$d;->a(I)Lcom/android/internal/os/BatteryStatsImpl$i;

    move-result-object p1

    return-object p1
.end method
