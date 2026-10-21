.class public Lh0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:I

.field public static R:I

.field public static S:I

.field public static T:I

.field public static U:I

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:I

.field public static a:I

.field public static a0:I

.field public static b:Lh0/f;

.field public static b0:I

.field public static final c:Ly/g;

.field public static c0:I

.field public static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d0:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Z

.field public static e0:J

.field public static f:Z

.field public static f0:J

.field public static g:Z

.field public static g0:J

.field public static h:Ljava/lang/String;

.field public static h0:Z

.field public static i:[Ljava/lang/String;

.field public static i0:I

.field public static j:Ljava/lang/String;

.field public static j0:I

.field public static k:[Ljava/lang/String;

.field public static k0:Z

.field public static l:Ljava/lang/String;

.field public static l0:Z

.field public static m:Ljava/lang/String;

.field public static m0:Z

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lh0/f$a;

    invoke-direct {v0}, Lh0/f$a;-><init>()V

    sput-object v0, Lh0/c;->b:Lh0/f;

    .line 2
    new-instance v0, Ly/g;

    invoke-direct {v0}, Ly/g;-><init>()V

    sput-object v0, Lh0/c;->c:Ly/g;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lh0/c;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lh0/c;->e:Z

    sput-boolean v0, Lh0/c;->f:Z

    .line 5
    sput-boolean v0, Lh0/c;->g:Z

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    sput-object v1, Lh0/c;->k:[Ljava/lang/String;

    const-string v1, ""

    .line 7
    sput-object v1, Lh0/c;->y:Ljava/lang/String;

    const/4 v1, -0x1

    .line 8
    sput v1, Lh0/c;->B:I

    sput v0, Lh0/c;->C:I

    sput v0, Lh0/c;->D:I

    const/4 v1, 0x1

    .line 9
    sput v1, Lh0/c;->M:I

    .line 10
    sput v1, Lh0/c;->Q:I

    sput v1, Lh0/c;->R:I

    .line 11
    sput v0, Lh0/c;->U:I

    sput v1, Lh0/c;->V:I

    sput v0, Lh0/c;->W:I

    const v2, 0xbb80

    .line 12
    sput v2, Lh0/c;->Y:I

    .line 13
    sput v0, Lh0/c;->Z:I

    const/16 v2, 0xa

    .line 14
    sput v2, Lh0/c;->a0:I

    sput v2, Lh0/c;->b0:I

    sput v2, Lh0/c;->c0:I

    .line 15
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lh0/c;->d0:Landroid/util/SparseArray;

    const-wide/16 v2, -0x1

    .line 16
    sput-wide v2, Lh0/c;->f0:J

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lh0/c;->g0:J

    .line 18
    sput-boolean v1, Lh0/c;->h0:Z

    .line 19
    sput v1, Lh0/c;->i0:I

    .line 20
    sput v1, Lh0/c;->j0:I

    .line 21
    sput-boolean v1, Lh0/c;->k0:Z

    .line 22
    sput-boolean v0, Lh0/c;->l0:Z

    .line 23
    sput-boolean v0, Lh0/c;->m0:Z

    return-void
.end method
