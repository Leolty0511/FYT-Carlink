.class public Lmodule/canbus/j0;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/j0$g;
    }
.end annotation


# static fields
.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static final t:[I

.field public static final u:[I

.field public static final v:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/j0$g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:B

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/j0;->t:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/j0;->u:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/j0;->v:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x22
        0x24
        0x25
        0x26
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/j0;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/j0;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/j0$a;

    invoke-direct {v1, p0}, Lmodule/canbus/j0$a;-><init>(Lmodule/canbus/j0;)V

    iput-object v1, p0, Lmodule/canbus/j0;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lmodule/canbus/j0$b;

    invoke-direct {v1, p0}, Lmodule/canbus/j0$b;-><init>(Lmodule/canbus/j0;)V

    iput-object v1, p0, Lmodule/canbus/j0;->f:Ljava/lang/Runnable;

    .line 6
    iput-byte v4, p0, Lmodule/canbus/j0;->g:B

    .line 7
    new-instance v1, Lmodule/canbus/j0$c;

    invoke-direct {v1, p0}, Lmodule/canbus/j0$c;-><init>(Lmodule/canbus/j0;)V

    iput-object v1, p0, Lmodule/canbus/j0;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lmodule/canbus/j0$d;

    invoke-direct {v1, p0}, Lmodule/canbus/j0$d;-><init>(Lmodule/canbus/j0;)V

    iput-object v1, p0, Lmodule/canbus/j0;->i:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 9
    iput v1, p0, Lmodule/canbus/j0;->j:I

    .line 10
    new-instance v1, Lmodule/canbus/j0$e;

    invoke-direct {v1, p0}, Lmodule/canbus/j0$e;-><init>(Lmodule/canbus/j0;)V

    iput-object v1, p0, Lmodule/canbus/j0;->k:Ljava/lang/Runnable;

    .line 11
    iput v0, p0, Lmodule/canbus/j0;->l:I

    .line 12
    new-instance v0, Lmodule/canbus/j0$f;

    invoke-direct {v0, p0}, Lmodule/canbus/j0$f;-><init>(Lmodule/canbus/j0;)V

    iput-object v0, p0, Lmodule/canbus/j0;->m:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data
.end method

.method public static synthetic a3(Lmodule/canbus/j0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/j0;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic b3(Lmodule/canbus/j0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/j0;->j:I

    return p0
.end method

.method public static synthetic c3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j0;->q:I

    return v0
.end method

.method public static synthetic d3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j0;->s:I

    return v0
.end method

.method public static synthetic e3(Lmodule/canbus/j0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/j0;->s3()V

    return-void
.end method

.method public static synthetic f3(Lmodule/canbus/j0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/j0;->l:I

    return p0
.end method

.method public static synthetic g3(Lmodule/canbus/j0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/j0;->l:I

    return p1
.end method

.method public static synthetic h3(Lmodule/canbus/j0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/j0;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/j0;->l:I

    return v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j0;->o:I

    return v0
.end method

.method public static synthetic j3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/j0;->o:I

    return p0
.end method

.method public static synthetic k3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/j0;->t:[I

    return-object v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j0;->n:I

    return v0
.end method

.method public static synthetic m3(Lmodule/canbus/j0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/j0;->u3()V

    return-void
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j0;->p:I

    return v0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j0;->r:I

    return v0
.end method

.method public static synthetic p3(Lmodule/canbus/j0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/j0;->t3()V

    return-void
.end method

.method public static q3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/j0;->v:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/j0$g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/j0$g;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public R2([I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/j0;->u:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/j0;->r:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/j0;->s:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/j0;->h:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/j0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    const/16 v4, 0x31

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iput v2, v0, Lk0/mt;->b:I

    .line 10
    iput v2, v0, Lk0/mt;->c:I

    .line 11
    iput v1, v0, Lk0/mt;->d:I

    .line 12
    invoke-virtual {p0}, Lmodule/canbus/j0;->init()V

    .line 13
    iget-object v0, p0, Lmodule/canbus/j0;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {p0}, Lmodule/canbus/j0;->r3()V

    .line 15
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/j0;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 16
    :cond_1
    iput v1, v0, Lk0/mt;->b:I

    .line 17
    iput v1, v0, Lk0/mt;->c:I

    .line 18
    iput v1, v0, Lk0/mt;->d:I

    .line 19
    :goto_0
    iget-object v0, p0, Lmodule/canbus/j0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x17

    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0x20

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x24

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x29

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 p3, 0x7d

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/2addr p2, v5

    .line 3
    aget-byte p3, p1, p2

    shr-int/2addr p3, v5

    and-int/2addr p3, v6

    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v6

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 4
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v8, [I

    const/16 v2, 0xb

    aput v2, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v6

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 6
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    const/16 p2, 0x3e8

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_3

    :cond_4
    add-int/2addr p2, v8

    .line 7
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 8
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 9
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 10
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 11
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 12
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 13
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 14
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v6

    aput p1, p2, v4

    .line 15
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 16
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    .line 17
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 18
    iput p2, p0, Lmodule/canbus/j0;->c:I

    move p2, v4

    .line 19
    :goto_1
    iget-object p3, p0, Lmodule/canbus/j0;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_8

    .line 20
    iget v0, p0, Lmodule/canbus/j0;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_7

    if-eqz v0, :cond_8

    .line 21
    iput p2, p0, Lmodule/canbus/j0;->b:I

    goto :goto_2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 22
    :cond_8
    :goto_2
    iget v0, p0, Lmodule/canbus/j0;->c:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_b

    and-int/2addr p1, v3

    if-ne p1, v6, :cond_9

    .line 23
    array-length p1, p3

    if-ge p2, p1, :cond_e

    .line 24
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_9
    if-nez p1, :cond_e

    .line 25
    iget p1, p0, Lmodule/canbus/j0;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v3, :cond_a

    .line 26
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 27
    :cond_a
    iput v3, p0, Lmodule/canbus/j0;->b:I

    goto :goto_3

    :cond_b
    and-int/2addr p1, v3

    if-ne p1, v6, :cond_e

    .line 28
    sget p1, Lh0/c;->E:I

    if-eq p1, v5, :cond_c

    if-eq p1, v2, :cond_c

    const/16 p1, 0x12

    .line 29
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 30
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_c
    const/16 p1, 0x1a

    .line 31
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 32
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_d
    add-int/lit8 p3, p2, 0x3

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v0, 0x26

    invoke-static {p3, v4, v0}, Lo1/o0;->a(III)I

    move-result p3

    sput p3, Lmodule/canbus/j0;->n:I

    add-int/lit8 p3, p2, 0x4

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v0, 0x13

    invoke-static {p3, v4, v0}, Lo1/o0;->a(III)I

    move-result p3

    sput p3, Lmodule/canbus/j0;->p:I

    add-int/2addr p2, v2

    .line 35
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1, v4, v0}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/j0;->q:I

    :cond_e
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/j0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/j0;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/j0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/j0;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/j0;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lmodule/canbus/j0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x1

    if-ge p2, p3, :cond_0

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/j0;->t:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/j0;->o:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/j0;->v:Lo1/f;

    new-instance v1, Lmodule/canbus/j0$g;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/j0$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/j0$g;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/j0$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/j0$g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/j0$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final r3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/j0;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/j0;->R2([I)V

    return-void
.end method

.method public final declared-synchronized s3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/j0;->s:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/j0;->q3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/j0;->r:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/j0;->q3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/j0;->o:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/j0;->q3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
