.class public final Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$j;,
        Lcom/android/internal/os/BatteryStatsImpl$d;,
        Lcom/android/internal/os/BatteryStatsImpl$h;,
        Lcom/android/internal/os/BatteryStatsImpl$b;,
        Lcom/android/internal/os/BatteryStatsImpl$g;,
        Lcom/android/internal/os/BatteryStatsImpl$i;,
        Lcom/android/internal/os/BatteryStatsImpl$e;,
        Lcom/android/internal/os/BatteryStatsImpl$f;,
        Lcom/android/internal/os/BatteryStatsImpl$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static Y0:I

.field public static Z0:I

.field public static final a1:[I

.field public static final b1:[I


# instance fields
.field public A:Z

.field public A0:J

.field public B:I

.field public B0:J

.field public C:J

.field public C0:J

.field public D:J

.field public D0:I

.field public E:J

.field public E0:I

.field public F:J

.field public F0:I

.field public G:J

.field public G0:I

.field public H:J

.field public H0:I

.field public I:J

.field public final I0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$g;",
            ">;"
        }
    .end annotation
.end field

.field public J:J

.field public final J0:[Ljava/lang/String;

.field public K:J

.field public final K0:[J

.field public L:J

.field public final L0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$d;",
            ">;"
        }
    .end annotation
.end field

.field public M:Z

.field public M0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public N:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public final N0:Lcom/android/internal/net/NetworkStatsFactory;

.field public O:I

.field public O0:Landroid/net/NetworkStats;

.field public final P:[Lcom/android/internal/os/BatteryStatsImpl$h;

.field public P0:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Q:Lcom/android/internal/os/BatteryStatsImpl$c;

.field public Q0:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public R:Z

.field public R0:I

.field public S:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public S0:I

.field public T:I

.field public T0:I

.field public U:I

.field public U0:I

.field public final V:[Lcom/android/internal/os/BatteryStatsImpl$h;

.field public V0:I

.field public W:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public W0:Landroid/os/Parcel;

.field public X:I

.field public final X0:Ljava/util/concurrent/locks/ReentrantLock;

.field public final Y:[Lcom/android/internal/os/BatteryStatsImpl$h;

.field public final Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsImpl$j;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Z

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public b0:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public c0:I

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public d0:Z

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;>;"
        }
    .end annotation
.end field

.field public e0:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public f0:Z

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public g0:Lcom/android/internal/os/BatteryStatsImpl$h;

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public h0:Landroid/bluetooth/BluetoothHeadset;

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public i0:Z

.field public final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;>;"
        }
    .end annotation
.end field

.field public j0:Z

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$h;",
            ">;"
        }
    .end annotation
.end field

.field public k0:J

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l0:J

.field public m:J

.field public m0:J

.field public n:Z

.field public n0:J

.field public o:Z

.field public o0:J

.field public final p:Landroid/os/Parcel;

.field public p0:J

.field public final q:Landroid/os/BatteryStats$HistoryItem;

.field public q0:I

.field public final r:Landroid/os/BatteryStats$HistoryItem;

.field public r0:I

.field public final s:Landroid/os/BatteryStats$HistoryItem;

.field public s0:I

.field public t:I

.field public t0:I

.field public u:Z

.field public u0:I

.field public v:J

.field public v0:I

.field public final w:Landroid/os/BatteryStats$HistoryItem;

.field public w0:I

.field public x:Landroid/os/BatteryStats$HistoryItem;

.field public x0:I

.field public y:Landroid/os/BatteryStats$HistoryItem;

.field public y0:I

.field public z:Z

.field public z0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->a1:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->b1:[I

    .line 3
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$a;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$a;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->c:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->d:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->e:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->f:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->g:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->h:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->i:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->j:Landroid/util/SparseArray;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->k:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->n:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->o:Z

    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    .line 17
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->q:Landroid/os/BatteryStats$HistoryItem;

    .line 18
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->r:Landroid/os/BatteryStats$HistoryItem;

    .line 19
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->s:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->t:I

    .line 21
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->u:Z

    const-wide/16 v2, 0x0

    .line 22
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->v:J

    .line 23
    new-instance v4, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->w:Landroid/os/BatteryStats$HistoryItem;

    .line 24
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->O:I

    const/4 v4, 0x5

    new-array v5, v4, [Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 25
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->P:[Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 26
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->T:I

    .line 27
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->U:I

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 28
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->V:[Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 29
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->X:I

    const/16 v4, 0x11

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 30
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->Y:[Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$e;

    .line 31
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

    .line 32
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->c0:I

    .line 33
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->A0:J

    .line 34
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->E0:I

    .line 35
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->F0:I

    .line 36
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->G0:I

    .line 37
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->H0:I

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->J0:[Ljava/lang/String;

    new-array v1, v1, [J

    .line 40
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->K0:[J

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->L0:Ljava/util/Map;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->M0:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->N0:Lcom/android/internal/net/NetworkStatsFactory;

    .line 44
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->P0:Ljava/util/HashSet;

    .line 45
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->Q0:Ljava/util/HashSet;

    .line 46
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->R0:I

    .line 47
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->S0:I

    .line 48
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->T0:I

    .line 49
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->U0:I

    .line 50
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->V0:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->W0:Landroid/os/Parcel;

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->X0:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 53
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->b:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->c:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->d:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->e:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->f:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->g:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->h:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->i:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->j:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->k:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->n:Z

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->o:Z

    .line 68
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    .line 69
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->q:Landroid/os/BatteryStats$HistoryItem;

    .line 70
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->r:Landroid/os/BatteryStats$HistoryItem;

    .line 71
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->s:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    .line 72
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->t:I

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->u:Z

    const-wide/16 v2, 0x0

    .line 74
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->v:J

    .line 75
    new-instance v4, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->w:Landroid/os/BatteryStats$HistoryItem;

    .line 76
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->O:I

    const/4 v4, 0x5

    new-array v5, v4, [Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 77
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->P:[Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 78
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->T:I

    .line 79
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->U:I

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 80
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->V:[Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 81
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->X:I

    const/16 v4, 0x11

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 82
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->Y:[Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$e;

    .line 83
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

    .line 84
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->c0:I

    .line 85
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->A0:J

    .line 86
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->E0:I

    .line 87
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->F0:I

    .line 88
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->G0:I

    .line 89
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->H0:I

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->J0:[Ljava/lang/String;

    new-array v1, v1, [J

    .line 92
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->K0:[J

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->L0:Ljava/util/Map;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->M0:Ljava/util/HashMap;

    .line 95
    new-instance v1, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->N0:Lcom/android/internal/net/NetworkStatsFactory;

    .line 96
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->P0:Ljava/util/HashSet;

    .line 97
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->Q0:Ljava/util/HashSet;

    .line 98
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->R0:I

    .line 99
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->S0:I

    .line 100
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->T0:I

    .line 101
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->U0:I

    .line 102
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->V0:I

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->W0:Landroid/os/Parcel;

    .line 104
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->X0:Ljava/util/concurrent/locks/ReentrantLock;

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->a()V

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->k(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->m:J

    .line 2
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->v:J

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    .line 4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->r:Landroid/os/BatteryStats$HistoryItem;

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->q:Landroid/os/BatteryStats$HistoryItem;

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->t:I

    .line 9
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->u:Z

    return-void
.end method

.method public b(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->m0:J

    .line 2
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->j0:Z

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->n0:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public c(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->k0:J

    .line 2
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->j0:Z

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->l0:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public computeBatteryRealtime(JI)J
    .locals 2

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->b(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p0:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->b(J)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_2
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->F:J

    return-wide p1

    .line 4
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->E:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->b(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public computeBatteryUptime(JI)J
    .locals 2

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->c(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->o0:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_2
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->D:J

    return-wide p1

    .line 4
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->C:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public computeRealtime(JI)J
    .locals 4

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->n0:J

    :goto_0
    sub-long/2addr p1, v0

    return-wide p1

    .line 2
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->K:J

    goto :goto_0

    .line 3
    :cond_2
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->L:J

    return-wide p1

    .line 4
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->J:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->K:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public computeUptime(JI)J
    .locals 4

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->l0:J

    :goto_0
    sub-long/2addr p1, v0

    return-wide p1

    .line 2
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->H:J

    goto :goto_0

    .line 3
    :cond_2
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->I:J

    return-wide p1

    .line 4
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->G:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->H:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public d()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->E0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->D0:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->h0:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->e()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->E0:I

    sub-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;ZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;ZI)V

    return-void
.end method

.method public final e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->h0:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->h0:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final f()J
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/net/rmnet0/awake_time_ms"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-wide v0

    .line 3
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 6
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :catch_0
    return-wide v0
.end method

.method public finishIteratingHistoryLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->A:Z

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public finishIteratingOldHistoryLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->A:Z

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    return v0
.end method

.method public getBatteryRealtime(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBatteryUptime(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->c(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBluetoothOnTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->g0:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCpuSpeedSteps()I
    .locals 1

    .line 1
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->Y0:I

    return v0
.end method

.method public getDischargeAmountScreenOff()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->y0:I

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->M:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->v0:I

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 4
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeAmountScreenOffSinceCharge()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->z0:I

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->M:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->v0:I

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 4
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeAmountScreenOn()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->w0:I

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->M:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->u0:I

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 4
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeAmountScreenOnSinceCharge()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->x0:I

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->M:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->u0:I

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 4
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeCurrentLevel()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->g()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeStartLevel()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->h()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGlobalWifiRunningTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->e0:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHighDischargeAmountSinceCharge()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->t0:I

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->q0:I

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 4
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoryBaseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->m:J

    return-wide v0
.end method

.method public getInputEventCount(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->Q:Lcom/android/internal/os/BatteryStatsImpl$c;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$c;->getCountLocked(I)I

    move-result p1

    return p1
.end method

.method public getIsOnBattery()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    return v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLowDischargeAmountSinceCharge()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->s0:I

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->q0:I

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    .line 4
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkActivityCount(II)J
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

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

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    return v3

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->readDelta(Landroid/os/Parcel;)V

    return v2
.end method

.method public getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->s:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$HistoryItem;->readDelta(Landroid/os/Parcel;)V

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->z:Z

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->s:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->z:Z

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->y:Landroid/os/BatteryStats$HistoryItem;

    const-string v4, "BatteryStatsImpl"

    if-nez v1, :cond_4

    .line 5
    iget-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->z:Z

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    const-string p1, "Old history ends before new history!"

    .line 6
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    .line 7
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 8
    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->y:Landroid/os/BatteryStats$HistoryItem;

    .line 9
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->z:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    const-string p1, "New history ends before old history!"

    .line 10
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->s:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHistoryBaseTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 13
    new-instance v3, Lu/e;

    new-instance v5, Landroid/util/LogWriter;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v4}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v3, v5}, Lu/e;-><init>(Ljava/io/Writer;)V

    const-string v4, "Histories differ!"

    .line 14
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Old history:"

    .line 15
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    new-instance v4, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    invoke-virtual {v4, v3, p1, v0, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    const-string p1, "New history:"

    .line 17
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    new-instance p1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {p1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->s:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    .line 19
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    :cond_6
    :goto_2
    return v2
.end method

.method public getPhoneDataConnectionCount(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->Y:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$i;->getCountLocked(I)I

    move-result p1

    return p1
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->Y:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPhoneOnTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->S:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPhoneSignalScanningTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->W:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPhoneSignalStrengthCount(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->V:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$i;->getCountLocked(I)I

    move-result p1

    return p1
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->V:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getRadioDataUptime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->C0:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->B0:J

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->f()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->C0:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getRadioDataUptimeMs()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getScreenBrightnessTime(IJI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->P:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getScreenOnTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->N:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStartCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->B:I

    return v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getWifiOnTime(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->b0:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->q0:I

    return v0
.end method

.method public i(I)Lcom/android/internal/os/BatteryStatsImpl$j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$j;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$j;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final j([BIZ)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$d;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p2

    const/4 v15, 0x0

    move v1, v15

    :goto_0
    const/16 v6, 0xa

    if-ge v1, v0, :cond_0

    .line 1
    aget-byte v2, p1, v1

    if-eq v2, v6, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v4, v7, Lcom/android/internal/os/BatteryStatsImpl;->L0:Ljava/util/Map;

    .line 4
    sget v2, Lcom/android/internal/os/BatteryStatsImpl;->Z0:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/os/BatteryStatsImpl;->Z0:I

    move v9, v1

    move v5, v15

    :goto_1
    if-ge v9, v0, :cond_a

    move v1, v9

    :goto_2
    if-ge v1, v0, :cond_1

    .line 5
    aget-byte v2, p1, v1

    if-eq v2, v6, :cond_1

    aget-byte v2, p1, v1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v0, -0x1

    if-lt v3, v1, :cond_2

    .line 6
    monitor-exit p0

    return-object v4

    .line 7
    :cond_2
    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl;->J0:[Ljava/lang/String;

    .line 8
    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsImpl;->K0:[J

    move v8, v9

    :goto_3
    if-ge v8, v3, :cond_4

    .line 9
    aget-byte v10, p1, v8

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_3

    const/16 v10, 0x3f

    aput-byte v10, p1, v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    .line 10
    sget-object v8, Lcom/android/internal/os/BatteryStatsImpl;->b1:[I

    goto :goto_4

    :cond_5
    sget-object v8, Lcom/android/internal/os/BatteryStatsImpl;->a1:[I

    :goto_4
    move-object v11, v8

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move v10, v3

    move-object v12, v1

    move-object v13, v2

    invoke-static/range {v8 .. v14}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v8

    .line 11
    aget-object v9, v1, v15

    .line 12
    aget-wide v10, v2, v16

    long-to-int v10, v10

    const-wide/16 v11, 0x3e8

    const/4 v1, 0x2

    if-eqz p3, :cond_6

    .line 13
    aget-wide v1, v2, v1

    mul-long/2addr v1, v11

    :goto_5
    move-wide v11, v1

    goto :goto_6

    .line 14
    :cond_6
    aget-wide v1, v2, v1

    const-wide/16 v13, 0x1f4

    add-long/2addr v1, v13

    div-long/2addr v1, v11

    goto :goto_5

    :goto_6
    if-eqz v8, :cond_9

    .line 15
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 16
    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 17
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$d;

    sget v13, Lcom/android/internal/os/BatteryStatsImpl;->Z0:I

    move-object v1, v8

    move-object/from16 v2, p0

    move v14, v3

    move v3, v10

    move-object v15, v4

    move v10, v5

    move-wide v4, v11

    move/from16 v17, v6

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$d;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IJI)V

    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v10, 0x1

    goto :goto_8

    :cond_7
    move v14, v3

    move-object v15, v4

    move v1, v5

    move/from16 v17, v6

    .line 18
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$d;

    .line 19
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->c:I

    sget v4, Lcom/android/internal/os/BatteryStatsImpl;->Z0:I

    if-ne v3, v4, :cond_8

    .line 20
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->a:I

    add-int/2addr v3, v10

    iput v3, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->a:I

    .line 21
    iget-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->b:J

    add-long/2addr v3, v11

    iput-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->b:J

    goto :goto_7

    .line 22
    :cond_8
    iput v10, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->a:I

    .line 23
    iput-wide v11, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->b:J

    .line 24
    iput v4, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->c:I

    add-int/lit8 v5, v1, 0x1

    goto :goto_8

    :cond_9
    move v14, v3

    move-object v15, v4

    move v1, v5

    move/from16 v17, v6

    :goto_7
    move v5, v1

    :goto_8
    move v9, v14

    move-object v4, v15

    move/from16 v6, v17

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_a
    move-object v15, v4

    move v1, v5

    .line 25
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 26
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    :cond_b
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$d;

    iget v1, v1, Lcom/android/internal/os/BatteryStatsImpl$d;->c:I

    sget v2, Lcom/android/internal/os/BatteryStatsImpl;->Z0:I

    if-eq v1, v2, :cond_b

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 30
    :cond_c
    monitor-exit p0

    return-object v15

    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->l(Landroid/os/Parcel;)V

    return-void
.end method

.method public l(Landroid/os/Parcel;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, -0x458a8b8b

    if-ne v1, v2, :cond_8

    const/4 v8, 0x0

    .line 2
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->m(Landroid/os/Parcel;Z)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->B:I

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->C:J

    const-wide/16 v9, 0x0

    .line 5
    iput-wide v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->D:J

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->E:J

    .line 7
    iput-wide v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->F:J

    .line 8
    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->M:Z

    .line 9
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v11

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->N:Lcom/android/internal/os/BatteryStatsImpl$h;

    move v11, v8

    :goto_0
    const/4 v12, 0x5

    if-ge v11, v12, :cond_0

    .line 10
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl;->P:[Lcom/android/internal/os/BatteryStatsImpl$h;

    new-instance v13, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v2, 0x0

    rsub-int/lit8 v3, v11, -0x64

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v13

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$c;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v7}, Lcom/android/internal/os/BatteryStatsImpl$c;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->Q:Lcom/android/internal/os/BatteryStatsImpl$c;

    .line 12
    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->R:Z

    .line 13
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v11

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->S:Lcom/android/internal/os/BatteryStatsImpl$h;

    move v11, v8

    :goto_1
    if-ge v11, v12, :cond_1

    .line 14
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl;->V:[Lcom/android/internal/os/BatteryStatsImpl$h;

    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v2, 0x0

    rsub-int v3, v11, -0xc8

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v14

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v2, 0x0

    const/16 v3, -0xc7

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v11

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->W:Lcom/android/internal/os/BatteryStatsImpl$h;

    move v11, v8

    :goto_2
    const/16 v1, 0x11

    if-ge v11, v1, :cond_2

    .line 16
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl;->Y:[Lcom/android/internal/os/BatteryStatsImpl$h;

    new-instance v13, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v2, 0x0

    rsub-int v3, v11, -0x12c

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v13

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move v1, v8

    :goto_3
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 17
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$e;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v7}, Lcom/android/internal/os/BatteryStatsImpl$e;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 18
    :cond_3
    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->a0:Z

    .line 19
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$h;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v11

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->b0:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 20
    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->d0:Z

    .line 21
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->e0:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 22
    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->f0:Z

    .line 23
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$h;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$h;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->g0:Lcom/android/internal/os/BatteryStatsImpl$h;

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->G:J

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->H:J

    .line 26
    iput-wide v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->I:J

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->J:J

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->K:J

    .line 29
    iput-wide v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->L:J

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v8

    :goto_4
    iput-boolean v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    .line 31
    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->j0:Z

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->k0:J

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->l0:J

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->m0:J

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->n0:J

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->o0:J

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->p0:J

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->q0:I

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->s0:I

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->t0:I

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->w0:I

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->x0:I

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->y0:I

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->z0:I

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->A0:J

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->B0:J

    const-wide/16 v1, -0x1

    .line 48
    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->C0:J

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->D0:I

    const/4 v1, -0x1

    .line 50
    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->E0:I

    .line 51
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move v2, v8

    :goto_5
    if-ge v2, v1, :cond_6

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 56
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$g;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$g;-><init>(Ljava/util/ArrayList;ZLandroid/os/Parcel;)V

    .line 57
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 58
    :cond_6
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 61
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->j:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 65
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sput v1, Lcom/android/internal/os/BatteryStatsImpl;->Y0:I

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :goto_6
    if-ge v8, v1, :cond_7

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$j;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/os/BatteryStatsImpl$j;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 71
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/os/BatteryStatsImpl$j;->j(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 72
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    return-void

    .line 73
    :cond_8
    new-instance v1, Landroid/os/ParcelFormatException;

    const-string v2, "Bad magic number"

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public m(Landroid/os/Parcel;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataSize(I)V

    .line 3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    const-string v4, "BatteryStatsImpl"

    const v5, 0x6c000

    if-lt v2, v5, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: history data buffer too large "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    and-int/lit8 v5, v2, -0x4

    if-eq v5, v2, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: history data buffer not aligned "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v4, p1, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int/2addr v3, v2

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_0
    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->o(Landroid/os/Parcel;)V

    .line 11
    :cond_2
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->m:J

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_3

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 13
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->m:J

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xea60

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->m:J

    :cond_3
    return-void
.end method

.method public final n()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$d;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/wakelocks"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v2

    goto :goto_0

    .line 2
    :catch_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/d/wakeup_sources"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    .line 3
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-lez v5, :cond_1

    :goto_1
    if-ge v2, v5, :cond_1

    .line 5
    aget-byte v1, v0, v2

    if-nez v1, :cond_0

    move v5, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl;->j([BIZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catch_1
    return-object v1
.end method

.method public o(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->n()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BatteryStatsImpl"

    const-string v1, "Couldn\'t get kernel wake lock stats"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$d;

    .line 6
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$g;

    if-nez v4, :cond_1

    .line 7
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$g;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->j0:Z

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$g;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 8
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->a:I

    invoke-virtual {v4, v3}, Lcom/android/internal/os/BatteryStatsImpl$g;->h(I)V

    .line 10
    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsImpl$d;->b:J

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$g;->i(J)V

    .line 11
    sget v2, Lcom/android/internal/os/BatteryStatsImpl;->Z0:I

    invoke-virtual {v4, v2}, Lcom/android/internal/os/BatteryStatsImpl$g;->g(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$g;

    .line 15
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$g;->e()I

    move-result v2

    sget v3, Lcom/android/internal/os/BatteryStatsImpl;->Z0:I

    if-eq v2, v3, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$g;->f()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->p()V

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->q()V

    return-void
.end method

.method public final q()V
    .locals 10

    const-string v0, "net.qtaguid_enabled"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->N0:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/internal/net/NetworkStatsFactory;->a()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->O0:Landroid/net/NetworkStats;

    if-nez v2, :cond_1

    .line 4
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->O0:Landroid/net/NetworkStats;

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 6
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->O0:Landroid/net/NetworkStats;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_6

    .line 8
    invoke-virtual {v2, v4, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 9
    iget-wide v5, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    iget-wide v5, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget v5, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v5, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget v5, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->i(I)Lcom/android/internal/os/BatteryStatsImpl$j;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->P0:Ljava/util/HashSet;

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$j;->i(IJ)V

    .line 14
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$j;->i(IJ)V

    .line 15
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

    aget-object v5, v5, v1

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$e;->a(J)V

    .line 16
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

    aget-object v5, v5, v8

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$e;->a(J)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->Q0:Ljava/util/HashSet;

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 18
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$j;->i(IJ)V

    .line 19
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    const/4 v9, 0x3

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$j;->i(IJ)V

    .line 20
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

    aget-object v5, v5, v8

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$e;->a(J)V

    .line 21
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

    aget-object v5, v5, v9

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$e;->a(J)V

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BatteryStatsImpl"

    const-string v2, "Failed to read network stats"

    .line 22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public r(Landroid/os/Parcel;Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->m:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->v:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->s(Landroid/os/Parcel;)V

    :cond_0
    return-void
.end method

.method public s(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public startIteratingHistoryLocked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->z:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->A:Z

    .line 4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    if-lez v2, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public startIteratingOldHistoryLocked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->s:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 3
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->z:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->A:Z

    .line 5
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->x:Landroid/os/BatteryStats$HistoryItem;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->y:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public t(Landroid/os/Parcel;ZI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->p()V

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->q()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v4, v2

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->c(J)J

    move-result-wide v0

    .line 6
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->b(J)J

    move-result-wide v2

    const p3, -0x458a8b8b

    .line 7
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl;->r(Landroid/os/Parcel;Z)V

    .line 9
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->B:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->C:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->E:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->N:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    move v4, p3

    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 13
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->P:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->Q:Lcom/android/internal/os/BatteryStatsImpl$c;

    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$c;->b(Landroid/os/Parcel;)V

    .line 15
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->S:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    move v4, p3

    :goto_1
    if-ge v4, v5, :cond_1

    .line 16
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->V:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object v6, v6, v4

    invoke-virtual {v6, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->W:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    move v4, p3

    :goto_2
    const/16 v5, 0x11

    if-ge v4, v5, :cond_2

    .line 18
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->Y:[Lcom/android/internal/os/BatteryStatsImpl$h;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_3
    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 19
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->Z:[Lcom/android/internal/os/BatteryStatsImpl$e;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Lcom/android/internal/os/BatteryStatsImpl$e;->c(Landroid/os/Parcel;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 20
    :cond_3
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->b0:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    .line 21
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->e0:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    .line 22
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->g0:Lcom/android/internal/os/BatteryStatsImpl$h;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$h;->d(Landroid/os/Parcel;J)V

    .line 23
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->G:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->H:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 25
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->J:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 26
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->K:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->i0:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->l0:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->n0:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->o0:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->p0:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->q0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->r0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->s0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->t0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->w0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->x0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->y0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->z0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->A0:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_5

    .line 45
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->I0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$g;

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    .line 48
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    invoke-static {p1, v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$i;->c(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$i;J)V

    goto :goto_4

    .line 51
    :cond_4
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 52
    :cond_5
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    :cond_6
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->Y0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_7

    .line 54
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    if-ge p3, p2, :cond_8

    .line 56
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$j;

    .line 58
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$j;->k(Landroid/os/Parcel;J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 59
    :cond_7
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_8
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->t(Landroid/os/Parcel;ZI)V

    return-void
.end method
