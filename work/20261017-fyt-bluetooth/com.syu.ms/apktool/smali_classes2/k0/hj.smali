.class public Lk0/hj;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/hj$l;
    }
.end annotation


# static fields
.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static final J:[I

.field public static final K:[I

.field public static final L:[I

.field public static final M:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lk0/hj$l;",
            ">;"
        }
    .end annotation
.end field

.field public static final N:Lo1/y;


# instance fields
.field public A:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:[[I

.field public final k:[B

.field public l:I

.field public m:I

.field public n:I

.field public o:B

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:J

.field public w:I

.field public x:Z

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/hj;->J:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lk0/hj;->K:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lk0/hj;->L:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lk0/hj;->M:Lo1/f;

    .line 5
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Lk0/hj;->N:Lo1/y;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x5
        0x6
        0x8
        0x9
        0xa
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
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
    .end array-data

    :array_1
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
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hj;->b:I

    .line 3
    iput v0, p0, Lk0/hj;->i:I

    const/16 v1, 0x1c

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x15

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x16

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x17

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x18

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x19

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/hj;->j:[[I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 5
    iput-object v1, p0, Lk0/hj;->k:[B

    .line 6
    iput v0, p0, Lk0/hj;->l:I

    .line 7
    iput v0, p0, Lk0/hj;->m:I

    .line 8
    iput v0, p0, Lk0/hj;->n:I

    .line 9
    iput-byte v0, p0, Lk0/hj;->o:B

    .line 10
    new-instance v0, Lk0/hj$c;

    invoke-direct {v0, p0}, Lk0/hj$c;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->p:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/hj$d;

    invoke-direct {v0, p0}, Lk0/hj$d;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->q:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/hj$e;

    invoke-direct {v0, p0}, Lk0/hj$e;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->r:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/hj$f;

    invoke-direct {v0, p0}, Lk0/hj$f;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->s:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/hj$g;

    invoke-direct {v0, p0}, Lk0/hj$g;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->t:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/hj$h;

    invoke-direct {v0, p0}, Lk0/hj$h;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->u:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lk0/hj;->v:J

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lk0/hj;->w:I

    .line 18
    iput-boolean v4, p0, Lk0/hj;->x:Z

    .line 19
    new-instance v0, Lk0/hj$i;

    invoke-direct {v0, p0}, Lk0/hj$i;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->y:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lk0/hj$a;

    invoke-direct {v0, p0}, Lk0/hj$a;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->z:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lk0/hj$b;

    invoke-direct {v0, p0}, Lk0/hj$b;-><init>(Lk0/hj;)V

    iput-object v0, p0, Lk0/hj;->A:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
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
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x10
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x81
        0x22
    .end array-data

    :array_10
    .array-data 4
        0x82
        0x23
    .end array-data

    :array_11
    .array-data 4
        0x83
        0x20
    .end array-data

    :array_12
    .array-data 4
        0x84
        0x21
    .end array-data

    :array_13
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x87
        0x20
    .end array-data

    :array_16
    .array-data 4
        0x88
        0x21
    .end array-data

    :array_17
    .array-data 4
        0x89
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x8a
        0x9
    .end array-data

    :array_19
    .array-data 4
        0x8d
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x8b
        0x9
    .end array-data

    :array_1b
    .array-data 4
        0x8d
        0x9
    .end array-data
.end method

.method public static a3()V
    .locals 19

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0xd2

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    invoke-static {}, Lk0/hj;->b3()B

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x2e

    const/4 v8, 0x7

    const/4 v9, 0x3

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/16 v14, 0xa

    const/16 v15, 0x30

    if-eq v3, v5, :cond_8

    const/4 v6, 0x5

    if-eq v3, v13, :cond_6

    if-eq v3, v12, :cond_3

    if-eq v3, v11, :cond_1

    if-eq v3, v10, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    sget v3, Lu0/b;->r3:I

    div-int/lit8 v5, v3, 0x64

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v9

    .line 6
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v13

    .line 7
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v6

    aput v4, v1, v12

    .line 8
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v8

    .line 9
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v11

    .line 10
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v10

    .line 11
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v14

    goto/16 :goto_5

    .line 12
    :cond_3
    sget v3, Ld1/d;->c:I

    if-ne v3, v5, :cond_10

    .line 13
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_4

    .line 14
    div-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v15

    aput v4, v1, v9

    .line 15
    :cond_4
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v13

    const/16 v3, 0x2d

    aput v3, v1, v6

    .line 16
    sget v3, Ld1/d;->d:I

    div-int/lit8 v3, v3, 0x64

    .line 17
    div-int/lit16 v4, v3, 0x2710

    if-lez v4, :cond_5

    add-int/2addr v4, v15

    aput v4, v1, v12

    .line 18
    :cond_5
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v15

    aput v4, v1, v8

    .line 19
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v15

    aput v4, v1, v11

    aput v7, v1, v10

    .line 20
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v14

    const/16 v4, 0xb

    .line 21
    rem-int/2addr v3, v14

    div-int/2addr v3, v5

    add-int/2addr v3, v15

    aput v3, v1, v4

    goto/16 :goto_5

    .line 22
    :cond_6
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_7

    goto/16 :goto_5

    .line 23
    :cond_7
    sget v3, Lo0/e;->B:I

    div-int/lit8 v5, v3, 0x64

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v9

    .line 24
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v13

    .line 25
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v6

    aput v4, v1, v12

    .line 26
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v8

    .line 27
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v11

    .line 28
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v10

    .line 29
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v14

    goto/16 :goto_5

    .line 30
    :cond_8
    sget v3, Lw0/d;->h:I

    const/high16 v16, 0x10000

    sub-int v17, v3, v16

    const/16 v18, 0x36

    if-eqz v17, :cond_d

    sub-int v0, v3, v16

    if-eq v5, v0, :cond_d

    sub-int v3, v3, v16

    if-ne v6, v3, :cond_9

    goto :goto_3

    :cond_9
    aput v15, v1, v9

    .line 31
    sget v0, Lw0/d;->j:I

    and-int/lit16 v0, v0, 0xff

    rem-int/2addr v0, v12

    add-int/2addr v0, v5

    add-int/2addr v0, v15

    aput v0, v1, v13

    .line 32
    aget v0, v1, v13

    if-nez v0, :cond_a

    aput v18, v1, v13

    .line 33
    :cond_a
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_b

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_1

    :cond_b
    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v15

    :goto_1
    aput v3, v1, v12

    .line 34
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    if-nez v3, :cond_c

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v4

    goto :goto_2

    :cond_c
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v15

    :goto_2
    aput v3, v1, v8

    .line 35
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v11

    .line 36
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v10

    .line 37
    rem-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v14

    goto :goto_5

    :cond_d
    :goto_3
    aput v15, v1, v9

    .line 38
    sget v0, Lw0/d;->j:I

    and-int/lit16 v0, v0, 0xff

    rem-int/2addr v0, v12

    add-int/2addr v0, v5

    add-int/2addr v0, v15

    aput v0, v1, v13

    .line 39
    aget v0, v1, v13

    if-nez v0, :cond_e

    aput v18, v1, v13

    .line 40
    :cond_e
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_f

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_4

    :cond_f
    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v15

    :goto_4
    aput v3, v1, v12

    .line 41
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v15

    aput v3, v1, v8

    .line 42
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v11

    aput v7, v1, v10

    .line 43
    rem-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v14

    :cond_10
    :goto_5
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_6
    if-ge v2, v3, :cond_11

    add-int/lit8 v4, v2, 0x1

    .line 44
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_6

    .line 45
    :cond_11
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()B
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    move v1, v2

    goto :goto_2

    :pswitch_2
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_4
    const/16 v1, 0xc

    goto :goto_2

    .line 2
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :cond_0
    if-ne v0, v4, :cond_1

    const/16 v1, 0xe

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_6
    move v1, v3

    goto :goto_2

    .line 3
    :pswitch_7
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v3, v0, v2

    if-nez v3, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    sub-int v3, v0, v2

    if-ne v6, v3, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    sub-int v2, v0, v2

    if-ne v4, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :pswitch_8
    const/16 v1, 0x9

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v5

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v1, 0x10

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    :cond_4
    :goto_0
    return v0
.end method

.method public static synthetic h3(Lk0/hj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/hj;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic i3(Lk0/hj;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/hj;->x3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic j3(Lk0/hj;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/hj;->v3()V

    return-void
.end method

.method public static synthetic k3(Lk0/hj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/hj;->v:J

    return-wide v0
.end method

.method public static synthetic l3(Lk0/hj;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/hj;->v:J

    return-wide p1
.end method

.method public static synthetic m3(Lk0/hj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/hj;->w:I

    return p0
.end method

.method public static synthetic n3(Lk0/hj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/hj;->w:I

    return p1
.end method

.method public static synthetic o3(Lk0/hj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/hj;->x:Z

    return p0
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lk0/hj;->C:I

    return v0
.end method

.method public static synthetic q3(Lk0/hj;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/hj;->w3(I)V

    return-void
.end method

.method public static synthetic r3(Lk0/hj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/hj;->y:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic s3()I
    .locals 1

    .line 1
    sget v0, Lk0/hj;->B:I

    return v0
.end method

.method public static synthetic t3()I
    .locals 1

    .line 1
    sget v0, Lk0/hj;->I:I

    return v0
.end method

.method public static u3(II)V
    .locals 1

    .line 1
    sget-object v0, Lk0/hj;->M:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/hj$l;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lk0/hj$l;->a(I)V

    :cond_0
    return-void
.end method

.method public static y3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 3
    aget-byte v2, p0, v2

    :goto_0
    if-gt v1, v0, :cond_0

    .line 4
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p0, v0

    .line 6
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0xc

    const/16 v3, 0x10

    const/16 v4, 0xd

    const/16 v5, 0xb

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v6

    if-eqz p1, :cond_1

    const/16 p1, 0xf

    .line 4
    invoke-virtual {p0, p1}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v3}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v4}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xe

    .line 8
    invoke-virtual {p0, p1}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0, v5}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v2}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v6

    const/4 v1, 0x7

    if-ne v0, v6, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v1}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v6

    if-nez p1, :cond_a

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_a

    .line 17
    invoke-virtual {p0, v1}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v6

    const/4 v0, 0x6

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lk0/hj;->g3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v6

    const/4 v0, 0x5

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v0}, Lk0/hj;->g3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lk0/hj;->g3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v6

    const/4 v0, 0x4

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v0}, Lk0/hj;->g3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_a

    .line 32
    invoke-virtual {p0, v0}, Lk0/hj;->g3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v6

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v1}, Lk0/hj;->g3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v6, :cond_a

    .line 37
    invoke-virtual {p0, v1}, Lk0/hj;->g3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v6

    const/16 v0, 0xa

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_a

    .line 40
    invoke-virtual {p0, v6}, Lk0/hj;->g3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_a

    .line 42
    invoke-virtual {p0, v6}, Lk0/hj;->g3(I)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public P2([I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2
    sget-object v0, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    shr-int/2addr v3, v1

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lk0/hj;->D:I

    .line 3
    aget v3, v0, v1

    shr-int/2addr v3, v1

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lk0/hj;->E:I

    const/4 v3, 0x2

    .line 4
    aget v0, v0, v3

    shr-int/2addr v0, v1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    sput v0, Lk0/hj;->F:I

    const/4 v2, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x4

    if-eqz p1, :cond_4

    .line 5
    array-length v6, p1

    if-nez v6, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    array-length v6, p1

    if-le v6, v1, :cond_5

    .line 7
    aget p1, p1, v1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    sget-object p1, Lk0/hj;->K:[I

    aget p1, p1, v0

    invoke-static {v2, p1}, Lk0/hj;->u3(II)V

    goto :goto_1

    .line 9
    :cond_2
    sget-object p1, Lk0/hj;->K:[I

    sget v0, Lk0/hj;->E:I

    aget p1, p1, v0

    invoke-static {v4, p1}, Lk0/hj;->u3(II)V

    goto :goto_1

    .line 10
    :cond_3
    sget-object p1, Lk0/hj;->K:[I

    sget v0, Lk0/hj;->D:I

    aget p1, p1, v0

    invoke-static {v5, p1}, Lk0/hj;->u3(II)V

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    sget-object p1, Lk0/hj;->K:[I

    sget v0, Lk0/hj;->D:I

    aget v0, p1, v0

    invoke-static {v5, v0}, Lk0/hj;->u3(II)V

    .line 12
    sget v0, Lk0/hj;->E:I

    aget v0, p1, v0

    invoke-static {v4, v0}, Lk0/hj;->u3(II)V

    .line 13
    sget v0, Lk0/hj;->F:I

    aget p1, p1, v0

    invoke-static {v2, p1}, Lk0/hj;->u3(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public R2([I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2
    sget v0, Ly0/f;->l:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v3}, Lo1/o0;->a(III)I

    move-result v0

    sput v0, Lk0/hj;->G:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v2, v3}, Lo1/o0;->a(III)I

    move-result v0

    sput v0, Lk0/hj;->H:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_3

    .line 4
    array-length v4, p1

    if-nez v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    array-length v4, p1

    if-le v4, v1, :cond_4

    .line 6
    aget p1, p1, v1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget-object p1, Lk0/hj;->L:[I

    sget v0, Lk0/hj;->G:I

    aget p1, p1, v0

    invoke-static {v3, p1}, Lk0/hj;->u3(II)V

    goto :goto_1

    .line 8
    :cond_2
    sget-object p1, Lk0/hj;->L:[I

    aget p1, p1, v0

    invoke-static {v2, p1}, Lk0/hj;->u3(II)V

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    sget-object p1, Lk0/hj;->L:[I

    sget v0, Lk0/hj;->G:I

    aget v0, p1, v0

    invoke-static {v3, v0}, Lk0/hj;->u3(II)V

    .line 10
    sget v0, Lk0/hj;->H:I

    aget p1, p1, v0

    invoke-static {v2, p1}, Lk0/hj;->u3(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public S2()V
    .locals 5

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lk0/hj;->v:J

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lk0/hj;->w:I

    .line 3
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/hj;->s:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lk0/hj;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lk0/hj;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/hj;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/hj;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/hj;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lk0/mt;->e:I

    .line 12
    iput v1, v0, Lk0/mt;->g:I

    .line 13
    iput v2, v0, Lk0/mt;->o:I

    const/16 v3, 0x9

    new-array v3, v3, [I

    .line 14
    fill-array-data v3, :array_0

    iput-object v3, v0, Lk0/mt;->m:[I

    .line 15
    sget v3, Lk0/nt;->c:I

    if-eq v3, v2, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iput v2, v0, Lk0/mt;->h:I

    .line 17
    :goto_0
    iput v1, v0, Lk0/mt;->h:I

    return-void

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x20

    const/4 v4, 0x2

    const/16 v5, 0xff

    if-eq v2, v3, :cond_27

    const/16 v3, -0x10

    if-eq v2, v3, :cond_26

    const/16 v3, 0x41

    if-eq v2, v3, :cond_25

    const/16 v6, 0x72

    const/16 v7, 0xf

    const/16 v8, 0x80

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v6, :cond_1d

    const/16 v6, 0x74

    const/4 v11, 0x3

    if-eq v2, v6, :cond_c

    const/16 v4, 0x31

    if-eq v2, v4, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_f

    :cond_0
    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 2
    aget-byte v6, v1, v4

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v8, p2, 0x5

    aget-byte v11, v1, v8

    and-int/2addr v11, v5

    or-int/2addr v6, v11

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v10, [I

    .line 3
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    aget-byte v6, v1, v8

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v6, p2, 0x7

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 6
    aget-byte v6, v1, v6

    add-int/lit8 v8, p2, 0x4

    .line 7
    aget-byte v8, v1, v8

    add-int/lit8 v12, p2, 0x6

    .line 8
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x7

    .line 9
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x8

    .line 10
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x9

    .line 11
    aget-byte v17, v1, v16

    const/16 v5, 0xa

    new-array v4, v10, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v4, v9

    .line 12
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x3e

    new-array v5, v10, [I

    shr-int/lit8 v18, v2, 0x2

    and-int/lit8 v18, v18, 0x1

    aput v18, v5, v9

    .line 13
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v5, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 14
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v10

    aput v4, v2, v9

    const/16 v4, 0xc

    .line 15
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v5, v10, [I

    shr-int/2addr v6, v11

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 16
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v5, v10, [I

    shr-int/lit8 v6, v8, 0x5

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 17
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v5, v8, 0x4

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 18
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v12, 0xff

    if-eq v2, v10, :cond_6

    if-eq v2, v11, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    move v2, v9

    move v3, v2

    move v4, v3

    move v5, v4

    goto :goto_0

    :cond_2
    move v2, v9

    move v4, v2

    move v5, v4

    move v3, v10

    goto :goto_0

    :cond_3
    move v2, v9

    move v5, v2

    move v3, v10

    move v4, v3

    goto :goto_0

    :cond_4
    move v3, v9

    move v5, v3

    move v2, v10

    move v4, v2

    goto :goto_0

    :cond_5
    move v2, v9

    move v3, v2

    move v5, v3

    move v4, v10

    goto :goto_0

    :cond_6
    move v2, v9

    move v3, v2

    move v4, v3

    move v5, v10

    :goto_0
    new-array v6, v10, [I

    aput v9, v6, v9

    .line 19
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x12

    new-array v7, v10, [I

    aput v2, v7, v9

    .line 20
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 21
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v5, v2, v9

    const/16 v3, 0x31

    .line 23
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v10, [I

    aput v12, v3, v9

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v3, v13, 0xff

    const/16 v2, 0x15

    new-array v4, v10, [I

    aput v3, v4, v9

    .line 25
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 26
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    aget-byte v15, v1, v16

    .line 28
    aget-byte v17, v1, v14

    :cond_7
    move/from16 v1, v17

    const/16 v2, 0xff

    and-int/lit16 v3, v15, 0xff

    const/4 v4, -0x3

    const/4 v5, -0x2

    const/16 v6, 0xfe

    const/16 v7, 0x1b

    if-eq v3, v6, :cond_9

    if-eq v3, v2, :cond_8

    new-array v2, v10, [I

    aput v3, v2, v9

    .line 29
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v2, v10, [I

    aput v4, v2, v9

    .line 30
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v2, v10, [I

    aput v5, v2, v9

    .line 31
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v3, 0x1c

    if-eq v1, v6, :cond_b

    if-eq v1, v2, :cond_a

    new-array v2, v10, [I

    aput v1, v2, v9

    .line 32
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_a
    new-array v1, v10, [I

    aput v4, v1, v9

    .line 33
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_b
    new-array v1, v10, [I

    aput v5, v1, v9

    .line 34
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/hj;->i:I

    if-eqz v2, :cond_d

    or-int/2addr v2, v8

    .line 36
    iput v2, v0, Lk0/hj;->i:I

    :cond_d
    move v2, v9

    .line 37
    :goto_2
    iget-object v3, v0, Lk0/hj;->j:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_f

    .line 38
    iget v5, v0, Lk0/hj;->i:I

    aget-object v6, v3, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_e

    if-eqz v5, :cond_f

    .line 39
    iput v2, v0, Lk0/hj;->e:I

    goto :goto_3

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 40
    :cond_f
    :goto_3
    iget v5, v0, Lk0/hj;->i:I

    if-eqz v5, :cond_11

    .line 41
    array-length v5, v3

    if-ge v2, v5, :cond_10

    .line 42
    aget-object v2, v3, v2

    aget v2, v2, v10

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    :cond_10
    const/16 v5, 0xff

    goto :goto_5

    .line 43
    :cond_11
    iget v2, v0, Lk0/hj;->e:I

    array-length v5, v3

    if-ge v2, v5, :cond_12

    const/16 v5, 0xff

    if-eq v2, v5, :cond_13

    .line 44
    aget-object v2, v3, v2

    aget v2, v2, v10

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_12
    const/16 v5, 0xff

    .line 45
    :cond_13
    :goto_4
    iput v5, v0, Lk0/hj;->e:I

    .line 46
    :goto_5
    iget v2, v0, Lk0/hj;->i:I

    if-nez v2, :cond_28

    add-int/lit8 v2, p2, 0x3

    .line 47
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    iget v6, v0, Lk0/hj;->h:I

    if-eq v3, v6, :cond_17

    if-nez v6, :cond_14

    .line 48
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_14

    .line 49
    iput v4, v0, Lk0/hj;->i:I

    goto :goto_6

    :cond_14
    if-ne v6, v5, :cond_15

    .line 50
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-nez v3, :cond_15

    .line 51
    iput v10, v0, Lk0/hj;->i:I

    goto :goto_6

    .line 52
    :cond_15
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-le v3, v6, :cond_16

    .line 53
    iput v10, v0, Lk0/hj;->i:I

    goto :goto_6

    .line 54
    :cond_16
    iput v4, v0, Lk0/hj;->i:I

    .line 55
    :cond_17
    :goto_6
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    iput v1, v0, Lk0/hj;->h:I

    move v1, v9

    .line 56
    :goto_7
    iget-object v2, v0, Lk0/hj;->j:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 57
    iget v3, v0, Lk0/hj;->i:I

    aget-object v4, v2, v1

    aget v4, v4, v9

    if-ne v3, v4, :cond_18

    .line 58
    iget v3, v0, Lk0/hj;->g:I

    if-eqz v3, :cond_19

    .line 59
    iput v1, v0, Lk0/hj;->f:I

    goto :goto_8

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 60
    :cond_19
    :goto_8
    iget v3, v0, Lk0/hj;->i:I

    if-eqz v3, :cond_1a

    .line 61
    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 62
    aget-object v1, v2, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 63
    :cond_1a
    iget v1, v0, Lk0/hj;->f:I

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    const/16 v3, 0xff

    if-eq v1, v3, :cond_1c

    .line 64
    aget-object v1, v2, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1b
    const/16 v3, 0xff

    .line 65
    :cond_1c
    :goto_9
    iput v3, v0, Lk0/hj;->f:I

    goto/16 :goto_f

    :cond_1d
    move v3, v5

    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_1e

    .line 67
    iput v10, v0, Lk0/hj;->c:I

    goto :goto_a

    .line 68
    :cond_1e
    iput v9, v0, Lk0/hj;->c:I

    :goto_a
    add-int/lit8 v2, p2, 0x6

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    const/16 v6, 0x86

    invoke-static {v2, v5, v6}, Lk0/qt;->p(III)V

    add-int/lit8 v2, p2, 0x4

    .line 70
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    iput v1, v0, Lk0/hj;->g:I

    move v1, v9

    .line 71
    :goto_b
    iget-object v2, v0, Lk0/hj;->j:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_20

    .line 72
    iget v3, v0, Lk0/hj;->g:I

    aget-object v5, v2, v1

    aget v5, v5, v9

    if-ne v3, v5, :cond_1f

    if-eqz v3, :cond_20

    .line 73
    iput v1, v0, Lk0/hj;->d:I

    goto :goto_c

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 74
    :cond_20
    :goto_c
    iget v3, v0, Lk0/hj;->g:I

    if-eqz v3, :cond_22

    .line 75
    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 76
    iget-byte v3, v0, Lk0/hj;->o:B

    if-nez v3, :cond_28

    add-int/2addr v3, v10

    int-to-byte v3, v3

    .line 77
    iput-byte v3, v0, Lk0/hj;->o:B

    .line 78
    aget-object v3, v2, v1

    aget v3, v3, v9

    if-ne v3, v7, :cond_21

    sget v3, Lk0/nt;->c:I

    if-ne v3, v4, :cond_21

    .line 79
    invoke-virtual/range {p0 .. p0}, Lk0/hj;->f3()V

    goto :goto_d

    .line 80
    :cond_21
    aget-object v1, v2, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 81
    :goto_d
    iget-object v1, v0, Lk0/hj;->p:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_f

    .line 82
    :cond_22
    iget v1, v0, Lk0/hj;->d:I

    array-length v3, v2

    if-ge v1, v3, :cond_23

    const/16 v3, 0xff

    if-eq v1, v3, :cond_24

    .line 83
    aget-object v1, v2, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 84
    iget-object v1, v0, Lk0/hj;->p:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 85
    iput-byte v9, v0, Lk0/hj;->o:B

    goto :goto_e

    :cond_23
    const/16 v3, 0xff

    .line 86
    :cond_24
    :goto_e
    iput v3, v0, Lk0/hj;->d:I

    goto/16 :goto_f

    :cond_25
    move v3, v5

    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/hj;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/hj;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/hj;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/hj;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/hj;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/hj;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 93
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/hj;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 94
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Lk0/hj;->d3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_f

    .line 95
    :cond_26
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_f

    :cond_27
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lk0/hj;->e3(I)V

    :cond_28
    :goto_f
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/hj;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/hj;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lk0/hj;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/hj;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/hj;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/hj;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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
    .locals 9

    const/4 p3, 0x5

    if-eqz p1, :cond_1

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array p1, p3, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 2
    array-length p1, p2

    const/4 p4, 0x1

    if-le p1, p4, :cond_5

    .line 3
    aget p1, p2, p4

    const/4 v0, 0x6

    const/16 v1, -0x5b

    const/16 v2, 0x5a

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/16 v5, 0x3d

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne p1, p4, :cond_2

    new-array p1, v3, [B

    aput-byte v2, p1, v8

    aput-byte v1, p1, p4

    aput-byte v7, p1, v7

    aput-byte v5, p1, v6

    .line 4
    aget v1, p2, v8

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    aput-byte p4, p1, p3

    aput-byte v8, p1, v0

    invoke-static {p1}, Lk0/hj;->y3([B)V

    goto :goto_0

    .line 5
    :cond_2
    aget p1, p2, p4

    if-nez p1, :cond_3

    new-array p1, v3, [B

    aput-byte v2, p1, v8

    aput-byte v1, p1, p4

    aput-byte v7, p1, v7

    aput-byte v5, p1, v6

    .line 6
    aget v1, p2, v8

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    aput-byte v8, p1, p3

    aput-byte v8, p1, v0

    invoke-static {p1}, Lk0/hj;->y3([B)V

    .line 7
    :cond_3
    :goto_0
    aget p1, p2, p4

    const/16 v0, 0xe3

    if-ne p1, p4, :cond_4

    new-array p1, p3, [I

    aput v0, p1, v8

    aput v7, p1, p4

    aput v5, p1, v7

    .line 8
    aget p2, p2, v8

    aput p2, p1, v6

    aput p4, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 9
    :cond_4
    aget p1, p2, p4

    if-nez p1, :cond_5

    new-array p1, p3, [I

    aput v0, p1, v8

    aput v7, p1, p4

    aput v5, p1, v7

    .line 10
    aget p2, p2, v8

    aput p2, p1, v6

    aput v8, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x0
    .end array-data
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lk0/hj;->J:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lk0/hj;->C:I

    .line 3
    invoke-virtual {p0, p1}, Lk0/hj;->w3(I)V

    :cond_0
    return-void
.end method

.method public b([B)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    iget v1, p0, Lk0/hj;->l:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/hj;->l:I

    .line 5
    iput v0, p0, Lk0/hj;->m:I

    .line 6
    iput v0, p0, Lk0/hj;->n:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/hj;->k:[B

    iget v2, p0, Lk0/hj;->l:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/hj;->l:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/hj;->l:I

    .line 9
    iget p1, p0, Lk0/hj;->n:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/hj;->k:[B

    aget-byte p1, p1, v3

    move v1, v2

    .line 11
    :goto_0
    iget v4, p0, Lk0/hj;->n:I

    if-ge v1, v4, :cond_4

    .line 12
    iget-object v4, p0, Lk0/hj;->k:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/hj;->k:[B

    aget-byte v4, v1, v4

    if-ne p1, v4, :cond_5

    .line 14
    aget-byte p1, v1, v3

    invoke-virtual {p0, v1, v3, p1}, Lk0/hj;->U2([BII)V

    .line 15
    iget p1, p0, Lk0/hj;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk0/hj;->m:I

    goto :goto_1

    .line 16
    :cond_5
    iput v3, p0, Lk0/hj;->m:I

    .line 17
    :goto_1
    iput v0, p0, Lk0/hj;->n:I

    .line 18
    :cond_6
    iget p1, p0, Lk0/hj;->l:I

    sub-int/2addr p1, v2

    :goto_2
    iget v1, p0, Lk0/hj;->m:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v2, p0, Lk0/hj;->k:[B

    aget-byte v4, v2, v1

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x5b

    if-ne v4, v5, :cond_b

    .line 20
    iget v4, p0, Lk0/hj;->n:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_7

    .line 21
    iput v0, p0, Lk0/hj;->n:I

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v1, 0x2

    .line 22
    aget-byte v4, v2, v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lk0/hj;->n:I

    .line 23
    iget v5, p0, Lk0/hj;->l:I

    if-lt v4, v5, :cond_8

    sub-int/2addr v4, v1

    .line 24
    iput v4, p0, Lk0/hj;->n:I

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v1, 0x2

    .line 25
    aget-byte v2, v2, v4

    add-int/lit8 v1, v1, 0x3

    .line 26
    :goto_3
    iget v4, p0, Lk0/hj;->n:I

    if-ge v1, v4, :cond_9

    .line 27
    iget-object v4, p0, Lk0/hj;->k:[B

    aget-byte v4, v4, v1

    add-int/2addr v2, v4

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v2, p0, Lk0/hj;->k:[B

    aget-byte v4, v2, v4

    if-ne v1, v4, :cond_a

    .line 29
    iget v1, p0, Lk0/hj;->m:I

    add-int/lit8 v4, v1, 0x2

    add-int/2addr v1, v3

    aget-byte v1, v2, v1

    invoke-virtual {p0, v2, v4, v1}, Lk0/hj;->U2([BII)V

    .line 30
    iget v1, p0, Lk0/hj;->n:I

    iput v1, p0, Lk0/hj;->m:I

    goto :goto_4

    .line 31
    :cond_a
    iget v1, p0, Lk0/hj;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk0/hj;->m:I

    .line 32
    :goto_4
    iput v0, p0, Lk0/hj;->n:I

    .line 33
    :cond_b
    :goto_5
    iget v1, p0, Lk0/hj;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk0/hj;->m:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v1, :cond_e

    .line 34
    iget p1, p0, Lk0/hj;->l:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/hj;->l:I

    if-eqz p1, :cond_d

    .line 35
    iget-object v2, p0, Lk0/hj;->k:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_d
    iput v0, p0, Lk0/hj;->m:I

    :cond_e
    :goto_7
    return-void
.end method

.method public c3()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 1
    iput v2, p0, Lk0/hj;->b:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    const/16 v5, 0x20

    .line 2
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0xd

    aput v4, v1, v3

    const/16 v4, 0xd2

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v4, 0x2

    .line 3
    invoke-static {}, Lk0/hj;->b3()B

    move-result v6

    aput v6, v1, v4

    .line 4
    sget v4, Ly0/f;->i:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eq v4, v5, :cond_3

    sget v4, Ly0/f;->C0:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x56

    aput v5, v1, v7

    const/16 v5, 0x4f

    aput v5, v1, v2

    const/16 v2, 0x4c

    aput v2, v1, v6

    const/16 v2, 0xa

    if-lt v4, v2, :cond_2

    const/4 v5, 0x7

    .line 5
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    :cond_2
    const/16 v5, 0x8

    .line 6
    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v4, 0x4d

    aput v4, v1, v7

    const/16 v4, 0x55

    aput v4, v1, v2

    const/16 v2, 0x54

    aput v2, v1, v6

    const/4 v2, 0x6

    const/16 v4, 0x45

    aput v4, v1, v2

    :goto_2
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public e3(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-static {}, Lo1/u;->j()I

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-static {}, Lo1/u;->E()I

    goto :goto_0

    .line 6
    :pswitch_5
    sget-object p1, Lw0/d;->b:Lw0/g;

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Lw0/g;->x(I)V

    goto :goto_0

    .line 7
    :pswitch_6
    sget-object p1, Lw0/d;->b:Lw0/g;

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Lw0/g;->x(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f3()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x0
    .end array-data
.end method

.method public final g3(I)V
    .locals 13

    const/4 v0, 0x7

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x5b

    aput-byte v5, v1, v4

    const/4 v6, 0x2

    aput-byte v6, v1, v6

    const/4 v7, 0x3

    const/16 v8, 0x3d

    aput-byte v8, v1, v7

    int-to-byte v9, p1

    const/4 v10, 0x4

    aput-byte v9, v1, v10

    const/4 v11, 0x5

    aput-byte v4, v1, v11

    const/4 v12, 0x6

    aput-byte v2, v1, v12

    .line 1
    invoke-static {v1}, Lk0/hj;->y3([B)V

    new-array v0, v0, [B

    aput-byte v3, v0, v2

    aput-byte v5, v0, v4

    aput-byte v6, v0, v6

    aput-byte v8, v0, v7

    aput-byte v9, v0, v10

    aput-byte v2, v0, v11

    aput-byte v2, v0, v12

    .line 2
    invoke-static {v0}, Lk0/hj;->y3([B)V

    new-array v0, v11, [I

    const/16 v1, 0xe3

    aput v1, v0, v2

    aput v6, v0, v4

    aput v8, v0, v6

    aput p1, v0, v7

    aput v4, v0, v10

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v11, [I

    aput v1, v0, v2

    aput v6, v0, v4

    aput v8, v0, v6

    aput p1, v0, v7

    aput v2, v0, v10

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final v3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lk0/hj;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk0/hj;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lk0/hj;->R2([I)V

    return-void
.end method

.method public final declared-synchronized w3(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget p1, Lk0/hj;->B:I

    sget v0, Lk0/hj;->C:I

    const-wide/16 v1, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p1, v0, :cond_0

    .line 2
    iput-boolean v3, p0, Lk0/hj;->x:Z

    add-int/2addr p1, v4

    .line 3
    sput p1, Lk0/hj;->B:I

    .line 4
    invoke-static {v4, p1}, Lk0/hj;->u3(II)V

    .line 5
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    new-instance v0, Lk0/hj$j;

    invoke-direct {v0, p0}, Lk0/hj$j;-><init>(Lk0/hj;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    .line 6
    iput-boolean v3, p0, Lk0/hj;->x:Z

    sub-int/2addr p1, v4

    .line 7
    sput p1, Lk0/hj;->B:I

    .line 8
    invoke-static {v4, p1}, Lk0/hj;->u3(II)V

    .line 9
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    new-instance v0, Lk0/hj$k;

    invoke-direct {v0, p0}, Lk0/hj$k;-><init>(Lk0/hj;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10
    :cond_1
    iput-boolean v4, p0, Lk0/hj;->x:Z

    .line 11
    sput v0, Lk0/hj;->B:I

    .line 12
    invoke-static {v4, v0}, Lk0/hj;->u3(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final x3(ILjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x13

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x10

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
