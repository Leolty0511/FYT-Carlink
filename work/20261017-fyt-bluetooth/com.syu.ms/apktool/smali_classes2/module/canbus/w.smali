.class public Lmodule/canbus/w;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/w$g;
    }
.end annotation


# static fields
.field public static k:I

.field public static l:Ljava/lang/Runnable;

.field public static m:Ljava/lang/Runnable;

.field public static n:I

.field public static o:I

.field public static final p:[I

.field public static final q:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/w$g;",
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

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmodule/canbus/w$d;

    invoke-direct {v0}, Lmodule/canbus/w$d;-><init>()V

    sput-object v0, Lmodule/canbus/w;->l:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Lmodule/canbus/w$e;

    invoke-direct {v0}, Lmodule/canbus/w$e;-><init>()V

    sput-object v0, Lmodule/canbus/w;->m:Ljava/lang/Runnable;

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/w;->p:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/w;->q:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x18
        0x1a
        0x1c
        0x1e
        0x20
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2e
        0x30
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/w;->c:I

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

    iput-object v1, p0, Lmodule/canbus/w;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/w$a;

    invoke-direct {v1, p0}, Lmodule/canbus/w$a;-><init>(Lmodule/canbus/w;)V

    iput-object v1, p0, Lmodule/canbus/w;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lmodule/canbus/w$b;

    invoke-direct {v1, p0}, Lmodule/canbus/w$b;-><init>(Lmodule/canbus/w;)V

    iput-object v1, p0, Lmodule/canbus/w;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lmodule/canbus/w$c;

    invoke-direct {v1, p0}, Lmodule/canbus/w$c;-><init>(Lmodule/canbus/w;)V

    iput-object v1, p0, Lmodule/canbus/w;->g:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 7
    iput v1, p0, Lmodule/canbus/w;->h:I

    .line 8
    new-instance v1, Lmodule/canbus/w$f;

    invoke-direct {v1, p0}, Lmodule/canbus/w$f;-><init>(Lmodule/canbus/w;)V

    iput-object v1, p0, Lmodule/canbus/w;->i:Ljava/lang/Runnable;

    .line 9
    iput v0, p0, Lmodule/canbus/w;->j:I

    return-void

    :array_0
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x31
        0x1a
    .end array-data
.end method

.method public static synthetic a3(Lmodule/canbus/w;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/w;->l3()V

    return-void
.end method

.method public static synthetic b3(Lmodule/canbus/w;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/w;->h:I

    return p0
.end method

.method public static synthetic c3(Lmodule/canbus/w;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/w;->j:I

    return p0
.end method

.method public static synthetic d3(Lmodule/canbus/w;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/w;->j:I

    return p1
.end method

.method public static synthetic e3(Lmodule/canbus/w;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/w;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/w;->j:I

    return v0
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/w;->o:I

    return v0
.end method

.method public static synthetic g3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/w;->o:I

    return p0
.end method

.method public static synthetic h3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/w;->p:[I

    return-object v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/w;->n:I

    return v0
.end method

.method public static j3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/w;->q:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/w$g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/w$g;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/w;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/w;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/w;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/w;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v1, Lk0/mt;->e:I

    const/4 v3, 0x0

    .line 7
    iput v3, v1, Lk0/mt;->f:I

    .line 8
    iput v3, v1, Lk0/mt;->i:I

    .line 9
    iput v3, v1, Lk0/mt;->b:I

    .line 10
    iput v3, v1, Lk0/mt;->c:I

    .line 11
    iput v3, v1, Lk0/mt;->d:I

    .line 12
    sget v3, Lk0/nt;->c:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iput v2, v1, Lk0/mt;->b:I

    .line 14
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0}, Lmodule/canbus/w;->init()V

    .line 16
    iget-object v1, p0, Lmodule/canbus/w;->i:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p0}, Lmodule/canbus/w;->k3()V

    .line 18
    iget-object v1, p0, Lmodule/canbus/w;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    :cond_1
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Lmodule/canbus/w;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_6

    const/16 v6, 0x33

    const/16 v7, 0x8

    if-eq v0, v6, :cond_5

    const/16 v6, 0x24

    if-eq v0, v6, :cond_3

    const/16 v6, 0x25

    const/4 v8, 0x7

    if-eq v0, v6, :cond_2

    const/16 v6, 0x30

    if-eq v0, v6, :cond_1

    const/16 p3, 0x31

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 p3, 0xf

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x11

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x5

    .line 5
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 6
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    add-int/2addr p2, v8

    .line 7
    aget-byte v2, p1, p2

    shr-int/2addr v2, v4

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    .line 8
    aget-byte p2, p1, p2

    shr-int/2addr p2, v8

    and-int/2addr p2, v5

    aput p2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 9
    aget-byte p1, p1, v1

    and-int/2addr p1, v3

    const/16 p2, 0x3f

    invoke-static {p1, v4, p2}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/w;->n:I

    goto/16 :goto_3

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 11
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v7

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    aput v0, p3, v4

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x4

    .line 12
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v7

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    aput v0, p3, v4

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x6

    .line 13
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v7

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    aput v0, p3, v4

    const/16 v0, 0x9

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 14
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    shl-int/2addr v2, v7

    add-int/2addr p2, v0

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    aput p1, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_3
    add-int/2addr p2, v2

    .line 15
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 16
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 17
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 18
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 19
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 20
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x3

    .line 21
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x4

    .line 22
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 23
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 24
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 25
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v7

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0xb

    new-array v1, v5, [I

    aput p3, v1, v4

    .line 26
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 27
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v7

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0xc

    new-array v1, v5, [I

    aput p3, v1, v4

    .line 28
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x6

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v7

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0xd

    new-array v1, v5, [I

    aput p3, v1, v4

    .line 30
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v0, v5, [I

    add-int/2addr p2, v7

    .line 31
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 32
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/2addr p2, v2

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    .line 34
    iput p1, p0, Lmodule/canbus/w;->c:I

    move p2, v4

    .line 35
    :goto_1
    iget-object p3, p0, Lmodule/canbus/w;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_8

    .line 36
    iget v0, p0, Lmodule/canbus/w;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_7

    if-eqz v0, :cond_8

    .line 37
    iput p2, p0, Lmodule/canbus/w;->b:I

    goto :goto_2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    .line 38
    array-length p1, p3

    if-ge p2, p1, :cond_b

    .line 39
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 40
    :cond_9
    iget p1, p0, Lmodule/canbus/w;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v3, :cond_a

    .line 41
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 42
    :cond_a
    iput v3, p0, Lmodule/canbus/w;->b:I

    :cond_b
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/w;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/w;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/w;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/w;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lmodule/canbus/w;->i:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lu0/c;->m:Lo1/y;

    sget-object v2, Lmodule/canbus/w;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lmodule/canbus/w;->m:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lmodule/canbus/w;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x16

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p3, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p3, v0

    const/4 p4, 0x1

    aput p1, p3, p4

    const/4 p1, 0x2

    const/16 v1, 0x84

    aput v1, p3, p1

    const/4 p1, 0x3

    .line 1
    aget v0, p2, v0

    aput v0, p3, p1

    const/4 p1, 0x4

    aget p2, p2, p4

    aput p2, p3, p1

    invoke-static {p3}, Lz/k;->s([I)V

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
    sget-object v0, Lmodule/canbus/w;->p:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/w;->o:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/w;->q:Lo1/f;

    new-instance v1, Lmodule/canbus/w$g;

    const/4 v2, 0x7

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/w$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final k3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/w;->Z2(I)V

    return-void
.end method

.method public final declared-synchronized l3()V
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
    sget v0, Lmodule/canbus/w;->n:I

    .line 3
    sget v1, Lmodule/canbus/w;->o:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, 0x7

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/w;->j3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
