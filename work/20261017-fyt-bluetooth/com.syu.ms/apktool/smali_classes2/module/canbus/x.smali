.class public Lmodule/canbus/x;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/x$f;
    }
.end annotation


# static fields
.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static final s:[I

.field public static final t:[I

.field public static final u:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/x$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/x;->s:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/x;->t:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/x;->u:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xa
        0xd
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
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x4
        0x5
        0x7
        0x8
        0x9
        0xb
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x14
        0x16
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/x;->c:I

    const/16 v1, 0x1b

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

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/x;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/x$a;

    invoke-direct {v1, p0}, Lmodule/canbus/x$a;-><init>(Lmodule/canbus/x;)V

    iput-object v1, p0, Lmodule/canbus/x;->e:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lmodule/canbus/x;->f:I

    .line 6
    new-instance v1, Lmodule/canbus/x$b;

    invoke-direct {v1, p0}, Lmodule/canbus/x$b;-><init>(Lmodule/canbus/x;)V

    iput-object v1, p0, Lmodule/canbus/x;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lmodule/canbus/x$c;

    invoke-direct {v1, p0}, Lmodule/canbus/x$c;-><init>(Lmodule/canbus/x;)V

    iput-object v1, p0, Lmodule/canbus/x;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lmodule/canbus/x$d;

    invoke-direct {v1, p0}, Lmodule/canbus/x$d;-><init>(Lmodule/canbus/x;)V

    iput-object v1, p0, Lmodule/canbus/x;->i:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 9
    iput v1, p0, Lmodule/canbus/x;->j:I

    .line 10
    new-instance v1, Lmodule/canbus/x$e;

    invoke-direct {v1, p0}, Lmodule/canbus/x$e;-><init>(Lmodule/canbus/x;)V

    iput-object v1, p0, Lmodule/canbus/x;->k:Ljava/lang/Runnable;

    .line 11
    iput v0, p0, Lmodule/canbus/x;->l:I

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x21
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x22
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x23
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x24
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x25
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x26
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x27
        0x18
    .end array-data

    :array_f
    .array-data 4
        0x28
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x29
        0x1e
    .end array-data

    :array_11
    .array-data 4
        0x2a
        0x1f
    .end array-data

    :array_12
    .array-data 4
        0x2b
        0x7
    .end array-data

    :array_13
    .array-data 4
        0x2c
        0x7
    .end array-data

    :array_14
    .array-data 4
        0x2d
        0x1e
    .end array-data

    :array_15
    .array-data 4
        0x2e
        0x1f
    .end array-data

    :array_16
    .array-data 4
        0x2f
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_18
    .array-data 4
        0x31
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x32
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x33
        0x10
    .end array-data
.end method

.method public static synthetic a3(Lmodule/canbus/x;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/x;->r3()V

    return-void
.end method

.method public static synthetic b3(Lmodule/canbus/x;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/x;->j:I

    return p0
.end method

.method public static synthetic c3(Lmodule/canbus/x;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/x;->p3()V

    return-void
.end method

.method public static synthetic d3(Lmodule/canbus/x;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/x;->l:I

    return p0
.end method

.method public static synthetic e3(Lmodule/canbus/x;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/x;->l:I

    return p1
.end method

.method public static synthetic f3(Lmodule/canbus/x;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/x;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/x;->l:I

    return v0
.end method

.method public static synthetic g3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/x;->n:I

    return p0
.end method

.method public static synthetic h3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/x;->s:[I

    return-object v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/x;->o:I

    return v0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/x;->q:I

    return v0
.end method

.method public static synthetic k3(Lmodule/canbus/x;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/x;->q3()V

    return-void
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/x;->p:I

    return v0
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/x;->r:I

    return v0
.end method

.method public static n3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/x;->u:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/x$f;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/x$f;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    const/16 v0, 0x12

    .line 3
    sput v0, Ly0/f;->C0:I

    return-void
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/x;->t:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/x;->q:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/x;->r:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->d:I

    .line 7
    iget-object v0, p0, Lmodule/canbus/x;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/x;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget v0, Lk0/nt;->c:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->b:I

    .line 11
    iput v2, v0, Lk0/mt;->c:I

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->b:I

    .line 13
    iput v2, v0, Lk0/mt;->c:I

    .line 14
    invoke-virtual {p0}, Lmodule/canbus/x;->init()V

    .line 15
    invoke-virtual {p0}, Lmodule/canbus/x;->o3()V

    .line 16
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/x;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x35

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_28

    const/16 v3, 0x17

    if-eq v2, v3, :cond_26

    const/16 v3, 0x30

    if-eq v2, v3, :cond_25

    const/16 v3, 0x40

    const/4 v9, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eq v2, v3, :cond_24

    const/16 v3, 0x28

    const/16 v13, 0xc

    const/16 v14, 0xb

    const/16 v16, -0x2

    const/16 v17, -0x1

    const/16 v8, 0xa

    if-eq v2, v3, :cond_12

    const/16 v3, 0x29

    if-eq v2, v3, :cond_10

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    shr-int/lit8 v2, v1, 0x0

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_29

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 4
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 5
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 6
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 7
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 8
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 9
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 10
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 11
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 13
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 15
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 19
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 21
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    add-int/lit8 v9, p2, 0x4

    .line 22
    aget-byte v11, v1, v9

    and-int/2addr v11, v5

    add-int/lit8 v12, p2, 0x5

    .line 23
    aget-byte v15, v1, v12

    and-int/2addr v15, v5

    add-int/lit8 v18, p2, 0x6

    .line 24
    aget-byte v10, v1, v18

    and-int/2addr v10, v5

    new-array v5, v7, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v5, v6

    .line 25
    invoke-static {v8, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 26
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 27
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v8, v7, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v7

    aput v13, v8, v6

    .line 28
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v8, v7, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v8, v6

    .line 29
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 30
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 31
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 32
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v7, [I

    shr-int/lit8 v5, v10, 0x6

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 33
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v7, [I

    shr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v6

    .line 34
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 35
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    aget-byte v2, v1, v12

    const/16 v3, 0xff

    and-int/lit16 v11, v2, 0xff

    .line 37
    aget-byte v1, v1, v9

    and-int/lit16 v15, v1, 0xff

    goto :goto_1

    :cond_1
    const/16 v3, 0xff

    :goto_1
    shr-int/lit8 v1, v10, 0x1

    and-int/2addr v1, v7

    if-nez v1, :cond_6

    if-eqz v11, :cond_3

    if-eq v11, v3, :cond_2

    new-array v1, v7, [I

    aput v11, v1, v6

    const/16 v2, 0x1b

    .line 38
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    const/16 v2, 0x1b

    new-array v1, v7, [I

    const/4 v3, -0x3

    aput v3, v1, v6

    .line 39
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_3
    const/16 v2, 0x1b

    new-array v1, v7, [I

    aput v16, v1, v6

    .line 40
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    if-eqz v15, :cond_5

    const/16 v1, 0xff

    if-eq v15, v1, :cond_4

    new-array v1, v7, [I

    aput v15, v1, v6

    const/16 v2, 0x1c

    .line 41
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_4
    const/16 v2, 0x1c

    new-array v1, v7, [I

    const/4 v3, -0x3

    aput v3, v1, v6

    .line 42
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_5
    const/16 v2, 0x1c

    new-array v1, v7, [I

    aput v16, v1, v6

    .line 43
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_6
    const/16 v2, 0x1c

    new-array v1, v7, [I

    aput v17, v1, v6

    const/16 v3, 0x1b

    .line 44
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    aput v17, v1, v6

    .line 45
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 46
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 48
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 49
    iput v2, v0, Lmodule/canbus/x;->c:I

    move v2, v6

    .line 50
    :goto_3
    iget-object v3, v0, Lmodule/canbus/x;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 51
    iget v4, v0, Lmodule/canbus/x;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_7

    if-eqz v4, :cond_8

    .line 52
    iput v2, v0, Lmodule/canbus/x;->b:I

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 53
    :cond_8
    :goto_4
    iget v4, v0, Lmodule/canbus/x;->c:I

    packed-switch v4, :pswitch_data_1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v7, :cond_d

    .line 54
    array-length v1, v3

    if-ge v2, v1, :cond_29

    .line 55
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_5
    move v2, v6

    const/16 v4, 0xff

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_9

    const/4 v3, 0x7

    .line 56
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x7

    .line 57
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_6
    const/16 v4, 0xff

    move v2, v6

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_a

    const/16 v3, 0x8

    .line 58
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    const/16 v3, 0x8

    .line 59
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_7
    const/16 v4, 0xff

    move v2, v6

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_b

    const/16 v3, 0x1f

    .line 60
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    const/16 v3, 0x1f

    .line 61
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_8
    const/16 v4, 0xff

    move v2, v6

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_c

    const/16 v3, 0x1e

    .line 62
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    const/16 v1, 0x1e

    .line 63
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_d
    if-nez v1, :cond_29

    .line 64
    iget v1, v0, Lmodule/canbus/x;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_e

    const/16 v2, 0xff

    if-eq v1, v2, :cond_f

    .line 65
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_e
    const/16 v2, 0xff

    .line 66
    :cond_f
    :goto_9
    iput v2, v0, Lmodule/canbus/x;->b:I

    goto/16 :goto_e

    .line 67
    :cond_10
    sget v2, Lk0/nt;->c:I

    if-ne v2, v12, :cond_11

    add-int/lit8 v2, p2, 0x2

    .line 68
    aget-byte v1, v1, v2

    const/16 v2, 0x64

    invoke-static {v1, v6, v2}, Lk0/qt;->o(IZI)V

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x53c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 71
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x4

    .line 72
    aget-byte v9, v1, v5

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0x5

    .line 73
    aget-byte v12, v1, v10

    and-int/2addr v12, v3

    add-int/lit8 v15, p2, 0x6

    .line 74
    aget-byte v15, v1, v15

    and-int/2addr v15, v3

    new-array v3, v7, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v6

    .line 75
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v6

    .line 76
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v7

    aput v14, v3, v6

    .line 77
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v7

    aput v14, v13, v6

    .line 78
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x2

    and-int/2addr v14, v7

    aput v14, v13, v6

    .line 79
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v13, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v13, v6

    .line 80
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v7, [I

    shr-int/lit8 v13, v4, 0x7

    and-int/2addr v13, v7

    aput v13, v3, v6

    .line 81
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    shr-int/lit8 v13, v4, 0x6

    and-int/2addr v13, v7

    aput v13, v3, v6

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    shr-int/lit8 v13, v4, 0x5

    and-int/2addr v13, v7

    aput v13, v3, v6

    .line 83
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    .line 84
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v4, v15, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v7, [I

    shr-int/lit8 v4, v15, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v7, [I

    shr-int/lit8 v4, v15, 0x0

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 88
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 89
    aget-byte v2, v1, v10

    const/16 v3, 0xff

    and-int/lit16 v9, v2, 0xff

    .line 90
    aget-byte v2, v1, v5

    and-int/lit16 v12, v2, 0xff

    :cond_13
    const/16 v2, 0x26

    const/16 v3, 0x1d

    const/16 v5, 0x21

    if-eqz v9, :cond_1a

    const/16 v10, 0x1f

    if-eq v9, v10, :cond_19

    if-nez v4, :cond_16

    if-lt v9, v7, :cond_14

    if-gt v9, v3, :cond_14

    new-array v10, v7, [I

    mul-int/2addr v9, v11

    add-int/lit16 v9, v9, 0xaf

    aput v9, v10, v6

    const/16 v9, 0x1b

    .line 91
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_14
    if-lt v9, v5, :cond_15

    if-gt v9, v2, :cond_15

    new-array v10, v7, [I

    sub-int/2addr v9, v5

    mul-int/2addr v9, v11

    add-int/lit16 v9, v9, 0x96

    aput v9, v10, v6

    const/16 v13, 0x1b

    .line 92
    invoke-static {v13, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_15
    const/16 v13, 0x1b

    new-array v9, v7, [I

    aput v17, v9, v6

    .line 93
    invoke-static {v13, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_16
    const/16 v13, 0x1b

    if-lt v9, v7, :cond_17

    if-gt v9, v3, :cond_17

    new-array v10, v7, [I

    mul-int/2addr v9, v8

    add-int/lit16 v9, v9, 0x280

    aput v9, v10, v6

    .line 94
    invoke-static {v13, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_17
    if-lt v9, v5, :cond_18

    if-gt v9, v2, :cond_18

    new-array v10, v7, [I

    sub-int/2addr v9, v5

    mul-int/2addr v9, v8

    add-int/lit16 v9, v9, 0x24e

    aput v9, v10, v6

    const/16 v9, 0x1b

    .line 95
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_18
    const/16 v9, 0x1b

    new-array v10, v7, [I

    aput v17, v10, v6

    .line 96
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_19
    const/16 v9, 0x1b

    new-array v10, v7, [I

    const/4 v13, -0x3

    aput v13, v10, v6

    .line 97
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1a
    const/16 v9, 0x1b

    new-array v10, v7, [I

    aput v16, v10, v6

    .line 98
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    :goto_a
    if-eqz v12, :cond_21

    const/16 v9, 0x1f

    if-eq v12, v9, :cond_20

    if-nez v4, :cond_1d

    if-lt v12, v7, :cond_1b

    if-gt v12, v3, :cond_1b

    new-array v2, v7, [I

    mul-int/2addr v12, v11

    add-int/lit16 v12, v12, 0xaf

    aput v12, v2, v6

    const/16 v3, 0x1c

    .line 99
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1b
    if-lt v12, v5, :cond_1c

    if-gt v12, v2, :cond_1c

    new-array v2, v7, [I

    sub-int/2addr v12, v5

    mul-int/2addr v12, v11

    add-int/lit16 v12, v12, 0x96

    aput v12, v2, v6

    const/16 v4, 0x1c

    .line 100
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1c
    const/16 v4, 0x1c

    new-array v2, v7, [I

    aput v17, v2, v6

    .line 101
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1d
    const/16 v4, 0x1c

    if-lt v12, v7, :cond_1e

    if-gt v12, v3, :cond_1e

    new-array v2, v7, [I

    mul-int/2addr v12, v8

    add-int/lit16 v12, v12, 0x280

    aput v12, v2, v6

    .line 102
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1e
    if-lt v12, v5, :cond_1f

    if-gt v12, v2, :cond_1f

    new-array v2, v7, [I

    sub-int/2addr v12, v5

    mul-int/2addr v12, v8

    add-int/lit16 v12, v12, 0x24e

    aput v12, v2, v6

    const/16 v3, 0x1c

    .line 103
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1f
    const/16 v3, 0x1c

    new-array v2, v7, [I

    aput v17, v2, v6

    .line 104
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_20
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/4 v4, -0x3

    aput v4, v2, v6

    .line 105
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_21
    const/16 v3, 0x1c

    new-array v2, v7, [I

    aput v16, v2, v6

    .line 106
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/4 v2, 0x7

    add-int/lit8 v2, p2, 0x7

    .line 107
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_23

    if-nez v1, :cond_22

    goto :goto_c

    :cond_22
    mul-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x258

    .line 108
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    .line 109
    :cond_23
    :goto_c
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_24
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 110
    aget-byte v8, v1, v5

    shr-int/2addr v8, v11

    const/4 v10, 0x7

    and-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    .line 111
    aget-byte v5, v1, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 112
    aget-byte v8, v1, v5

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    .line 113
    aget-byte v8, v1, v5

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    .line 114
    aget-byte v8, v1, v5

    shr-int/2addr v8, v9

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    .line 115
    aget-byte v8, v1, v5

    shr-int/2addr v8, v4

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 116
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 117
    aget-byte v8, v1, v5

    const/4 v10, 0x7

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 118
    aget-byte v8, v1, v5

    shr-int/2addr v8, v9

    and-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 119
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 120
    aget-byte v8, v1, v5

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 121
    aget-byte v8, v1, v5

    shr-int/2addr v8, v9

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 122
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    const/4 v8, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 123
    aget-byte v10, v1, v5

    shr-int/2addr v10, v8

    and-int/lit8 v8, v10, 0x1

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 124
    aget-byte v8, v1, v5

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 125
    aget-byte v8, v1, v5

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    .line 126
    aget-byte v8, v1, v5

    shr-int/2addr v8, v12

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    .line 127
    aget-byte v8, v1, v5

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 128
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x7

    .line 129
    aget-byte v8, v1, v5

    const/4 v10, 0x7

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 130
    aget-byte v8, v1, v5

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 131
    aget-byte v8, v1, v5

    shr-int/2addr v8, v9

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    .line 132
    aget-byte v8, v1, v5

    shr-int/lit8 v4, v8, 0x2

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 133
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 134
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 135
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 136
    :cond_25
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 137
    :cond_26
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit8 v2, p2, 0x2

    .line 138
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 139
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x5

    .line 140
    aget-byte v4, v1, v4

    add-int/lit8 v4, p2, 0x6

    .line 141
    aget-byte v4, v1, v4

    add-int/lit8 v4, p2, 0x7

    .line 142
    aget-byte v4, v1, v4

    add-int/lit8 v4, p2, 0x9

    .line 143
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v2, v5

    const/16 v8, 0x16

    .line 144
    invoke-static {v2, v6, v8}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/x;->o:I

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0x16

    .line 145
    invoke-static {v2, v6, v3}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/x;->p:I

    and-int/lit16 v2, v4, 0xff

    const/16 v3, 0x2d

    .line 146
    invoke-static {v2, v6, v3}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/x;->m:I

    goto :goto_d

    :cond_27
    const/16 v5, 0xff

    :goto_d
    const/16 v2, 0x7d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 147
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 148
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 149
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 150
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 151
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 152
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 153
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 154
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 155
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 156
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 157
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 158
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 159
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_28
    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 160
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_29
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/x;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/x;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/x;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/x;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/x;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8b

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

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
    .locals 5

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p4, 0xe0

    aput p4, p1, v2

    aput v4, p1, v4

    .line 1
    aget p4, p2, v3

    aput p4, p1, v1

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p4, 0x84

    aput p4, p1, v2

    aput v4, p1, v4

    .line 2
    aget p4, p2, v3

    aput p4, p1, v1

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p4, 0xc6

    aput p4, p1, v2

    aput v4, p1, v4

    .line 3
    aget p4, p2, v3

    aput p4, p1, v1

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p4, 0xca

    aput p4, p1, v2

    aput v4, p1, v4

    .line 4
    aget p2, p2, v3

    aput p2, p1, v1

    aput v3, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/x;->s:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/x;->n:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/x;->u:Lo1/f;

    new-instance v1, Lmodule/canbus/x$f;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/x$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/x$f;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/x$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/x$f;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lmodule/canbus/x$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final o3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/x;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/x;->R2([I)V

    return-void
.end method

.method public final declared-synchronized p3()V
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
    sget v0, Lmodule/canbus/x;->r:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/x;->n3(II)V
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

.method public final declared-synchronized q3()V
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
    sget v0, Lmodule/canbus/x;->q:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/x;->n3(II)V
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

.method public final declared-synchronized r3()V
    .locals 4

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
    sget-object v0, Lmodule/canbus/x;->s:[I

    sget v1, Ly0/f;->c:I

    const/4 v2, 0x0

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/x;->n3(II)V
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
