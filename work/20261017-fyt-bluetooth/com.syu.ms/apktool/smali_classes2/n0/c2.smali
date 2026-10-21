.class public Ln0/c2;
.super Ln0/c4;
.source "SourceFile"


# static fields
.field public static B:[I

.field public static C:[I


# instance fields
.field public A:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Ln0/c2;->B:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Ln0/c2;->C:[I

    return-void

    :array_0
    .array-data 4
        0xa
        0x23
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x1e
        0x37
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/c2;->z:I

    .line 3
    iput v0, p0, Ln0/c2;->A:I

    return-void
.end method

.method public static synthetic S3()[I
    .locals 1

    .line 1
    sget-object v0, Ln0/c2;->B:[I

    return-object v0
.end method

.method public static synthetic T3()[I
    .locals 1

    .line 1
    sget-object v0, Ln0/c2;->C:[I

    return-object v0
.end method

.method public static synthetic U3(Ln0/c2;)I
    .locals 0

    .line 1
    iget p0, p0, Ln0/c2;->A:I

    return p0
.end method

.method public static synthetic V3(Ln0/c2;I)I
    .locals 0

    .line 1
    iput p1, p0, Ln0/c2;->A:I

    return p1
.end method


# virtual methods
.method public P2()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 5
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    .line 8
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 9
    invoke-static {}, Ly0/b;->r()V

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lh0/c;->l0:Z

    :cond_2
    return-void
.end method

.method public final W3()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 2
    new-instance v1, Ln0/c2$b;

    invoke-direct {v1, p0, v0}, Ln0/c2$b;-><init>(Ln0/c2;I)V

    invoke-static {v1}, Ln0/k4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-virtual {p0}, Ln0/c2;->W3()V

    .line 3
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2580

    const/16 v1, 0xa

    const-string v2, "/dev/ttyS1"

    .line 4
    invoke-static {v2, v0, v1}, Lz/k;->k(Ljava/lang/String;II)V

    .line 5
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    const/16 v2, 0x16

    aput v2, v0, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "XZC"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x81

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 4
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    .line 5
    sput v0, Lu0/b;->P2:I

    .line 6
    sput v0, Lu0/b;->R2:I

    :cond_0
    const/4 v0, 0x2

    .line 7
    sput v0, Lh0/c;->j0:I

    .line 8
    sget-object v0, Le/c;->H:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 9
    invoke-static {}, Le/a;->i()Lo1/o;

    move-result-object v1

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 10
    invoke-static {}, Le/a;->c()Lo1/o;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    return-void
.end method

.method public x3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/c4;->x3()V

    .line 2
    new-instance v0, Ln0/c2$a;

    invoke-direct {v0, p0}, Ln0/c2$a;-><init>(Ln0/c2;)V

    sput-object v0, Lu0/b;->Y2:Lo1/o;

    return-void
.end method
