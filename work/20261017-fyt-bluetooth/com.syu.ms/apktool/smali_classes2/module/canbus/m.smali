.class public Lmodule/canbus/m;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/m$b;
    }
.end annotation


# static fields
.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static final m:[I

.field public static final n:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/m$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/m;->m:[I

    .line 2
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/m;->n:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x3
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
        0x11
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/m;->c:I

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

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/m;->d:[[I

    const/16 v1, 0x64

    .line 4
    iput v1, p0, Lmodule/canbus/m;->e:I

    .line 5
    new-instance v1, Lmodule/canbus/m$a;

    invoke-direct {v1, p0}, Lmodule/canbus/m$a;-><init>(Lmodule/canbus/m;)V

    iput-object v1, p0, Lmodule/canbus/m;->f:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lmodule/canbus/m;->g:I

    return-void

    nop

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
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data
.end method

.method public static synthetic a3(Lmodule/canbus/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/m;->h:I

    return p0
.end method

.method public static synthetic b3(Lmodule/canbus/m;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/m;->h:I

    return p1
.end method

.method public static synthetic c3(Lmodule/canbus/m;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/m;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/m;->h:I

    return v0
.end method

.method public static synthetic d3(Lmodule/canbus/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/m;->r3()V

    return-void
.end method

.method public static synthetic e3(Lmodule/canbus/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/m;->e:I

    return p0
.end method

.method public static synthetic f3(Lmodule/canbus/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/m;->g:I

    return p0
.end method

.method public static synthetic g3(Lmodule/canbus/m;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/m;->g:I

    return p1
.end method

.method public static synthetic h3(Lmodule/canbus/m;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/m;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/m;->g:I

    return v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/m;->i:I

    return v0
.end method

.method public static synthetic j3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/m;->i:I

    return p0
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/m;->k:I

    return v0
.end method

.method public static synthetic l3(Lmodule/canbus/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/m;->t3()V

    return-void
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/m;->j:I

    return v0
.end method

.method public static synthetic n3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/m;->j:I

    return p0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/m;->l:I

    return v0
.end method

.method public static synthetic p3(Lmodule/canbus/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/m;->s3()V

    return-void
.end method

.method public static q3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/m;->n:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/m$b;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/m$b;->a(I)V

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
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/m;->m:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/m;->k:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/m;->l:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

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
    sget v3, Lk0/nt;->c:I

    const/4 v4, 0x2

    const-string v5, "com.syu.canbus"

    if-eq v3, v4, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_0

    .line 7
    iput v2, v0, Lk0/mt;->c:I

    goto :goto_0

    .line 8
    :cond_0
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v1, v0, Lk0/mt;->c:I

    .line 11
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lmodule/canbus/m;->init()V

    .line 13
    iget-object v0, p0, Lmodule/canbus/m;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_14

    const/16 v5, 0xb

    if-eq v0, v5, :cond_13

    const/16 v6, 0x7f

    if-eq v0, v6, :cond_12

    const p3, 0x400c2

    const v7, 0x100c2

    const v8, 0x300c2

    const/4 v9, 0x5

    const/4 v10, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/2addr p2, v2

    .line 2
    aget-byte p1, p1, p2

    const/16 p2, 0x63

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x0

    and-int/2addr v0, v6

    aput v0, p3, v3

    .line 3
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 4
    sget p2, Ln0/j4;->b:I

    const/16 p3, 0x3a

    if-ne p2, p3, :cond_15

    and-int/2addr p1, v6

    .line 5
    invoke-static {p1}, Ly0/h;->t0(I)V

    goto/16 :goto_8

    .line 6
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7
    sget v0, Lk0/nt;->a:I

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-ne v0, p3, :cond_15

    :cond_0
    add-int/lit8 p3, p2, 0x3

    .line 8
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->j1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 9
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->j1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 10
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->j1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 11
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->j1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->G2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 12
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->j1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 13
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->j1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 14
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->j1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 15
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ll0/c0;->j1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    .line 16
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 17
    sget v0, Lk0/nt;->a:I

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_2

    if-ne v0, p3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 18
    aget-byte p3, p1, p3

    add-int/2addr p2, v10

    aget-byte p1, p1, p2

    const/16 p2, 0x640

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_2
    :goto_0
    add-int/lit8 p3, p2, 0x2

    .line 19
    aget-byte p3, p1, p3

    add-int/2addr p2, v10

    aget-byte p1, p1, p2

    const/16 p2, 0x12fc

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    .line 20
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_15

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->W0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->W0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 23
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->W0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v9

    .line 24
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ll0/c0;->W0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 25
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 26
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x6

    .line 27
    aget-byte v2, p1, v2

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 28
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v4

    aput v6, v1, v3

    .line 29
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 30
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x3

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 31
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x2

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 32
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v5, v4, [I

    and-int/2addr p3, v4

    aput p3, v5, v3

    .line 33
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 34
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 35
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x5

    and-int/lit8 v6, v5, 0x1

    aput v6, v1, v3

    .line 36
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v1, v4, [I

    and-int/lit8 v5, v5, 0x7

    aput v5, v1, v3

    .line 37
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v4, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, v1, v3

    .line 38
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 39
    aget-byte v0, p1, p3

    add-int/2addr p2, v9

    .line 40
    aget-byte v1, p1, p2

    const-string v5, "persist.fyt.reversetemp"

    .line 41
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 42
    aget-byte v0, p1, p2

    .line 43
    aget-byte v1, p1, p3

    :cond_3
    const/16 p1, 0x40

    const/16 p2, 0x1e

    const/4 p3, -0x2

    const/4 v5, -0x3

    const/16 v6, 0x1b

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    if-eqz v0, :cond_5

    if-lt v0, p2, :cond_4

    if-gt v0, p1, :cond_4

    new-array v8, v4, [I

    aput v0, v8, v3

    .line 44
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v0, v4, [I

    aput v7, v0, v3

    .line 45
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v0, v4, [I

    aput p3, v0, v3

    .line 46
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v0, v4, [I

    aput v5, v0, v3

    .line 47
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v0, 0x1c

    if-eq v1, v7, :cond_9

    if-eqz v1, :cond_8

    if-lt v1, p2, :cond_7

    if-gt v1, p1, :cond_7

    new-array p1, v4, [I

    aput v1, p1, v3

    .line 48
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array p1, v4, [I

    aput v7, p1, v3

    .line 49
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array p1, v4, [I

    aput p3, p1, v3

    .line 50
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array p1, v4, [I

    aput v5, p1, v3

    .line 51
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 p1, 0x41

    new-array p2, v4, [I

    shr-int/lit8 p3, v2, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 52
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_5
    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte v0, p1, p3

    const-string v1, "persist.syu.reversefrontdoor"

    .line 54
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 55
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 56
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 57
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 58
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x5

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 59
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x4

    and-int/2addr v5, v4

    aput v5, v1, v3

    const/4 v5, 0x4

    .line 60
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    shr-int/lit8 v5, v0, 0x3

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 61
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    shr-int/2addr v0, v2

    and-int/2addr v0, v4

    aput v0, v1, v3

    .line 62
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 63
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    add-int/2addr p2, v10

    .line 64
    aget-byte p2, p1, p2

    .line 65
    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lmodule/canbus/m;->c:I

    move p1, v3

    .line 66
    :goto_4
    iget-object p3, p0, Lmodule/canbus/m;->d:[[I

    array-length v0, p3

    if-ge p1, v0, :cond_c

    .line 67
    iget v0, p0, Lmodule/canbus/m;->c:I

    aget-object v1, p3, p1

    aget v1, v1, v3

    if-ne v0, v1, :cond_b

    if-eqz v0, :cond_c

    .line 68
    iput p1, p0, Lmodule/canbus/m;->b:I

    goto :goto_5

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    and-int/lit16 p2, p2, 0xff

    if-eqz p2, :cond_d

    .line 69
    array-length p2, p3

    if-ge p1, p2, :cond_15

    .line 70
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 71
    :cond_d
    array-length p2, p3

    if-gt p1, p2, :cond_15

    .line 72
    iget p1, p0, Lmodule/canbus/m;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 73
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 74
    sget v0, Lk0/nt;->a:I

    if-eq v0, v8, :cond_e

    if-eq v0, v7, :cond_e

    if-ne v0, p3, :cond_15

    :cond_e
    add-int/lit8 p3, p2, 0x2

    .line 75
    aget-byte p3, p1, p3

    add-int/2addr p2, v10

    .line 76
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 77
    iput p2, p0, Lmodule/canbus/m;->c:I

    move p2, v3

    .line 78
    :goto_6
    iget-object p3, p0, Lmodule/canbus/m;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_10

    .line 79
    iget v0, p0, Lmodule/canbus/m;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_f

    if-eqz v0, :cond_10

    .line 80
    iput p2, p0, Lmodule/canbus/m;->b:I

    goto :goto_7

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_10
    :goto_7
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_11

    .line 81
    array-length p1, p3

    if-ge p2, p1, :cond_15

    .line 82
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 83
    :cond_11
    array-length p1, p3

    if-gt p2, p1, :cond_15

    .line 84
    iget p1, p0, Lmodule/canbus/m;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 85
    :cond_12
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    add-int/lit8 v0, p2, 0x4

    .line 86
    aget-byte v0, p1, v0

    .line 87
    invoke-static {p1, p2, p3}, Lo1/b0;->h([BII)V

    const/16 p1, 0x64

    new-array p2, v4, [I

    shr-int/lit8 p3, v0, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 88
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_14
    add-int/2addr p2, v2

    .line 89
    aget-byte p1, p1, p2

    const/16 p2, 0x65

    new-array p3, v4, [I

    aput p1, p3, v3

    .line 90
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    :cond_15
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/m;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x66

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
    .locals 2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x5

    new-array p4, p4, [I

    const/16 v0, 0xe3

    const/4 v1, 0x0

    aput v0, p4, v1

    const/16 v0, 0x82

    aput v0, p4, p3

    aput p1, p4, p1

    const/4 p1, 0x3

    .line 2
    aget v0, p2, v1

    aput v0, p4, p1

    const/4 p1, 0x4

    aget p2, p2, p3

    aput p2, p4, p1

    invoke-static {p4}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/m;->n:Lo1/f;

    new-instance v1, Lmodule/canbus/m$b;

    const/16 v2, 0x11

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/m$b;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/m$b;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lmodule/canbus/m$b;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final r3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/m;->t3()V

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/m;->s3()V

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
    sget v0, Lmodule/canbus/m;->l:I

    const/16 v1, 0x10

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/m;->q3(II)V
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
    sget v0, Lmodule/canbus/m;->k:I

    const/16 v1, 0x11

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/m;->q3(II)V
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
