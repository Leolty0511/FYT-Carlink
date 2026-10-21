.class public Ln0/j4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x1

.field public static b:I = -0x1

.field public static c:Ljava/lang/String; = "BUG"

.field public static d:Ln0/c4;

.field public static final e:[Lo1/x;

.field public static final f:Lo1/x;

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x64

    new-array v1, v0, [Lo1/x;

    .line 1
    sput-object v1, Ln0/j4;->e:[Lo1/x;

    .line 2
    new-instance v1, Lo1/x;

    invoke-direct {v1}, Lo1/x;-><init>()V

    sput-object v1, Ln0/j4;->f:Lo1/x;

    new-array v0, v0, [I

    .line 3
    sput-object v0, Ln0/j4;->g:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 4
    sput-object v0, Ln0/j4;->h:[I

    const/16 v0, 0x14

    new-array v1, v0, [I

    .line 5
    sput-object v1, Ln0/j4;->i:[I

    new-array v1, v0, [I

    .line 6
    sput-object v1, Ln0/j4;->j:[I

    new-array v1, v0, [I

    .line 7
    sput-object v1, Ln0/j4;->k:[I

    new-array v0, v0, [I

    .line 8
    sput-object v0, Ln0/j4;->l:[I

    const/16 v0, 0x30

    new-array v1, v0, [I

    .line 9
    sput-object v1, Ln0/j4;->m:[I

    new-array v0, v0, [I

    .line 10
    sput-object v0, Ln0/j4;->n:[I

    const/4 v0, 0x0

    .line 11
    sput v0, Ln0/j4;->o:I

    return-void
.end method
