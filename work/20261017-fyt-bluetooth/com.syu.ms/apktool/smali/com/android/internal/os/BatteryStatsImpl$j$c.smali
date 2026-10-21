.class public final Lcom/android/internal/os/BatteryStatsImpl$j$c;
.super Landroid/os/BatteryStats$Uid$Sensor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public b:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public final synthetic c:Lcom/android/internal/os/BatteryStatsImpl$j;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->c:Lcom/android/internal/os/BatteryStatsImpl$j;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Sensor;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/android/internal/os/BatteryStatsImpl$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->b:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 0
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
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$c;->c(Ljava/util/ArrayList;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->b:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-void
.end method

.method public final c(Ljava/util/ArrayList;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$h;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$h;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->c:Lcom/android/internal/os/BatteryStatsImpl$j;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->e:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->c:Lcom/android/internal/os/BatteryStatsImpl$j;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->e:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v6, v0

    .line 5
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->c:Lcom/android/internal/os/BatteryStatsImpl$j;

    const/4 v5, 0x0

    move-object v3, v0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public d(Landroid/os/Parcel;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->b:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->c(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$i;J)V

    return-void
.end method

.method public getHandle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$c;->a:I

    return v0
.end method

.method public bridge synthetic getSensorTime()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$j$c;->a()Lcom/android/internal/os/BatteryStatsImpl$i;

    move-result-object v0

    return-object v0
.end method
