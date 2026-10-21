.class public final Lcom/android/internal/os/BatteryStatsImpl$j;
.super Landroid/os/BatteryStats$Uid;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$j$a;,
        Lcom/android/internal/os/BatteryStatsImpl$j$b;,
        Lcom/android/internal/os/BatteryStatsImpl$j$c;,
        Lcom/android/internal/os/BatteryStatsImpl$j$d;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Z

.field public c:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public d:Z

.field public e:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public f:Z

.field public g:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public h:I

.field public i:[Lcom/android/internal/os/BatteryStatsImpl$h;

.field public j:Z

.field public k:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public l:Z

.field public m:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public n:Z

.field public o:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public p:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public q:Lcom/android/internal/os/BatteryStatsImpl$b;

.field public r:[Lcom/android/internal/os/BatteryStatsImpl$c;

.field public s:[Lcom/android/internal/os/BatteryStatsImpl$e;

.field public final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$j$d;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/os/BatteryStatsImpl$j$c;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$j$b;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$j$a;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic y:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->h:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->t:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->u:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->v:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->w:Ljava/util/HashMap;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->x:Landroid/util/SparseArray;

    .line 8
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->a:I

    .line 9
    new-instance p2, Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->f:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p2, p0, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 10
    new-instance p2, Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {p2, p0, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 11
    new-instance p2, Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->i:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {p2, p0, v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    new-array p2, v2, [Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 12
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 13
    new-instance p2, Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->h:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/internal/os/BatteryStatsImpl$h;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-object v0
.end method

.method public b()Lcom/android/internal/os/BatteryStatsImpl$h;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/16 v1, 0xa

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-object v0
.end method

.method public c()Lcom/android/internal/os/BatteryStatsImpl$h;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-object v0
.end method

.method public d()Lcom/android/internal/os/BatteryStatsImpl$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    return-object v0
.end method

.method public e()Lcom/android/internal/os/BatteryStatsImpl$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->q:Lcom/android/internal/os/BatteryStatsImpl$b;

    return-object v0
.end method

.method public f()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$e;

    .line 1
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$e;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$e;-><init>(Ljava/util/ArrayList;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$c;

    .line 1
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$c;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$c;-><init>(Ljava/util/ArrayList;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAudioTurnedOnTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$j;->d()Lcom/android/internal/os/BatteryStatsImpl$i;

    move-result-object v0

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNetworkActivityCount(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$e;->b(I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getPackageStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->w:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->x:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getProcessStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->v:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSensorStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->u:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->a:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$c;->getCountLocked(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$j;->e()Lcom/android/internal/os/BatteryStatsImpl$i;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTurnedOnTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->t:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 4

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object v3, v2, p1

    if-nez v3, :cond_1

    return-wide v0

    .line 2
    :cond_1
    aget-object p1, v2, p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getWifiRunningTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getWifiScanTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public h(ILandroid/os/Parcel;)V
    .locals 8

    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v5, v0

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v0, p2, p1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/16 v4, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v1, v0, p1

    :cond_3
    :goto_0
    return-void
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserActivity()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$j;->f()V

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$e;->a(J)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown network activity type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    const-string p3, "BatteryStatsImpl"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public j(Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 8
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->t:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$j$d;

    invoke-direct {v4, p0}, Lcom/android/internal/os/BatteryStatsImpl$j$d;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;)V

    .line 5
    invoke-virtual {v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$d;->b(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 6
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->t:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_1

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 10
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$j$c;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/os/BatteryStatsImpl$j$c;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;I)V

    .line 11
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$c;->b(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 12
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->u:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    :goto_2
    if-ge v0, p1, :cond_2

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$j$b;

    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsImpl$j$b;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;)V

    .line 17
    invoke-virtual {v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$b;->b(Landroid/os/Parcel;)V

    .line 18
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->v:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 20
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    :goto_3
    if-ge v0, p1, :cond_3

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$j$a;

    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsImpl$j$a;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;)V

    .line 23
    invoke-virtual {v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$j$a;->a(Landroid/os/Parcel;)V

    .line 24
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->w:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 25
    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->b:Z

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 27
    new-instance p1, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->f:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    goto :goto_4

    .line 28
    :cond_4
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 29
    :goto_4
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->d:Z

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    new-instance p1, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->g:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    goto :goto_5

    .line 32
    :cond_5
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 33
    :goto_5
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->f:Z

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 35
    new-instance p1, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->i:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    goto :goto_6

    .line 36
    :cond_6
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    :goto_6
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->h:I

    move p1, v1

    :goto_7
    const/4 v2, 0x5

    if-ge p1, v2, :cond_8

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$j;->h(ILandroid/os/Parcel;)V

    goto :goto_8

    .line 40
    :cond_7
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aput-object v0, v2, p1

    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 41
    :cond_8
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->j:Z

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 43
    new-instance p1, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->h:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    goto :goto_9

    .line 44
    :cond_9
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 45
    :goto_9
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->l:Z

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 47
    new-instance p1, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v4, 0x7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    goto :goto_a

    .line 48
    :cond_a
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 49
    :goto_a
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->n:Z

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 51
    new-instance p1, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    goto :goto_b

    .line 52
    :cond_b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 53
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 54
    new-instance p1, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/16 v4, 0xa

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    goto :goto_c

    .line 55
    :cond_c
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 56
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 57
    new-instance p1, Lcom/android/internal/os/BatteryStatsImpl$b;

    const/16 v4, 0x9

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    iget-boolean v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->j0:Z

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$b;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;ZLandroid/os/Parcel;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->q:Lcom/android/internal/os/BatteryStatsImpl$b;

    goto :goto_d

    .line 58
    :cond_d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->q:Lcom/android/internal/os/BatteryStatsImpl$b;

    .line 59
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x3

    new-array v2, p1, [Lcom/android/internal/os/BatteryStatsImpl$c;

    .line 60
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    move v2, v1

    :goto_e
    if-ge v2, p1, :cond_f

    .line 61
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$c;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v4, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$c;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 62
    :cond_e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    .line 63
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x4

    new-array v0, p1, [Lcom/android/internal/os/BatteryStatsImpl$e;

    .line 64
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    :goto_f
    if-ge v1, p1, :cond_11

    .line 65
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$e;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v2, v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$e;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 66
    :cond_10
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    :cond_11
    return-void
.end method

.method public k(Landroid/os/Parcel;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$j$d;

    .line 5
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$j$d;->d(Landroid/os/Parcel;J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$j$c;

    .line 10
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$j$c;->d(Landroid/os/Parcel;J)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$j$b;

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$j$b;->d(Landroid/os/Parcel;)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$j$a;

    .line 20
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$j$a;->b(Landroid/os/Parcel;)V

    goto :goto_3

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    goto :goto_4

    .line 24
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    :goto_4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    goto :goto_5

    .line 28
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    :goto_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    goto :goto_6

    .line 32
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    move v0, v2

    :goto_7
    const/4 v3, 0x5

    if-ge v0, v3, :cond_8

    .line 33
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    goto :goto_8

    .line 36
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_9

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    goto :goto_9

    .line 40
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    :goto_9
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    goto :goto_a

    .line 44
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    :goto_a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_b

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    goto :goto_b

    .line 48
    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    :goto_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_c

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 52
    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    :goto_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->q:Lcom/android/internal/os/BatteryStatsImpl$b;

    if-eqz v0, :cond_d

    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->q:Lcom/android/internal/os/BatteryStatsImpl$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$b;->d(Landroid/os/Parcel;J)V

    goto :goto_d

    .line 56
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    :goto_d
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    if-eqz p2, :cond_e

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    move p2, v2

    :goto_e
    const/4 p3, 0x3

    if-ge p2, p3, :cond_f

    .line 59
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    aget-object p3, p3, p2

    invoke-virtual {p3, p1}, Lcom/android/internal/os/BatteryStatsImpl$c;->b(Landroid/os/Parcel;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 60
    :cond_e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    :cond_f
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    if-eqz p2, :cond_10

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    const/4 p2, 0x4

    if-ge v2, p2, :cond_11

    .line 63
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->s:[Lcom/android/internal/os/BatteryStatsImpl$e;

    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Lcom/android/internal/os/BatteryStatsImpl$e;->c(Landroid/os/Parcel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 64
    :cond_10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_11
    return-void
.end method

.method public noteActivityPausedLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->p:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$j;->b()Lcom/android/internal/os/BatteryStatsImpl$h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->f(Lcom/android/internal/os/BatteryStatsImpl;)V

    return-void
.end method

.method public noteAudioTurnedOffLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->l:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->m:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->l:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$j;->a()Lcom/android/internal/os/BatteryStatsImpl$h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->f(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->d:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->g:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->f(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->d:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->e:Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$j;->g()V

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->r:[Lcom/android/internal/os/BatteryStatsImpl$c;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$c;->a()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown user activity type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "BatteryStatsImpl"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public noteVideoTurnedOffLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->n:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->o:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->n:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$j;->c()Lcom/android/internal/os/BatteryStatsImpl$h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->f(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    shr-int/lit8 p1, p1, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->h:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->h:I

    .line 4
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object p1, p1, v0

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$j;->h(ILandroid/os/Parcel;)V

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$h;->f(Lcom/android/internal/os/BatteryStatsImpl;)V

    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->i:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->h:I

    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->j:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->j:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->h:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->k:Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->f(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_1
    return-void
.end method

.method public noteWifiRunningLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->b:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->f:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->f(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->f:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->i:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->f(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->f:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->g:Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->b:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->c:Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$h;->g(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method
