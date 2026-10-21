.class public Ln0/p0;
.super Ln0/c4;
.source "SourceFile"


# static fields
.field public static A:[I

.field public static z:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Ln0/p0;->z:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Ln0/p0;->A:[I

    return-void

    :array_0
    .array-data 4
        0x28
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x1e
        0x50
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    return-void
.end method

.method public static synthetic S3()[I
    .locals 1

    .line 1
    sget-object v0, Ln0/p0;->z:[I

    return-object v0
.end method

.method public static synthetic T3()[I
    .locals 1

    .line 1
    sget-object v0, Ln0/p0;->A:[I

    return-object v0
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

    :goto_0
    return-void
.end method

.method public b3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x5

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 4
    aput v2, v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 1

    const-string v0, "SP"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x42

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    return-void
.end method

.method public x3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/c4;->x3()V

    .line 2
    new-instance v0, Ln0/p0$a;

    invoke-direct {v0, p0}, Ln0/p0$a;-><init>(Ln0/p0;)V

    sput-object v0, Lu0/b;->Y2:Lo1/o;

    return-void
.end method
