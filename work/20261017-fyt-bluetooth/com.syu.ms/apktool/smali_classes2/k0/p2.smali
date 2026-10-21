.class public Lk0/p2;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/p2$i;
    }
.end annotation


# static fields
.field public static M:[I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public final F:Ljava/lang/Runnable;

.field public G:I

.field public H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:Ljava/lang/Runnable;

.field public L:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public final h:[B

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:F

.field public q:I

.field public r:I

.field public s:Ljava/lang/Runnable;

.field public t:Lk0/p2$i;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/p2;->M:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x7
        0x3
        0x8
        0x2
        0x6
        0x4
        0x6
        0x1
        0x9
        0xa
        0xc
        0x9
        0x9
        0xe
        0x9
        0xb
        0xd
        0x5
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/p2;->e:I

    const/16 v2, 0x11

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v14, 0xb

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v15, 0xc

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v16, 0xd

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v16, 0xe

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v16, 0xf

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v16, 0x10

    aput-object v4, v2, v16

    iput-object v2, v0, Lk0/p2;->f:[[I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_11

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    aput-object v4, v2, v13

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    aput-object v3, v2, v14

    iput-object v2, v0, Lk0/p2;->g:[[I

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 5
    iput-object v2, v0, Lk0/p2;->h:[B

    .line 6
    iput v1, v0, Lk0/p2;->i:I

    .line 7
    iput v1, v0, Lk0/p2;->j:I

    .line 8
    iput v1, v0, Lk0/p2;->k:I

    const-string v2, ""

    .line 9
    iput-object v2, v0, Lk0/p2;->l:Ljava/lang/String;

    .line 10
    iput-object v2, v0, Lk0/p2;->m:Ljava/lang/String;

    .line 11
    iput v1, v0, Lk0/p2;->n:I

    .line 12
    new-instance v3, Lk0/p2$a;

    invoke-direct {v3, v0}, Lk0/p2$a;-><init>(Lk0/p2;)V

    iput-object v3, v0, Lk0/p2;->o:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 13
    iput v3, v0, Lk0/p2;->p:F

    const/16 v3, 0xff

    .line 14
    iput v3, v0, Lk0/p2;->q:I

    .line 15
    iput v3, v0, Lk0/p2;->r:I

    .line 16
    new-instance v4, Lk0/p2$b;

    invoke-direct {v4, v0}, Lk0/p2$b;-><init>(Lk0/p2;)V

    iput-object v4, v0, Lk0/p2;->s:Ljava/lang/Runnable;

    .line 17
    iput-object v2, v0, Lk0/p2;->u:Ljava/lang/String;

    .line 18
    iput-object v2, v0, Lk0/p2;->v:Ljava/lang/String;

    .line 19
    iput v1, v0, Lk0/p2;->w:I

    .line 20
    iput v1, v0, Lk0/p2;->x:I

    .line 21
    iput v1, v0, Lk0/p2;->y:I

    .line 22
    iput v1, v0, Lk0/p2;->z:I

    .line 23
    iput v1, v0, Lk0/p2;->A:I

    .line 24
    iput v1, v0, Lk0/p2;->B:I

    .line 25
    iput v1, v0, Lk0/p2;->C:I

    .line 26
    iput v5, v0, Lk0/p2;->D:I

    .line 27
    iput v3, v0, Lk0/p2;->E:I

    .line 28
    new-instance v2, Lk0/p2$c;

    invoke-direct {v2, v0}, Lk0/p2$c;-><init>(Lk0/p2;)V

    iput-object v2, v0, Lk0/p2;->F:Ljava/lang/Runnable;

    .line 29
    iput v1, v0, Lk0/p2;->G:I

    .line 30
    new-instance v1, Lk0/p2$d;

    invoke-direct {v1, v0}, Lk0/p2$d;-><init>(Lk0/p2;)V

    iput-object v1, v0, Lk0/p2;->H:Ljava/lang/Runnable;

    .line 31
    new-instance v1, Lk0/p2$e;

    invoke-direct {v1, v0}, Lk0/p2$e;-><init>(Lk0/p2;)V

    iput-object v1, v0, Lk0/p2;->I:Ljava/lang/Runnable;

    .line 32
    new-instance v1, Lk0/p2$f;

    invoke-direct {v1, v0}, Lk0/p2$f;-><init>(Lk0/p2;)V

    iput-object v1, v0, Lk0/p2;->J:Ljava/lang/Runnable;

    .line 33
    new-instance v1, Lk0/p2$g;

    invoke-direct {v1, v0}, Lk0/p2$g;-><init>(Lk0/p2;)V

    iput-object v1, v0, Lk0/p2;->K:Ljava/lang/Runnable;

    .line 34
    new-instance v1, Lk0/p2$h;

    invoke-direct {v1, v0}, Lk0/p2$h;-><init>(Lk0/p2;)V

    iput-object v1, v0, Lk0/p2;->L:Ljava/lang/Runnable;

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
        -0x1
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
        0xc
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x16
        0x19
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x22
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x23
    .end array-data

    :array_13
    .array-data 4
        0x3
        0x20
    .end array-data

    :array_14
    .array-data 4
        0x4
        0x21
    .end array-data

    :array_15
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_17
    .array-data 4
        0x7
        0x20
    .end array-data

    :array_18
    .array-data 4
        0x8
        0x21
    .end array-data

    :array_19
    .array-data 4
        0x9
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0xa
        0x6
    .end array-data

    :array_1b
    .array-data 4
        0xb
        0x5
    .end array-data

    :array_1c
    .array-data 4
        0xc
        0x1
    .end array-data
.end method

.method public static a3()V
    .locals 20

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
    invoke-static {}, Lk0/p2;->b3()B

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x2e

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/16 v10, 0x9

    const/16 v11, 0x3e8

    const/16 v12, 0x8

    const/4 v13, 0x6

    const/4 v14, 0x4

    const/16 v15, 0xa

    const/16 v16, 0x30

    if-eq v3, v5, :cond_8

    const/4 v6, 0x5

    if-eq v3, v14, :cond_6

    if-eq v3, v13, :cond_3

    if-eq v3, v12, :cond_1

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

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v8

    .line 6
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 7
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v6

    aput v4, v1, v13

    .line 8
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 9
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 10
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 11
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    goto/16 :goto_5

    .line 12
    :cond_3
    sget v3, Ld1/d;->c:I

    if-ne v3, v5, :cond_11

    .line 13
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_4

    .line 14
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 15
    :cond_4
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    const/16 v3, 0x2d

    aput v3, v1, v6

    .line 16
    sget v3, Ld1/d;->d:I

    div-int/lit8 v3, v3, 0x64

    .line 17
    div-int/lit16 v4, v3, 0x2710

    if-lez v4, :cond_5

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 18
    :cond_5
    rem-int/lit16 v4, v3, 0x2710

    div-int/2addr v4, v11

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 19
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    aput v7, v1, v10

    .line 20
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    const/16 v4, 0xb

    .line 21
    rem-int/2addr v3, v15

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

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

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v8

    .line 24
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 25
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v6

    aput v4, v1, v13

    .line 26
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 27
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 28
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 29
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    goto/16 :goto_5

    .line 30
    :cond_8
    sget v3, Lw0/d;->h:I

    const/high16 v17, 0x10000

    sub-int v18, v3, v17

    const/16 v19, 0x36

    if-eqz v18, :cond_d

    sub-int v0, v3, v17

    if-eq v5, v0, :cond_d

    sub-int v3, v3, v17

    if-ne v6, v3, :cond_9

    goto :goto_2

    :cond_9
    aput v16, v1, v8

    .line 31
    sget v0, Lw0/d;->j:I

    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_a

    if-eqz v0, :cond_a

    aput v19, v1, v14

    goto :goto_1

    :cond_a
    and-int/lit16 v0, v0, 0xff

    .line 32
    rem-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 33
    :goto_1
    aget v0, v1, v14

    if-nez v0, :cond_b

    aput v19, v1, v14

    .line 34
    :cond_b
    sget v0, Lw0/d;->i:I

    if-lt v0, v11, :cond_c

    .line 35
    div-int/lit16 v3, v0, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    .line 36
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 37
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 38
    rem-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v10

    goto :goto_5

    .line 39
    :cond_c
    div-int/lit8 v3, v0, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    .line 40
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 41
    rem-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    goto :goto_5

    :cond_d
    :goto_2
    aput v16, v1, v8

    .line 42
    sget v0, Lw0/d;->j:I

    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_e

    if-eqz v0, :cond_e

    aput v19, v1, v14

    goto :goto_3

    :cond_e
    and-int/lit16 v0, v0, 0xff

    .line 43
    rem-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 44
    :goto_3
    aget v0, v1, v14

    if-nez v0, :cond_f

    aput v19, v1, v14

    .line 45
    :cond_f
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_10

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_4

    :cond_10
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_4
    aput v3, v1, v13

    .line 46
    rem-int/lit16 v3, v0, 0x2710

    div-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 47
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    aput v7, v1, v10

    .line 48
    rem-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    :cond_11
    :goto_5
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_6
    if-ge v2, v3, :cond_12

    add-int/lit8 v4, v2, 0x1

    .line 49
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_6

    .line 50
    :cond_12
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()B
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

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

    if-ne v0, v7, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :cond_0
    if-ne v0, v5, :cond_1

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

    move v1, v7

    goto :goto_2

    :cond_2
    sub-int v3, v0, v2

    if-ne v7, v3, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    sub-int v2, v0, v2

    if-ne v5, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v6

    if-ne v7, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :cond_6
    move v1, v6

    goto :goto_2

    :goto_1
    :pswitch_8
    move v1, v4

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v7, :cond_7

    const/16 v1, 0x10

    :cond_7
    return v1

    nop

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

.method public static synthetic h3(Lk0/p2;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/p2;->p:F

    return p0
.end method

.method public static synthetic i3(Lk0/p2;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/p2;->v3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic j3(Lk0/p2;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/p2;->p:F

    return p1
.end method

.method public static synthetic k3(Lk0/p2;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/p2;->r:I

    return p0
.end method

.method public static synthetic l3(Lk0/p2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/p2;->r:I

    return p1
.end method

.method public static synthetic m3(Lk0/p2;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/p2;->q:I

    return p0
.end method

.method public static synthetic n3(Lk0/p2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/p2;->q:I

    return p1
.end method

.method public static synthetic o3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/p2;->M:[I

    return-object v0
.end method

.method public static synthetic p3(Lk0/p2;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/p2;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic q3(Lk0/p2;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/p2;->f3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic r3(Lk0/p2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/p2;->g3()V

    return-void
.end method

.method public static synthetic s3(Lk0/p2;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/p2;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic t3(Lk0/p2;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/p2;->w3(ILjava/lang/String;)V

    return-void
.end method

.method public static x3([B)V
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
    .locals 13

    if-eqz p1, :cond_18

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x29

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-eq v0, v2, :cond_16

    const/16 v2, 0x2a

    const/16 v5, 0x10

    if-eq v0, v2, :cond_14

    const/16 v2, 0x44

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/16 v9, 0xa

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/4 v12, 0x7

    if-eq v0, v2, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    aget p1, p1, v4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v11}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v10}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    aget v0, p1, v4

    if-ne v0, v4, :cond_2

    .line 7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-nez p1, :cond_18

    .line 8
    invoke-virtual {p0, v12}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 9
    :cond_2
    aget p1, p1, v4

    if-nez p1, :cond_18

    .line 10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-ne p1, v4, :cond_18

    .line 11
    invoke-virtual {p0, v12}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    aget p1, p1, v4

    if-eqz p1, :cond_3

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_18

    .line 14
    invoke-virtual {p0, v6}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 15
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v4, :cond_18

    .line 16
    invoke-virtual {p0, v6}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_3
    aget p1, p1, v4

    const/16 v0, 0x41

    if-eqz p1, :cond_4

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_18

    .line 19
    invoke-virtual {p0, v7}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 20
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v4, :cond_18

    .line 21
    invoke-virtual {p0, v7}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_4
    aget p1, p1, v4

    if-eqz p1, :cond_5

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_18

    .line 24
    invoke-virtual {p0, v8}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 25
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v4, :cond_18

    .line 26
    invoke-virtual {p0, v8}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_5
    aget p1, p1, v4

    if-eqz p1, :cond_6

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    if-nez p1, :cond_18

    .line 29
    invoke-virtual {p0, v1}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 30
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    if-ne p1, v4, :cond_18

    .line 31
    invoke-virtual {p0, v1}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 32
    :pswitch_6
    aget p1, p1, v4

    if-eqz p1, :cond_7

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-nez p1, :cond_18

    .line 34
    invoke-virtual {p0, v4}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 35
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-ne p1, v4, :cond_18

    .line 36
    invoke-virtual {p0, v4}, Lk0/p2;->d3(I)V

    goto/16 :goto_0

    .line 37
    :cond_8
    aget v0, p1, v4

    if-ne v0, v4, :cond_9

    new-array p1, v12, [I

    .line 38
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 39
    :cond_9
    aget v0, p1, v4

    if-ne v0, v1, :cond_a

    new-array p1, v12, [I

    .line 40
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 41
    :cond_a
    aget v0, p1, v4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    new-array p1, v12, [I

    .line 42
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 43
    :cond_b
    aget v0, p1, v4

    if-ne v0, v8, :cond_c

    new-array p1, v12, [I

    .line 44
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 45
    :cond_c
    aget v0, p1, v4

    if-ne v0, v7, :cond_d

    new-array p1, v12, [I

    .line 46
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 47
    :cond_d
    aget v0, p1, v4

    if-ne v0, v6, :cond_e

    new-array p1, v12, [I

    .line 48
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 49
    :cond_e
    aget v0, p1, v4

    if-ne v0, v12, :cond_f

    new-array p1, v12, [I

    .line 50
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 51
    :cond_f
    aget v0, p1, v4

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    new-array p1, v12, [I

    .line 52
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 53
    :cond_10
    aget v0, p1, v4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_11

    new-array p1, v12, [I

    .line 54
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 55
    :cond_11
    aget v0, p1, v4

    if-ne v0, v9, :cond_12

    new-array p1, v12, [I

    .line 56
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 57
    :cond_12
    aget v0, p1, v4

    if-ne v0, v11, :cond_13

    new-array p1, v12, [I

    .line 58
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 59
    :cond_13
    aget p1, p1, v4

    if-ne p1, v10, :cond_18

    new-array p1, v12, [I

    .line 60
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 61
    :cond_14
    aget p1, p1, v4

    if-eqz p1, :cond_15

    const/16 p1, 0xf

    .line 62
    invoke-virtual {p0, p1}, Lk0/p2;->d3(I)V

    goto :goto_0

    .line 63
    :cond_15
    invoke-virtual {p0, v5}, Lk0/p2;->d3(I)V

    goto :goto_0

    .line 64
    :cond_16
    aget p1, p1, v4

    if-eqz p1, :cond_17

    .line 65
    invoke-virtual {p0, v3}, Lk0/p2;->d3(I)V

    goto :goto_0

    :cond_17
    const/16 p1, 0xe

    .line 66
    invoke-virtual {p0, p1}, Lk0/p2;->d3(I)V

    :cond_18
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x4
        0x6f
        0x45
        0x0
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x6f
        0x45
        0x1
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x6f
        0x46
        0x0
        0xff
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x6f
        0x46
        0x1
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x4
        0x6f
        0x47
        0x0
        0xff
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x4
        0x6f
        0x47
        0x1
        0xff
        0xff
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x4
        0x6f
        0x48
        0x0
        0xff
        0xff
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        0x6f
        0x48
        0x1
        0xff
        0xff
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x4
        0x6f
        0x4b
        0x0
        0xff
        0xff
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x4
        0x6f
        0x4b
        0x1
        0xff
        0xff
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x4
        0x6f
        0x49
        0x0
        0xff
        0xff
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x4
        0x6f
        0x49
        0x1
        0xff
        0xff
    .end array-data
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    iput v2, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->g:I

    .line 4
    iput v2, v0, Lk0/mt;->o:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v3, 0x0

    .line 6
    iput v3, v0, Lk0/mt;->i:I

    const/16 v4, 0xa

    new-array v4, v4, [I

    .line 7
    fill-array-data v4, :array_0

    iput-object v4, v0, Lk0/mt;->m:[I

    .line 8
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v4, p0, Lk0/p2;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v4, p0, Lk0/p2;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/p2;->L:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v4, "com.syu.canbus"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lk0/p2;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v4, p0, Lk0/p2;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v4, p0, Lk0/p2;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v4, p0, Lk0/p2;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2

    const/16 v4, 0x23

    if-eq v0, v4, :cond_2

    const/16 v4, 0x24

    if-eq v0, v4, :cond_2

    const/16 v4, 0x31

    if-eq v0, v4, :cond_1

    const/16 v4, 0x32

    if-eq v0, v4, :cond_1

    sparse-switch v0, :sswitch_data_0

    .line 18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->h:I

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 20
    :cond_2
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x2

    iput v3, v0, Lk0/mt;->h:I

    .line 21
    :goto_0
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v3, p0, Lk0/p2;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    new-instance v0, Lk0/p2$i;

    invoke-direct {v0, p0, v1}, Lk0/p2$i;-><init>(Lk0/p2;Lk0/p2$a;)V

    iput-object v0, p0, Lk0/p2;->t:Lk0/p2$i;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/p2;->t:Lk0/p2$i;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0}, Lk0/p2;->g3()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0x11 -> :sswitch_0
        0x18 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x1f -> :sswitch_0
        0x27 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
    .end sparse-switch

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
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_37

    const/16 v3, -0x20

    const/4 v9, 0x2

    const/16 v10, 0xff

    if-eq v2, v3, :cond_36

    const/16 v3, -0x18

    const/16 v11, 0x8

    if-eq v2, v3, :cond_35

    const/16 v3, -0x10

    if-eq v2, v3, :cond_34

    const-string v3, "persist.syu.reversefrontdoor"

    const/16 v12, 0x12

    const/4 v13, 0x5

    if-eq v2, v12, :cond_32

    const/16 v14, 0x1a

    if-eq v2, v14, :cond_30

    const/16 v3, 0x41

    if-eq v2, v3, :cond_28

    const/16 v14, 0x61

    if-eq v2, v14, :cond_27

    const/16 v14, 0x72

    const/16 v15, 0xf

    if-eq v2, v14, :cond_1c

    const/16 v14, 0x74

    if-eq v2, v14, :cond_11

    const/16 v14, 0x31

    if-eq v2, v14, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_13

    :cond_0
    const/16 v2, 0x408

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 2
    aget-byte v4, v1, v4

    shl-int/2addr v4, v11

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 3
    :cond_1
    sget v2, Lk0/nt;->a:I

    const v11, 0x310065    # 4.500081E-39f

    if-eq v2, v11, :cond_38

    const v11, 0x320065

    if-ne v2, v11, :cond_2

    goto/16 :goto_13

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v2, v1, v2

    add-int/lit8 v11, p2, 0x3

    .line 5
    aget-byte v11, v1, v11

    add-int/lit8 v16, p2, 0x4

    .line 6
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x6

    .line 7
    aget-byte v17, v1, v17

    add-int/lit8 v18, p2, 0x7

    .line 8
    aget-byte v10, v1, v18

    add-int/lit8 v18, p2, 0x8

    .line 9
    aget-byte v14, v1, v18

    add-int/lit8 v18, p2, 0x9

    .line 10
    aget-byte v12, v1, v18

    const/16 v5, 0xa

    new-array v13, v8, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v13, v7

    .line 11
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    aput v2, v5, v7

    const/16 v2, 0xd

    .line 12
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xb

    new-array v13, v8, [I

    shr-int/lit8 v19, v11, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v13, v7

    .line 13
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xc

    new-array v13, v8, [I

    shr-int/lit8 v19, v11, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v13, v7

    .line 14
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x3e

    new-array v13, v8, [I

    shr-int/lit8 v9, v11, 0x2

    and-int/2addr v9, v8

    aput v9, v13, v7

    .line 15
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v9, v8, [I

    shr-int/lit8 v11, v16, 0x5

    and-int/2addr v11, v8

    aput v11, v9, v7

    .line 16
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v6, v16, 0x4

    and-int/2addr v6, v8

    aput v6, v5, v7

    .line 17
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v3, v17, 0xf

    if-eq v3, v8, :cond_6

    if-eq v3, v4, :cond_5

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    move v3, v7

    move v4, v3

    move v5, v4

    move v6, v5

    goto :goto_1

    :pswitch_0
    move v6, v7

    move v3, v8

    move v4, v3

    goto :goto_0

    :pswitch_1
    move v5, v7

    move v6, v5

    move v3, v8

    move v4, v3

    goto :goto_1

    :pswitch_2
    move v4, v7

    move v6, v4

    move v3, v8

    move v5, v3

    goto :goto_1

    :pswitch_3
    move v4, v7

    move v5, v4

    move v6, v5

    move v3, v8

    goto :goto_1

    :cond_3
    move v3, v7

    move v5, v3

    move v6, v5

    move v4, v8

    goto :goto_1

    :cond_4
    move v3, v7

    move v6, v3

    move v4, v8

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_5
    move v3, v7

    move v4, v3

    move v6, v4

    move v5, v8

    goto :goto_1

    :cond_6
    move v3, v7

    move v4, v3

    move v5, v4

    move v6, v8

    :goto_1
    new-array v9, v8, [I

    aput v3, v9, v7

    const/16 v3, 0x12

    .line 18
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v9, v8, [I

    aput v4, v9, v7

    .line 19
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v8, [I

    aput v5, v4, v7

    .line 20
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    aput v6, v3, v7

    const/16 v4, 0x31

    .line 21
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xff

    and-int/lit16 v4, v10, 0xff

    const/16 v3, 0x15

    new-array v5, v8, [I

    aput v4, v5, v7

    .line 22
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.fyt.reversetemp"

    .line 23
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x3

    const/4 v5, -0x2

    const/16 v6, 0xfe

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    if-eqz v3, :cond_b

    const/16 v3, 0xff

    and-int/lit16 v11, v12, 0xff

    if-eq v11, v6, :cond_8

    if-eq v11, v3, :cond_7

    new-array v3, v8, [I

    aput v11, v3, v7

    .line 24
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v3, v8, [I

    aput v4, v3, v7

    .line 25
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v3, v8, [I

    aput v5, v3, v7

    .line 26
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v3, 0xff

    and-int/lit16 v10, v14, 0xff

    if-eq v10, v6, :cond_a

    if-eq v10, v3, :cond_9

    new-array v3, v8, [I

    aput v10, v3, v7

    .line 27
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    new-array v3, v8, [I

    aput v4, v3, v7

    .line 28
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    new-array v3, v8, [I

    aput v5, v3, v7

    .line 29
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    const/16 v3, 0xff

    and-int/lit16 v11, v14, 0xff

    if-eq v11, v6, :cond_d

    if-eq v11, v3, :cond_c

    new-array v3, v8, [I

    aput v11, v3, v7

    .line 30
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v3, v8, [I

    aput v4, v3, v7

    .line 31
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v3, v8, [I

    aput v5, v3, v7

    .line 32
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0xff

    and-int/lit16 v10, v12, 0xff

    if-eq v10, v6, :cond_f

    if-eq v10, v3, :cond_e

    new-array v3, v8, [I

    aput v10, v3, v7

    .line 33
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v3, v8, [I

    aput v4, v3, v7

    .line 34
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array v3, v8, [I

    aput v5, v3, v7

    .line 35
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0xd

    .line 36
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-nez v1, :cond_10

    .line 37
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_13

    :cond_10
    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 38
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_13

    .line 39
    :cond_11
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_38

    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/p2;->e:I

    move v2, v7

    .line 41
    :goto_5
    iget-object v3, v0, Lk0/p2;->g:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_13

    .line 42
    iget v5, v0, Lk0/p2;->e:I

    aget-object v6, v3, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_12

    if-eqz v5, :cond_13

    .line 43
    iput v2, v0, Lk0/p2;->c:I

    goto :goto_6

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 44
    :cond_13
    :goto_6
    iget v5, v0, Lk0/p2;->e:I

    if-eqz v5, :cond_14

    .line 45
    array-length v5, v3

    if-ge v2, v5, :cond_17

    .line 46
    aget-object v2, v3, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 47
    :cond_14
    iget v2, v0, Lk0/p2;->c:I

    array-length v5, v3

    if-ge v2, v5, :cond_15

    const/16 v5, 0xff

    if-eq v2, v5, :cond_16

    .line 48
    aget-object v2, v3, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_15
    const/16 v5, 0xff

    .line 49
    :cond_16
    :goto_7
    iput v5, v0, Lk0/p2;->c:I

    .line 50
    :cond_17
    :goto_8
    iget v2, v0, Lk0/p2;->e:I

    if-nez v2, :cond_38

    add-int/lit8 v2, p2, 0x3

    .line 51
    aget-byte v1, v1, v2

    .line 52
    iget v2, v0, Lk0/p2;->n:I

    if-eq v1, v2, :cond_38

    if-le v1, v2, :cond_19

    move v2, v7

    .line 53
    :goto_9
    iget v3, v0, Lk0/p2;->n:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_18

    const/4 v3, 0x7

    .line 54
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    const/4 v3, 0x7

    .line 55
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_19
    if-ge v1, v2, :cond_1b

    move v2, v7

    .line 56
    :goto_a
    iget v3, v0, Lk0/p2;->n:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1a

    .line 57
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 58
    :cond_1a
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    .line 59
    :cond_1b
    :goto_b
    iput v1, v0, Lk0/p2;->n:I

    goto/16 :goto_13

    .line 60
    :cond_1c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_38

    add-int/lit8 v2, p2, 0x7

    .line 61
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    const/16 v9, 0x1f4

    invoke-static {v2, v5, v8, v9}, Lk0/qt;->i(IIZI)V

    add-int/lit8 v2, p2, 0x4

    .line 62
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    iput v1, v0, Lk0/p2;->d:I

    move v1, v7

    .line 63
    :goto_c
    iget-object v2, v0, Lk0/p2;->f:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 64
    iget v3, v0, Lk0/p2;->d:I

    aget-object v5, v2, v1

    aget v5, v5, v7

    if-ne v3, v5, :cond_1d

    if-eqz v3, :cond_1e

    .line 65
    iput v1, v0, Lk0/p2;->b:I

    goto :goto_d

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 66
    :cond_1e
    :goto_d
    iget v3, v0, Lk0/p2;->d:I

    if-eqz v3, :cond_24

    .line 67
    array-length v5, v2

    if-ge v1, v5, :cond_38

    const/4 v5, 0x5

    if-eq v3, v5, :cond_21

    if-eq v3, v15, :cond_1f

    .line 68
    aget-object v1, v2, v1

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 69
    :cond_1f
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_20

    const/4 v2, 0x7

    if-eq v1, v2, :cond_20

    sparse-switch v1, :sswitch_data_0

    const/16 v1, 0x1d

    .line 70
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_20
    :sswitch_0
    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 72
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_13

    :cond_21
    move v1, v5

    .line 73
    sget v2, Lh0/c;->E:I

    if-eq v2, v4, :cond_23

    if-eq v2, v6, :cond_23

    if-eq v2, v1, :cond_23

    .line 74
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x12

    .line 75
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 76
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 77
    :cond_22
    invoke-static {}, Lo1/u;->W()Z

    move-result v1

    if-nez v1, :cond_38

    .line 78
    sget-object v1, La/b;->k:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_23
    const/16 v1, 0x12

    .line 79
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 81
    :cond_24
    iget v1, v0, Lk0/p2;->b:I

    array-length v3, v2

    if-ge v1, v3, :cond_25

    const/16 v3, 0xff

    if-eq v1, v3, :cond_26

    .line 82
    aget-object v1, v2, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_25
    const/16 v3, 0xff

    .line 83
    :cond_26
    :goto_e
    iput v3, v0, Lk0/p2;->b:I

    goto/16 :goto_13

    :cond_27
    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 84
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 85
    :cond_28
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_38

    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->s1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->s1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 90
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x7

    .line 91
    aget-byte v9, v1, v5

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0x8

    .line 92
    aget-byte v11, v1, v10

    and-int/2addr v11, v3

    add-int/lit8 v12, p2, 0x9

    .line 93
    aget-byte v13, v1, v12

    and-int/2addr v13, v3

    if-eqz v4, :cond_29

    if-ne v4, v3, :cond_2c

    :cond_29
    if-eqz v9, :cond_2a

    if-ne v9, v3, :cond_2c

    :cond_2a
    if-eqz v11, :cond_2b

    if-ne v11, v3, :cond_2c

    :cond_2b
    if-eqz v13, :cond_2e

    if-ne v13, v3, :cond_2c

    goto :goto_f

    .line 94
    :cond_2c
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_2d

    sget v3, Ll0/c0;->h:I

    if-ne v3, v9, :cond_2d

    sget v3, Ll0/c0;->i:I

    if-ne v3, v11, :cond_2d

    sget v3, Ll0/c0;->j:I

    if-eq v3, v13, :cond_2f

    .line 95
    :cond_2d
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_2f

    .line 96
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 97
    sput v6, Ll0/c0;->k:I

    .line 98
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 99
    :cond_2e
    :goto_f
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 100
    :cond_2f
    :goto_10
    sput v4, Ll0/c0;->g:I

    .line 101
    sput v9, Ll0/c0;->h:I

    .line 102
    sput v11, Ll0/c0;->i:I

    .line 103
    sput v13, Ll0/c0;->j:I

    .line 104
    aget-byte v2, v1, v2

    const/16 v11, 0xff

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->s1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 105
    aget-byte v2, v1, v5

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/h0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 106
    aget-byte v2, v1, v10

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/h0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 107
    aget-byte v1, v1, v12

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->s1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :cond_30
    move v11, v10

    add-int/lit8 v2, p2, 0x3

    .line 108
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    .line 109
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_31

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 110
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 111
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_31
    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 112
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 113
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_11
    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 114
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 115
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    aput v2, v3, v7

    const/4 v2, 0x5

    .line 116
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 117
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->a(III)V

    goto/16 :goto_13

    :cond_32
    add-int/lit8 v2, p2, 0x4

    .line 118
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 119
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_33

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 120
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 121
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_33
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 122
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 123
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_12
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 124
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 125
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v2, v7

    const/4 v1, 0x5

    .line 126
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 127
    :cond_34
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_35
    add-int/lit8 v2, p2, 0x2

    .line 128
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x6

    .line 129
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x7

    .line 130
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x8

    .line 131
    aget-byte v1, v1, v5

    const/16 v5, 0x62

    new-array v6, v8, [I

    const/16 v10, 0xff

    and-int/2addr v2, v10

    aput v2, v6, v7

    .line 132
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v5, v8, [I

    and-int/2addr v3, v10

    aput v3, v5, v7

    .line 133
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    and-int/2addr v4, v10

    aput v4, v3, v7

    .line 134
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    and-int/2addr v1, v10

    aput v1, v3, v7

    .line 135
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_36
    add-int/lit8 v2, p2, 0x2

    .line 136
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lk0/p2;->c3(I)V

    goto/16 :goto_13

    .line 137
    :cond_37
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 138
    aget-byte v5, v1, v5

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 139
    aget-byte v5, v1, v5

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 140
    aget-byte v5, v1, v5

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 141
    aget-byte v5, v1, v5

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 142
    aget-byte v5, v1, v5

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 143
    aget-byte v5, v1, v5

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 144
    aget-byte v9, v1, v5

    shr-int/lit8 v6, v9, 0x4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    .line 145
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    .line 146
    aget-byte v4, v1, v5

    const/4 v5, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 147
    aget-byte v1, v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_38
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xb -> :sswitch_0
        0x18 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x1f -> :sswitch_0
        0x24 -> :sswitch_0
        0x27 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/p2;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/p2;->L:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/p2;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/p2;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/p2;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/p2;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/p2;->I:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/p2;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x71

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
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, -0x5b

    const/16 v3, 0x5a

    const/4 v4, 0x7

    const/16 v5, 0x3d

    const/4 v6, 0x6

    const/16 v7, 0xe3

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v13, :cond_8

    if-eq v0, v11, :cond_7

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_5

    if-eq v0, v10, :cond_4

    const/16 v14, 0x21

    if-eq v0, v14, :cond_3

    const/16 v2, 0x3eb

    if-eq v0, v2, :cond_2

    const/16 v2, 0x405

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_0
    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0, v1, v11}, Lk0/lt;->T2([II)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2
    aget v2, v1, v13

    mul-int/lit16 v2, v2, 0x3ff

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v2, v3

    .line 3
    aget v3, v1, v11

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v5

    div-int/2addr v3, v5

    .line 4
    aget v5, v1, v12

    const/16 v14, 0x2c

    const/16 v15, 0x9

    const/16 v16, 0x8

    if-nez v5, :cond_1

    new-array v1, v15, [I

    aput v7, v1, v12

    aput v6, v1, v13

    aput v14, v1, v11

    aput v12, v1, v9

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v10

    shr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    and-int/lit16 v2, v3, 0xff

    aput v2, v1, v4

    aput v12, v1, v16

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 6
    :cond_1
    aget v1, v1, v12

    if-ne v1, v13, :cond_17

    new-array v1, v15, [I

    aput v7, v1, v12

    aput v6, v1, v13

    aput v14, v1, v11

    aput v13, v1, v9

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v10

    shr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    and-int/lit16 v2, v3, 0xff

    aput v2, v1, v4

    aput v12, v1, v16

    .line 7
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    new-array v1, v10, [I

    .line 8
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    new-array v4, v4, [B

    aput-byte v3, v4, v12

    aput-byte v2, v4, v13

    aput-byte v11, v4, v11

    aput-byte v5, v4, v9

    .line 9
    aget v2, v1, v12

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    aget v1, v1, v13

    int-to-byte v1, v1

    aput-byte v1, v4, v10

    aput-byte v12, v4, v6

    invoke-static {v4}, Lk0/p2;->x3([B)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    new-array v2, v4, [I

    aput v7, v2, v12

    aput v8, v2, v13

    const/16 v3, 0x6f

    aput v3, v2, v11

    .line 10
    aget v3, v1, v12

    aput v3, v2, v9

    aget v3, v1, v13

    aput v3, v2, v8

    aget v3, v1, v11

    aput v3, v2, v10

    aget v1, v1, v9

    aput v1, v2, v6

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    .line 11
    sget v1, Lu0/b;->o:I

    if-ne v1, v13, :cond_17

    new-array v1, v10, [I

    .line 12
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    new-array v2, v10, [I

    aput v7, v2, v12

    aput v11, v2, v13

    const/16 v3, 0x9a

    aput v3, v2, v11

    .line 13
    aget v3, v1, v12

    aput v3, v2, v9

    aget v1, v1, v13

    aput v1, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    new-array v2, v10, [I

    aput v7, v2, v12

    aput v11, v2, v13

    const/16 v3, 0xad

    aput v3, v2, v11

    .line 14
    aget v3, v1, v12

    aput v3, v2, v9

    aget v1, v1, v13

    aput v1, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    new-array v2, v10, [I

    aput v7, v2, v12

    aput v11, v2, v13

    const/16 v3, 0xfd

    aput v3, v2, v11

    .line 15
    aget v3, v1, v12

    aput v3, v2, v9

    aget v1, v1, v13

    aput v1, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    if-eqz v1, :cond_17

    .line 16
    array-length v14, v1

    if-le v14, v13, :cond_17

    .line 17
    aget v14, v1, v13

    if-ne v14, v13, :cond_a

    new-array v4, v4, [B

    aput-byte v3, v4, v12

    aput-byte v2, v4, v13

    aput-byte v11, v4, v11

    aput-byte v5, v4, v9

    .line 18
    aget v2, v1, v12

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    aput-byte v13, v4, v10

    aput-byte v12, v4, v6

    invoke-static {v4}, Lk0/p2;->x3([B)V

    goto :goto_0

    .line 19
    :cond_a
    aget v14, v1, v13

    if-nez v14, :cond_b

    new-array v4, v4, [B

    aput-byte v3, v4, v12

    aput-byte v2, v4, v13

    aput-byte v11, v4, v11

    aput-byte v5, v4, v9

    .line 20
    aget v2, v1, v12

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    aput-byte v12, v4, v10

    aput-byte v12, v4, v6

    invoke-static {v4}, Lk0/p2;->x3([B)V

    .line 21
    :cond_b
    :goto_0
    sget v2, Lk0/nt;->W:I

    if-ne v2, v13, :cond_15

    .line 22
    aget v2, v1, v12

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    .line 23
    aget v2, v1, v13

    if-ne v2, v13, :cond_c

    new-array v1, v10, [I

    .line 24
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 25
    :cond_c
    aget v1, v1, v13

    if-nez v1, :cond_17

    new-array v1, v10, [I

    .line 26
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 27
    :cond_d
    aget v2, v1, v12

    const/16 v3, 0xe

    if-ne v2, v3, :cond_f

    .line 28
    aget v2, v1, v13

    if-ne v2, v13, :cond_e

    new-array v1, v10, [I

    .line 29
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 30
    :cond_e
    aget v1, v1, v13

    if-nez v1, :cond_17

    new-array v1, v10, [I

    .line 31
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 32
    :cond_f
    aget v2, v1, v12

    const/16 v3, 0xf

    if-ne v2, v3, :cond_11

    .line 33
    aget v2, v1, v13

    if-ne v2, v13, :cond_10

    new-array v1, v10, [I

    .line 34
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 35
    :cond_10
    aget v1, v1, v13

    if-nez v1, :cond_17

    new-array v1, v10, [I

    .line 36
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 37
    :cond_11
    aget v2, v1, v12

    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    .line 38
    aget v2, v1, v13

    if-ne v2, v13, :cond_12

    new-array v1, v10, [I

    .line 39
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 40
    :cond_12
    aget v1, v1, v13

    if-nez v1, :cond_17

    new-array v1, v10, [I

    .line 41
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 42
    :cond_13
    aget v2, v1, v13

    if-ne v2, v13, :cond_14

    new-array v2, v10, [I

    aput v7, v2, v12

    aput v11, v2, v13

    aput v5, v2, v11

    .line 43
    aget v1, v1, v12

    aput v1, v2, v9

    aput v13, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    .line 44
    :cond_14
    aget v2, v1, v13

    if-nez v2, :cond_17

    new-array v2, v10, [I

    aput v7, v2, v12

    aput v11, v2, v13

    aput v5, v2, v11

    .line 45
    aget v1, v1, v12

    aput v1, v2, v9

    aput v12, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    .line 46
    :cond_15
    aget v2, v1, v13

    if-ne v2, v13, :cond_16

    new-array v2, v10, [I

    aput v7, v2, v12

    aput v11, v2, v13

    aput v5, v2, v11

    .line 47
    aget v1, v1, v12

    aput v1, v2, v9

    aput v13, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    .line 48
    :cond_16
    aget v2, v1, v13

    if-nez v2, :cond_17

    new-array v2, v10, [I

    aput v7, v2, v12

    aput v11, v2, v13

    aput v5, v2, v11

    .line 49
    aget v1, v1, v12

    aput v1, v2, v9

    aput v12, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    :cond_17
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        -0x3
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x3d
        0xf
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x3d
        0xf
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x3d
        0x10
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x3d
        0x10
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x3d
        0xd
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x3d
        0xd
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x3d
        0xe
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x3d
        0xe
        0x0
    .end array-data
.end method

.method public b([B)V
    .locals 8

    const v0, 0x320065

    const v1, 0x310065    # 4.500081E-39f

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OBD Rcv--> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-static {p1, v2, v6}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    sget v3, Lk0/nt;->a:I

    if-eq v3, v1, :cond_0

    if-eq v3, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v3, p1

    new-array v3, v3, [I

    .line 4
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    .line 5
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x41c

    invoke-static {v4, v5, v3}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_11

    .line 7
    array-length v3, p1

    if-gtz v3, :cond_3

    goto/16 :goto_a

    .line 8
    :cond_3
    iget v3, p0, Lk0/p2;->i:I

    array-length v4, p1

    add-int/2addr v3, v4

    const/16 v4, 0x400

    if-le v3, v4, :cond_4

    .line 9
    iput v2, p0, Lk0/p2;->i:I

    .line 10
    iput v2, p0, Lk0/p2;->j:I

    .line 11
    iput v2, p0, Lk0/p2;->k:I

    .line 12
    :cond_4
    iget-object v3, p0, Lk0/p2;->h:[B

    iget v4, p0, Lk0/p2;->i:I

    array-length v5, p1

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget v3, p0, Lk0/p2;->i:I

    array-length p1, p1

    add-int/2addr v3, p1

    iput v3, p0, Lk0/p2;->i:I

    .line 14
    iget p1, p0, Lk0/p2;->k:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz p1, :cond_8

    if-lt p1, v3, :cond_5

    return-void

    .line 15
    :cond_5
    iget-object p1, p0, Lk0/p2;->h:[B

    aget-byte p1, p1, v5

    move v3, v4

    .line 16
    :goto_2
    iget v6, p0, Lk0/p2;->k:I

    if-ge v3, v6, :cond_6

    .line 17
    iget-object v6, p0, Lk0/p2;->h:[B

    aget-byte v6, v6, v3

    add-int/2addr p1, v6

    int-to-byte p1, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 18
    iget-object v3, p0, Lk0/p2;->h:[B

    aget-byte v6, v3, v6

    if-ne p1, v6, :cond_7

    .line 19
    aget-byte p1, v3, v5

    invoke-virtual {p0, v3, v5, p1}, Lk0/p2;->U2([BII)V

    .line 20
    iget p1, p0, Lk0/p2;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk0/p2;->j:I

    goto :goto_3

    .line 21
    :cond_7
    iput v5, p0, Lk0/p2;->j:I

    .line 22
    :goto_3
    iput v2, p0, Lk0/p2;->k:I

    .line 23
    :cond_8
    iget p1, p0, Lk0/p2;->i:I

    sub-int/2addr p1, v4

    :goto_4
    iget v3, p0, Lk0/p2;->j:I

    if-ge v3, p1, :cond_f

    .line 24
    iget-object v4, p0, Lk0/p2;->h:[B

    aget-byte v6, v4, v3

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_e

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v4, v6

    const/16 v7, -0x5b

    if-ne v6, v7, :cond_e

    .line 25
    iget v6, p0, Lk0/p2;->k:I

    const/16 v7, 0x200

    if-le v6, v7, :cond_9

    .line 26
    iput v2, p0, Lk0/p2;->k:I

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v3, 0x2

    .line 27
    aget-byte v6, v4, v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lk0/p2;->k:I

    .line 28
    iget v7, p0, Lk0/p2;->i:I

    if-lt v6, v7, :cond_a

    sub-int/2addr v6, v3

    .line 29
    iput v6, p0, Lk0/p2;->k:I

    goto :goto_9

    :cond_a
    add-int/lit8 v6, v3, 0x2

    .line 30
    aget-byte v4, v4, v6

    add-int/lit8 v3, v3, 0x3

    .line 31
    :goto_5
    iget v6, p0, Lk0/p2;->k:I

    if-ge v3, v6, :cond_b

    .line 32
    iget-object v6, p0, Lk0/p2;->h:[B

    aget-byte v6, v6, v3

    add-int/2addr v4, v6

    int-to-byte v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v4, -0x1

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 33
    iget-object v4, p0, Lk0/p2;->h:[B

    aget-byte v6, v4, v6

    if-ne v3, v6, :cond_d

    .line 34
    sget v3, Lk0/nt;->a:I

    if-eq v3, v1, :cond_c

    if-eq v3, v0, :cond_c

    .line 35
    iget v3, p0, Lk0/p2;->j:I

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v3, v5

    aget-byte v3, v4, v3

    invoke-virtual {p0, v4, v6, v3}, Lk0/p2;->U2([BII)V

    goto :goto_6

    .line 36
    :cond_c
    iget v3, p0, Lk0/p2;->j:I

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v3, v5

    aget-byte v3, v4, v3

    invoke-virtual {p0, v4, v6, v3}, Lk0/p2;->u3([BII)V

    .line 37
    :goto_6
    iget v3, p0, Lk0/p2;->k:I

    iput v3, p0, Lk0/p2;->j:I

    goto :goto_7

    .line 38
    :cond_d
    iget v3, p0, Lk0/p2;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lk0/p2;->j:I

    .line 39
    :goto_7
    iput v2, p0, Lk0/p2;->k:I

    .line 40
    :cond_e
    :goto_8
    iget v3, p0, Lk0/p2;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lk0/p2;->j:I

    goto :goto_4

    :cond_f
    :goto_9
    if-eqz v3, :cond_11

    .line 41
    iget p1, p0, Lk0/p2;->i:I

    sub-int/2addr p1, v3

    iput p1, p0, Lk0/p2;->i:I

    if-eqz p1, :cond_10

    .line 42
    iget-object v0, p0, Lk0/p2;->h:[B

    invoke-static {v0, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    :cond_10
    iput v2, p0, Lk0/p2;->j:I

    :cond_11
    :goto_a
    return-void
.end method

.method public c3(I)V
    .locals 2

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

    :pswitch_5
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 6
    sget-object p1, Lw0/d;->b:Lw0/g;

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Lw0/g;->x(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    const/4 v1, -0x3

    if-ne p1, v0, :cond_1

    .line 7
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v1}, Lw0/g;->x(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    if-ne p1, v0, :cond_2

    .line 8
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v1}, Lw0/g;->x(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d3(I)V
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
    invoke-static {v1}, Lk0/p2;->x3([B)V

    new-array v0, v0, [B

    aput-byte v3, v0, v2

    aput-byte v5, v0, v4

    aput-byte v6, v0, v6

    aput-byte v8, v0, v7

    aput-byte v9, v0, v10

    aput-byte v2, v0, v11

    aput-byte v2, v0, v12

    .line 2
    invoke-static {v0}, Lk0/p2;->x3([B)V

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

.method public final e3(I)I
    .locals 8

    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    .line 1
    rem-int/lit16 p1, p1, 0x168

    :cond_0
    if-gez p1, :cond_1

    .line 2
    rem-int/lit16 p1, p1, 0x168

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rsub-int p1, p1, 0x168

    :cond_1
    int-to-double v1, p1

    const-wide v3, 0x4036800000000000L    # 22.5

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_2

    if-gez p1, :cond_3

    :cond_2
    const-wide v5, 0x4075180000000000L    # 337.5

    cmpl-double v7, v1, v5

    if-ltz v7, :cond_4

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x7

    goto/16 :goto_0

    :cond_4
    cmpl-double p1, v1, v3

    const-wide v3, 0x4050e00000000000L    # 67.5

    if-lez p1, :cond_5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_5

    const/16 p1, 0x8

    goto :goto_0

    :cond_5
    cmpl-double p1, v1, v3

    const-wide v3, 0x405c200000000000L    # 112.5

    if-ltz p1, :cond_6

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    cmpl-double p1, v1, v3

    const-wide v3, 0x4063b00000000000L    # 157.5

    if-lez p1, :cond_7

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    const/4 p1, 0x2

    goto :goto_0

    :cond_7
    cmpl-double p1, v1, v3

    const-wide v3, 0x4069500000000000L    # 202.5

    if-ltz p1, :cond_8

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_8

    const/4 p1, 0x3

    goto :goto_0

    :cond_8
    cmpl-double p1, v1, v3

    const-wide v3, 0x406ef00000000000L    # 247.5

    if-lez p1, :cond_9

    cmpg-double p1, v1, v3

    if-gez p1, :cond_9

    const/4 p1, 0x4

    goto :goto_0

    :cond_9
    cmpl-double p1, v1, v3

    const-wide v3, 0x4072480000000000L    # 292.5

    if-ltz p1, :cond_a

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_a

    const/4 p1, 0x5

    goto :goto_0

    :cond_a
    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    cmpg-double p1, v1, v5

    if-gez p1, :cond_b

    const/4 p1, 0x6

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final f3(ILjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x1f

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 2
    array-length p1, p2

    const/16 v1, 0x1e

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 p1, v2, 0x3

    .line 3
    aget-byte v3, p2, v2

    aput v3, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final g3()V
    .locals 10

    .line 1
    iget v0, p0, Lk0/p2;->B:I

    if-ltz v0, :cond_2

    sget-object v1, Lk0/p2;->M:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lk0/p2;->C:I

    if-nez v0, :cond_1

    iget v1, p0, Lk0/p2;->y:I

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, p0, Lk0/p2;->x:I

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    .line 4
    iget v3, p0, Lk0/p2;->w:I

    mul-int/2addr v3, v2

    const/16 v4, 0x16

    new-array v4, v4, [I

    const/16 v5, 0xe3

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    const/16 v7, 0x13

    aput v7, v4, v5

    const/4 v5, 0x2

    const/16 v8, 0xe4

    aput v8, v4, v5

    const/4 v5, 0x3

    .line 5
    iget v8, p0, Lk0/p2;->D:I

    const/4 v9, 0x7

    shl-int/2addr v8, v9

    int-to-byte v8, v8

    aput v8, v4, v5

    const/4 v5, 0x4

    shl-int/2addr v0, v9

    int-to-byte v0, v0

    aput v0, v4, v5

    const/4 v0, 0x5

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    const/4 v0, 0x6

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v9

    and-int/lit16 v0, v1, 0xff

    const/16 v1, 0x8

    aput v0, v4, v1

    const/16 v0, 0x9

    aput v6, v4, v0

    shr-int/lit8 v0, v3, 0x18

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v2

    const/16 v0, 0xb

    shr-int/lit8 v1, v3, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/16 v0, 0xc

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/16 v0, 0xd

    and-int/lit16 v1, v3, 0xff

    aput v1, v4, v0

    const/16 v0, 0xe

    iget v1, p0, Lk0/p2;->y:I

    .line 6
    invoke-virtual {p0, v1}, Lk0/p2;->e3(I)I

    move-result v1

    aput v1, v4, v0

    const/16 v0, 0xf

    iget v1, p0, Lk0/p2;->z:I

    div-int/lit16 v2, v1, 0xe10

    aput v2, v4, v0

    rem-int/lit16 v0, v1, 0xe10

    div-int/lit8 v0, v0, 0x3c

    const/16 v2, 0x10

    aput v0, v4, v2

    const/16 v0, 0x11

    div-int/lit16 v2, v1, 0xe10

    aput v2, v4, v0

    const/16 v0, 0x12

    rem-int/lit16 v1, v1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    aput v1, v4, v0

    sget-object v0, Lk0/p2;->M:[I

    iget v1, p0, Lk0/p2;->B:I

    aget v0, v0, v1

    aput v0, v4, v7

    const/16 v0, 0x14

    aput v6, v4, v0

    const/16 v0, 0x15

    aput v6, v4, v0

    .line 7
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public u3([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget v2, Lk0/nt;->a:I

    const v3, 0x310065    # 4.500081E-39f

    if-eq v2, v3, :cond_0

    const v3, 0x320065

    if-eq v2, v3, :cond_0

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 2
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_13

    const/16 v3, 0x31

    const/16 v5, 0x25

    const/4 v6, 0x5

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x32

    if-eq v2, v3, :cond_1

    goto/16 :goto_a

    :cond_1
    add-int/lit8 v2, p2, 0xf

    .line 3
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    .line 4
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v5

    if-nez v1, :cond_2

    .line 5
    invoke-static {v8}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_2
    if-ne v2, v9, :cond_3

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0x258

    .line 6
    :goto_0
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_a

    :cond_4
    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 7
    aget-byte v10, v1, v3

    const/4 v11, 0x6

    shr-int/2addr v10, v11

    and-int/2addr v10, v9

    aput v10, v2, v8

    const/16 v10, 0xa

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v10, v9, [I

    .line 8
    aget-byte v12, v1, v3

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v10, v9, [I

    .line 9
    aget-byte v12, v1, v3

    shr-int/lit8 v12, v12, 0x4

    and-int/2addr v12, v9

    aput v12, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v10, v9, [I

    .line 10
    aget-byte v12, v1, v3

    const/4 v13, 0x3

    shr-int/2addr v12, v13

    and-int/2addr v12, v9

    aput v12, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5c

    new-array v10, v9, [I

    .line 11
    aget-byte v12, v1, v3

    shr-int/2addr v12, v9

    and-int/2addr v12, v9

    aput v12, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 12
    aget-byte v3, v1, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 13
    aget-byte v10, v1, v5

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 14
    aget-byte v3, v1, v5

    shr-int/2addr v3, v11

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 15
    aget-byte v3, v1, v5

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/16 v3, 0xc

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v10, v9, [I

    .line 16
    aget-byte v12, v1, v5

    shr-int/2addr v12, v13

    and-int/2addr v12, v9

    aput v12, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v10, v9, [I

    .line 17
    aget-byte v12, v1, v5

    shr-int/2addr v12, v4

    and-int/2addr v12, v9

    aput v12, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v10, v9, [I

    .line 18
    aget-byte v12, v1, v5

    shr-int/2addr v12, v9

    and-int/2addr v12, v9

    aput v12, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v10, v9, [I

    .line 19
    aget-byte v5, v1, v5

    shr-int/2addr v5, v8

    and-int/2addr v5, v9

    aput v5, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v5, v9, [I

    add-int/lit8 v10, p2, 0x4

    .line 20
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v9

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v5, v9, [I

    .line 21
    aget-byte v12, v1, v10

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v5, v9, [I

    .line 22
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x4

    and-int/2addr v12, v9

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v5, v9, [I

    .line 23
    aget-byte v12, v1, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v13

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v5, v9, [I

    .line 24
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/2addr v10, v13

    aput v10, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v5, v9, [I

    add-int/lit8 v10, p2, 0x5

    .line 25
    aget-byte v12, v1, v10

    shr-int/2addr v12, v11

    and-int/2addr v12, v13

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v5, v9, [I

    .line 26
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x4

    and-int/2addr v12, v13

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v5, v9, [I

    .line 27
    aget-byte v12, v1, v10

    shr-int/2addr v12, v13

    and-int/2addr v12, v9

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4b

    new-array v5, v9, [I

    .line 28
    aget-byte v12, v1, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v9

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v5, v9, [I

    .line 29
    aget-byte v12, v1, v10

    shr-int/2addr v12, v9

    and-int/2addr v12, v9

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v5, v9, [I

    .line 30
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/2addr v10, v9

    aput v10, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v5, v9, [I

    add-int/lit8 v10, p2, 0x6

    .line 31
    aget-byte v12, v1, v10

    shr-int/2addr v12, v8

    and-int/lit8 v12, v12, 0xf

    aput v12, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 32
    aget-byte v2, v1, v10

    shr-int/2addr v2, v8

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v13, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v11, :cond_5

    packed-switch v2, :pswitch_data_0

    move v2, v8

    :goto_1
    move v5, v2

    :goto_2
    move v10, v5

    goto :goto_3

    :pswitch_0
    move v2, v9

    goto :goto_1

    :pswitch_1
    move v2, v8

    move v5, v9

    goto :goto_2

    :pswitch_2
    move v5, v8

    move v2, v9

    move v10, v2

    goto :goto_3

    :cond_5
    move v2, v8

    move v10, v2

    move v5, v9

    goto :goto_3

    :cond_6
    move v10, v8

    move v2, v9

    move v5, v2

    goto :goto_3

    :cond_7
    move v5, v8

    move v10, v5

    move v2, v9

    :goto_3
    const/16 v11, 0x14

    new-array v12, v9, [I

    aput v2, v12, v8

    .line 33
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v11, v9, [I

    aput v5, v11, v8

    .line 34
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v5, v9, [I

    aput v10, v5, v8

    .line 35
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v9, [I

    add-int/lit8 v10, p2, 0x7

    .line 36
    aget-byte v10, v1, v10

    and-int/lit8 v10, v10, 0xf

    aput v10, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 37
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v5, p2, 0x8

    .line 38
    aget-byte v5, v1, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v5, p2, 0x9

    .line 39
    aget-byte v5, v1, v5

    :goto_4
    and-int/2addr v5, v7

    const/4 v10, -0x3

    const/4 v11, -0x2

    const/16 v12, 0x1b

    const/16 v14, 0xfe

    if-ne v5, v14, :cond_9

    new-array v5, v9, [I

    aput v11, v5, v8

    .line 40
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_9
    if-ne v5, v7, :cond_a

    new-array v5, v9, [I

    aput v10, v5, v8

    .line 41
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_a
    new-array v15, v9, [I

    mul-int/2addr v5, v6

    aput v5, v15, v8

    .line 42
    invoke-static {v12, v15}, Lk0/qt;->y0(I[I)V

    .line 43
    :goto_5
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v2, p2, 0x9

    .line 44
    aget-byte v2, v1, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v2, p2, 0x8

    .line 45
    aget-byte v2, v1, v2

    :goto_6
    and-int/2addr v2, v7

    const/16 v5, 0x1c

    if-ne v2, v14, :cond_c

    new-array v2, v9, [I

    aput v11, v2, v8

    .line 46
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_c
    if-ne v2, v7, :cond_d

    new-array v2, v9, [I

    aput v10, v2, v8

    .line 47
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_d
    new-array v12, v9, [I

    mul-int/2addr v2, v6

    aput v2, v12, v8

    .line 48
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v2, p2, 0xa

    .line 49
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eq v2, v9, :cond_10

    if-eq v2, v4, :cond_f

    if-eq v2, v13, :cond_e

    move v2, v8

    :goto_8
    move v4, v2

    goto :goto_9

    :cond_e
    move v2, v9

    goto :goto_8

    :cond_f
    move v2, v8

    move v4, v9

    goto :goto_9

    :cond_10
    move v4, v8

    move v2, v9

    :goto_9
    const/16 v5, 0x2f

    new-array v12, v9, [I

    aput v2, v12, v8

    .line 50
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v5, v9, [I

    aput v4, v5, v8

    .line 51
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xb

    .line 52
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 53
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    const/16 v2, 0x28

    if-ne v1, v14, :cond_11

    new-array v1, v9, [I

    aput v11, v1, v8

    .line 54
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_11
    if-ne v1, v7, :cond_12

    new-array v1, v9, [I

    aput v10, v1, v8

    .line 55
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_12
    new-array v3, v9, [I

    mul-int/2addr v1, v6

    aput v1, v3, v8

    .line 56
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    .line 57
    :cond_13
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v0, Lk0/p2;->l:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lk0/p2;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lk0/p2;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v3(ILjava/lang/String;)V
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

.method public final w3(ILjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

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
