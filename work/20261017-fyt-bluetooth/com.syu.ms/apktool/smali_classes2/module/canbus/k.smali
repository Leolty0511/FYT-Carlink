.class public Lmodule/canbus/k;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/k$e;
    }
.end annotation


# static fields
.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static final w:[I

.field public static final x:[I

.field public static final y:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/k$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/k;->w:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/k;->x:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/k;->y:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x3
        0x4
        0x5
        0x5
        0x6
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xc
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
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
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xc
        0xe
        0xf
        0x10
        0x11
        0x12
        0x14
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/k;->b:I

    const/16 v1, 0xff

    .line 3
    iput v1, p0, Lmodule/canbus/k;->e:I

    const/16 v2, 0xa

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 4
    fill-array-data v5, :array_0

    aput-object v5, v3, v0

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x3

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v11, 0x7

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v12, 0x8

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v13, 0x9

    aput-object v5, v3, v13

    iput-object v3, p0, Lmodule/canbus/k;->f:[[I

    .line 5
    iput v1, p0, Lmodule/canbus/k;->h:I

    const/16 v1, 0x24

    new-array v1, v1, [[I

    new-array v3, v4, [I

    .line 6
    fill-array-data v3, :array_a

    aput-object v3, v1, v0

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v8

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v9

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v11

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v12

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v13

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_15

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_16

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_17

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_18

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_19

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_27

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_28

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_29

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2a

    const/16 v3, 0x20

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    const/16 v3, 0x21

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2c

    const/16 v3, 0x22

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    const/16 v3, 0x23

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/k;->i:[[I

    .line 7
    new-instance v1, Lmodule/canbus/k$a;

    invoke-direct {v1, p0}, Lmodule/canbus/k$a;-><init>(Lmodule/canbus/k;)V

    iput-object v1, p0, Lmodule/canbus/k;->j:Ljava/lang/Runnable;

    .line 8
    iput v0, p0, Lmodule/canbus/k;->k:I

    .line 9
    new-instance v1, Lmodule/canbus/k$b;

    invoke-direct {v1, p0}, Lmodule/canbus/k$b;-><init>(Lmodule/canbus/k;)V

    iput-object v1, p0, Lmodule/canbus/k;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lmodule/canbus/k$c;

    invoke-direct {v1, p0}, Lmodule/canbus/k$c;-><init>(Lmodule/canbus/k;)V

    iput-object v1, p0, Lmodule/canbus/k;->m:Ljava/lang/Runnable;

    const/16 v1, 0xc8

    .line 11
    iput v1, p0, Lmodule/canbus/k;->n:I

    .line 12
    new-instance v1, Lmodule/canbus/k$d;

    invoke-direct {v1, p0}, Lmodule/canbus/k$d;-><init>(Lmodule/canbus/k;)V

    iput-object v1, p0, Lmodule/canbus/k;->o:Ljava/lang/Runnable;

    .line 13
    iput v0, p0, Lmodule/canbus/k;->p:I

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_c
    .array-data 4
        0x83
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x84
        0xd
    .end array-data

    :array_e
    .array-data 4
        0x85
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x86
        0x1a
    .end array-data

    :array_10
    .array-data 4
        0x88
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x89
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x8a
        0x2
    .end array-data

    :array_13
    .array-data 4
        0x8b
        0x2
    .end array-data

    :array_14
    .array-data 4
        0xa0
        0x1b
    .end array-data

    :array_15
    .array-data 4
        0xa1
        0x1c
    .end array-data

    :array_16
    .array-data 4
        0xc5
        0x4c
    .end array-data

    :array_17
    .array-data 4
        0xc6
        0x1
    .end array-data

    :array_18
    .array-data 4
        0xc7
        0x12
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_1b
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_1d
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_1e
    .array-data 4
        0x24
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_20
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_21
    .array-data 4
        0x2f
        0x5
    .end array-data

    :array_22
    .array-data 4
        0x35
        0x19
    .end array-data

    :array_23
    .array-data 4
        0x36
        0x37
    .end array-data

    :array_24
    .array-data 4
        0x37
        0x10
    .end array-data

    :array_25
    .array-data 4
        0x38
        0x27
    .end array-data

    :array_26
    .array-data 4
        0x39
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x47
        0x4a
    .end array-data

    :array_28
    .array-data 4
        0x48
        0x4b
    .end array-data

    :array_29
    .array-data 4
        0x49
        0xf
    .end array-data

    :array_2a
    .array-data 4
        0x4a
        0x26
    .end array-data

    :array_2b
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_2c
    .array-data 4
        0x5b
        0x3
    .end array-data

    :array_2d
    .array-data 4
        0x5c
        0x4
    .end array-data
.end method

.method public static a3(I)V
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x28

    if-gt p0, v0, :cond_1

    mul-int/lit8 p0, p0, 0xa

    rsub-int p0, p0, 0x190

    rsub-int p0, p0, 0x3e8

    goto :goto_1

    :cond_1
    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    add-int/lit16 p0, p0, -0x190

    :goto_1
    const/16 v0, 0x258

    if-le p0, v0, :cond_2

    .line 1
    invoke-static {p0}, Lu0/d;->A3(I)V

    :cond_2
    return-void
.end method

.method public static synthetic b3(Lmodule/canbus/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/k;->u3()V

    return-void
.end method

.method public static synthetic c3(Lmodule/canbus/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/k;->n:I

    return p0
.end method

.method public static synthetic d3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k;->v:I

    return v0
.end method

.method public static synthetic e3(Lmodule/canbus/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/k;->s3()V

    return-void
.end method

.method public static synthetic f3(Lmodule/canbus/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/k;->p:I

    return p0
.end method

.method public static synthetic g3(Lmodule/canbus/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/k;->p:I

    return p1
.end method

.method public static synthetic h3(Lmodule/canbus/k;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/k;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/k;->p:I

    return v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k;->r:I

    return v0
.end method

.method public static synthetic j3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/k;->r:I

    return p0
.end method

.method public static synthetic k3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/k;->w:[I

    return-object v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k;->q:I

    return v0
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k;->s:I

    return v0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k;->u:I

    return v0
.end method

.method public static synthetic o3(Lmodule/canbus/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/k;->t3()V

    return-void
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k;->t:I

    return v0
.end method

.method public static q3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/k;->y:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/k$e;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/k$e;->a(I)V

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
    sget-object p1, Lmodule/canbus/k;->x:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/k;->u:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/k;->v:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    const-string v1, "com.syu.canbus"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v3, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->e:I

    .line 8
    iput v2, v0, Lk0/mt;->f:I

    .line 9
    iput v3, v0, Lk0/mt;->g:I

    .line 10
    iput v3, v0, Lk0/mt;->b:I

    .line 11
    iput v3, v0, Lk0/mt;->c:I

    .line 12
    iput v2, v0, Lk0/mt;->d:I

    .line 13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    invoke-virtual {p0}, Lmodule/canbus/k;->init()V

    .line 16
    iget-object v0, p0, Lmodule/canbus/k;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p0}, Lmodule/canbus/k;->r3()V

    .line 18
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x5a

    const/4 v2, 0x0

    const/16 v3, 0xff

    if-eq v0, v1, :cond_c

    const/16 v1, -0x10

    const/4 v4, 0x2

    if-eq v0, v1, :cond_b

    const/16 p3, 0x11

    const/4 v1, 0x1

    if-eq v0, p3, :cond_6

    const/16 p3, 0x72

    if-eq v0, p3, :cond_1

    const/16 p3, 0x73

    if-eq v0, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 p2, p2, 0x8

    .line 2
    aget-byte p3, p1, p2

    .line 3
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    if-ne v0, v4, :cond_d

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_d

    .line 4
    iget-object p3, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, p3, Lk0/mt;->g:I

    .line 5
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    .line 7
    invoke-static {p1}, Lmodule/canbus/k;->a3(I)V

    goto/16 :goto_4

    .line 8
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p2, p2, 0x4

    .line 9
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    iput p1, p0, Lmodule/canbus/k;->d:I

    move p1, v2

    .line 10
    :goto_0
    iget-object p2, p0, Lmodule/canbus/k;->f:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_3

    .line 11
    iget p3, p0, Lmodule/canbus/k;->d:I

    aget-object v0, p2, p1

    aget v0, v0, v2

    if-ne p3, v0, :cond_2

    if-eqz p3, :cond_3

    .line 12
    iput p1, p0, Lmodule/canbus/k;->c:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iget p3, p0, Lmodule/canbus/k;->d:I

    if-eqz p3, :cond_4

    .line 14
    array-length p3, p2

    if-ge p1, p3, :cond_d

    .line 15
    aget-object p1, p2, p1

    aget p1, p1, v1

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_4

    .line 16
    :cond_4
    iget p1, p0, Lmodule/canbus/k;->c:I

    array-length p3, p2

    if-ge p1, p3, :cond_5

    if-eq p1, v3, :cond_5

    .line 17
    aget-object p1, p2, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 18
    :cond_5
    iput v3, p0, Lmodule/canbus/k;->c:I

    goto/16 :goto_4

    :cond_6
    add-int/lit8 p3, p2, 0x5

    .line 19
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x4

    .line 20
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lmodule/canbus/k;->h:I

    move p1, v2

    .line 21
    :goto_2
    iget-object p2, p0, Lmodule/canbus/k;->i:[[I

    array-length v0, p2

    if-ge p1, v0, :cond_8

    .line 22
    iget v0, p0, Lmodule/canbus/k;->h:I

    aget-object v4, p2, p1

    aget v4, v4, v2

    if-ne v0, v4, :cond_7

    if-eqz v0, :cond_8

    .line 23
    iput p1, p0, Lmodule/canbus/k;->g:I

    goto :goto_3

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    and-int/2addr p3, v3

    if-eqz p3, :cond_9

    .line 24
    array-length p3, p2

    if-ge p1, p3, :cond_d

    .line 25
    aget-object p1, p2, p1

    aget p1, p1, v1

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 26
    :cond_9
    iget p1, p0, Lmodule/canbus/k;->g:I

    array-length p3, p2

    if-ge p1, p3, :cond_a

    if-eq p1, v3, :cond_a

    .line 27
    aget-object p1, p2, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 28
    :cond_a
    iput v3, p0, Lmodule/canbus/k;->g:I

    goto :goto_4

    .line 29
    :cond_b
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_4

    .line 30
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p3, p2, 0x2

    .line 31
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 32
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 33
    aget-byte v1, p1, v1

    add-int/lit8 v4, p2, 0x5

    .line 34
    aget-byte v4, p1, v4

    add-int/lit8 v4, p2, 0x6

    .line 35
    aget-byte v4, p1, v4

    add-int/lit8 p2, p2, 0x7

    .line 36
    aget-byte p1, p1, p2

    and-int/lit16 p1, p3, 0xff

    const/16 p2, 0x1e

    .line 37
    invoke-static {p1, v2, p2}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/k;->q:I

    and-int/lit16 p1, v1, 0xff

    const/4 p2, 0x6

    const/16 p3, 0x1a

    .line 38
    invoke-static {p1, p2, p3}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/k;->s:I

    and-int/lit16 p1, v0, 0xff

    .line 39
    invoke-static {p1, p2, p3}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/k;->t:I

    :cond_d
    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/k;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/k;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

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
    sget-object v0, Lmodule/canbus/k;->w:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/k;->r:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/k;->y:Lo1/f;

    new-instance v1, Lmodule/canbus/k$e;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/k$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/k$e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/k$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/k$e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/k$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final r3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/k;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk0/lt;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/k;->R2([I)V

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
    sget v0, Lmodule/canbus/k;->v:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/k;->q3(II)V
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
    sget v0, Lmodule/canbus/k;->u:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/k;->q3(II)V
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

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    sget v1, Lmodule/canbus/k;->r:I

    invoke-static {v0, v1}, Lmodule/canbus/k;->q3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
