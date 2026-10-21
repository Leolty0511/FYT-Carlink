.class public Lmodule/canbus/u;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/u$g;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static final F:[I

.field public static final G:[I

.field public static final H:[I

.field public static final I:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/u$g;",
            ">;"
        }
    .end annotation
.end field

.field public static final J:Lo1/y;

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:J

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/u;->F:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/u;->G:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/u;->H:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/u;->I:Lo1/f;

    .line 5
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Lmodule/canbus/u;->J:Lo1/y;

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
        0x4e
        0x8
        0x9
        0x9
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/u;->b:I

    .line 3
    iput v0, p0, Lmodule/canbus/u;->h:I

    const/16 v1, 0x1d

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

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/u;->i:[[I

    .line 5
    new-instance v1, Lmodule/canbus/u$a;

    invoke-direct {v1, p0}, Lmodule/canbus/u$a;-><init>(Lmodule/canbus/u;)V

    iput-object v1, p0, Lmodule/canbus/u;->j:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lmodule/canbus/u$b;

    invoke-direct {v1, p0}, Lmodule/canbus/u$b;-><init>(Lmodule/canbus/u;)V

    iput-object v1, p0, Lmodule/canbus/u;->k:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lmodule/canbus/u$c;

    invoke-direct {v1, p0}, Lmodule/canbus/u$c;-><init>(Lmodule/canbus/u;)V

    iput-object v1, p0, Lmodule/canbus/u;->l:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 8
    iput-wide v1, p0, Lmodule/canbus/u;->m:J

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lmodule/canbus/u;->n:I

    .line 10
    new-instance v1, Lmodule/canbus/u$d;

    invoke-direct {v1, p0}, Lmodule/canbus/u$d;-><init>(Lmodule/canbus/u;)V

    iput-object v1, p0, Lmodule/canbus/u;->o:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lmodule/canbus/u$e;

    invoke-direct {v1, p0}, Lmodule/canbus/u$e;-><init>(Lmodule/canbus/u;)V

    iput-object v1, p0, Lmodule/canbus/u;->p:Ljava/lang/Runnable;

    const/16 v1, 0xc8

    .line 12
    iput v1, p0, Lmodule/canbus/u;->q:I

    .line 13
    new-instance v1, Lmodule/canbus/u$f;

    invoke-direct {v1, p0}, Lmodule/canbus/u$f;-><init>(Lmodule/canbus/u;)V

    iput-object v1, p0, Lmodule/canbus/u;->r:Ljava/lang/Runnable;

    .line 14
    iput v0, p0, Lmodule/canbus/u;->s:I

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
        0x6
    .end array-data

    :array_19
    .array-data 4
        0x8d
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x8b
        0x5
    .end array-data

    :array_1b
    .array-data 4
        0x8c
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x8d
        0x9
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/u;->s:I

    return p0
.end method

.method public static synthetic B3(Lmodule/canbus/u;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/u;->s:I

    return p1
.end method

.method public static synthetic C3(Lmodule/canbus/u;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/u;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/u;->s:I

    return v0
.end method

.method public static synthetic D3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->u:I

    return v0
.end method

.method public static synthetic E3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/u;->u:I

    return p0
.end method

.method public static synthetic F3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/u;->F:[I

    return-object v0
.end method

.method public static synthetic G3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->t:I

    return v0
.end method

.method public static synthetic H3(Lmodule/canbus/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/u;->R3()V

    return-void
.end method

.method public static I3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/u;->I:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/u$g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/u$g;->a(I)V

    :cond_0
    return-void
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
    invoke-static {}, Lmodule/canbus/u;->b3()B

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

.method public static synthetic access$1700()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->A:I

    return v0
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

.method public static synthetic f3(Lmodule/canbus/u;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmodule/canbus/u;->m:J

    return-wide v0
.end method

.method public static synthetic g3(Lmodule/canbus/u;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lmodule/canbus/u;->m:J

    return-wide p1
.end method

.method public static synthetic h3(Lmodule/canbus/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/u;->n:I

    return p0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->v:I

    return v0
.end method

.method public static synthetic j3(Lmodule/canbus/u;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/u;->n:I

    return p1
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->y:I

    return v0
.end method

.method public static synthetic l3(Lmodule/canbus/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/u;->N3()V

    return-void
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->w:I

    return v0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->z:I

    return v0
.end method

.method public static synthetic o3(Lmodule/canbus/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/u;->P3()V

    return-void
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->x:I

    return v0
.end method

.method public static synthetic q3(Lmodule/canbus/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/u;->Q3()V

    return-void
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->B:I

    return v0
.end method

.method public static synthetic s3(Lmodule/canbus/u;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/u;->K3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic t3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->D:I

    return v0
.end method

.method public static synthetic u3(Lmodule/canbus/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/u;->O3()V

    return-void
.end method

.method public static synthetic v3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->C:I

    return v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/u;->E:I

    return v0
.end method

.method public static synthetic x3(Lmodule/canbus/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/u;->M3()V

    return-void
.end method

.method public static synthetic y3(Lmodule/canbus/u;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/u;->J3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic z3(Lmodule/canbus/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/u;->q:I

    return p0
.end method


# virtual methods
.method public final J3(BLjava/lang/String;)V
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

.method public final K3(BLjava/lang/String;)V
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

    if-lt p1, v1, :cond_1

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

.method public final L3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/u;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/u;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/u;->R2([I)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized M3()V
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
    sget v0, Lmodule/canbus/u;->E:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/u;->I3(II)V
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

.method public final declared-synchronized N3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/u;->y:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/u;->I3(II)V
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

.method public final declared-synchronized O3()V
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
    sget v0, Lmodule/canbus/u;->D:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/u;->I3(II)V
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

.method public P2([I)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/u;->G:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/u;->y:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/u;->z:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/u;->A:I

    :cond_0
    return-void
.end method

.method public final declared-synchronized P3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/u;->z:I

    const/16 v1, 0x8

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/u;->I3(II)V
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

.method public final declared-synchronized Q3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/u;->A:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/u;->I3(II)V
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
    sget-object p1, Lmodule/canbus/u;->H:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/u;->D:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/u;->E:I

    :cond_0
    return-void
.end method

.method public final declared-synchronized R3()V
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
    sget v1, Lmodule/canbus/u;->u:I

    invoke-static {v0, v1}, Lmodule/canbus/u;->I3(II)V
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

.method public S2()V
    .locals 6

    .line 1
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lmodule/canbus/u;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v1, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/u;->o:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v1, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/u;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput v2, v1, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lmodule/canbus/u;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/u;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/u;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/u;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/u;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    const/4 v1, 0x0

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    const-string v5, "com.syu.canbus"

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 13
    iput v2, v0, Lk0/mt;->e:I

    .line 14
    iput v2, v0, Lk0/mt;->f:I

    .line 15
    iput v2, v0, Lk0/mt;->g:I

    .line 16
    iput v2, v0, Lk0/mt;->b:I

    .line 17
    iput v2, v0, Lk0/mt;->c:I

    .line 18
    iput v2, v0, Lk0/mt;->d:I

    .line 19
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 21
    iput v2, v0, Lk0/mt;->e:I

    .line 22
    iput v2, v0, Lk0/mt;->f:I

    .line 23
    iput v2, v0, Lk0/mt;->g:I

    .line 24
    iput v3, v0, Lk0/mt;->b:I

    .line 25
    iput v3, v0, Lk0/mt;->c:I

    .line 26
    iput v3, v0, Lk0/mt;->d:I

    .line 27
    iput v2, v0, Lk0/mt;->i:I

    .line 28
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {p0}, Lmodule/canbus/u;->init()V

    .line 30
    iget-object v0, p0, Lmodule/canbus/u;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {p0}, Lmodule/canbus/u;->L3()V

    goto :goto_1

    .line 32
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 33
    iput v2, v0, Lk0/mt;->e:I

    .line 34
    iput v2, v0, Lk0/mt;->f:I

    .line 35
    iput v2, v0, Lk0/mt;->g:I

    .line 36
    iput v2, v0, Lk0/mt;->b:I

    .line 37
    iput v2, v0, Lk0/mt;->c:I

    .line 38
    iput v2, v0, Lk0/mt;->d:I

    .line 39
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 40
    :cond_3
    sget v0, Ln0/j4;->b:I

    const/16 v4, 0xe

    if-ne v0, v4, :cond_4

    .line 41
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->c:I

    .line 42
    iput v3, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 43
    :cond_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->c:I

    .line 44
    iput v2, v0, Lk0/mt;->d:I

    .line 45
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 46
    iput v2, v0, Lk0/mt;->e:I

    .line 47
    iput v2, v0, Lk0/mt;->f:I

    .line 48
    iput v2, v0, Lk0/mt;->g:I

    .line 49
    iput v2, v0, Lk0/mt;->b:I

    .line 50
    iput v2, v0, Lk0/mt;->i:I

    :cond_5
    :goto_1
    return-void
.end method

.method public U2([BII)V
    .locals 10

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x5a

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xff

    if-eq v0, v1, :cond_14

    const/16 v1, -0x20

    if-eq v0, v1, :cond_13

    const/16 v1, -0x10

    if-eq v0, v1, :cond_12

    const/16 p3, 0x41

    if-eq v0, p3, :cond_11

    const/16 p3, 0x72

    const/16 v1, 0x80

    if-eq v0, p3, :cond_b

    const/16 p3, 0x74

    if-eq v0, p3, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_15

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    iput p3, p0, Lmodule/canbus/u;->h:I

    if-eqz p3, :cond_5

    or-int/lit16 p1, p3, 0x80

    .line 4
    iput p1, p0, Lmodule/canbus/u;->h:I

    move p1, v6

    .line 5
    :goto_0
    iget-object p2, p0, Lmodule/canbus/u;->i:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_2

    .line 6
    iget p3, p0, Lmodule/canbus/u;->h:I

    aget-object v0, p2, p1

    aget v0, v0, v6

    if-ne p3, v0, :cond_1

    if-eqz p3, :cond_2

    .line 7
    iput p1, p0, Lmodule/canbus/u;->e:I

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget p3, p0, Lmodule/canbus/u;->h:I

    if-eqz p3, :cond_3

    .line 9
    array-length p3, p2

    if-ge p1, p3, :cond_15

    .line 10
    aget-object p1, p2, p1

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 11
    :cond_3
    iget p1, p0, Lmodule/canbus/u;->e:I

    array-length p3, p2

    if-ge p1, p3, :cond_4

    if-eq p1, v8, :cond_4

    .line 12
    aget-object p1, p2, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 13
    :cond_4
    iput v8, p0, Lmodule/canbus/u;->e:I

    goto/16 :goto_6

    :cond_5
    if-nez p3, :cond_15

    add-int/2addr p2, v2

    .line 14
    aget-byte p3, p1, p2

    and-int/2addr p3, v8

    iget v0, p0, Lmodule/canbus/u;->g:I

    if-eq p3, v0, :cond_9

    if-nez v0, :cond_6

    .line 15
    aget-byte p3, p1, p2

    and-int/2addr p3, v8

    if-ne p3, v8, :cond_6

    .line 16
    iput v5, p0, Lmodule/canbus/u;->h:I

    goto :goto_2

    :cond_6
    if-ne v0, v8, :cond_7

    .line 17
    aget-byte p3, p1, p2

    and-int/2addr p3, v8

    if-nez p3, :cond_7

    .line 18
    iput v7, p0, Lmodule/canbus/u;->h:I

    goto :goto_2

    .line 19
    :cond_7
    aget-byte p3, p1, p2

    and-int/2addr p3, v8

    if-le p3, v0, :cond_8

    .line 20
    iput v7, p0, Lmodule/canbus/u;->h:I

    goto :goto_2

    .line 21
    :cond_8
    iput v5, p0, Lmodule/canbus/u;->h:I

    .line 22
    :cond_9
    :goto_2
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    iput p1, p0, Lmodule/canbus/u;->g:I

    .line 23
    iget p1, p0, Lmodule/canbus/u;->h:I

    if-ne p1, v7, :cond_a

    .line 24
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 25
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_a
    if-ne p1, v5, :cond_15

    const/16 p1, 0x8

    .line 26
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 27
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 28
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_15

    add-int/lit8 p3, p2, 0x2

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    and-int/2addr p3, v1

    if-ne p3, v1, :cond_c

    .line 30
    iput v7, p0, Lmodule/canbus/u;->c:I

    goto :goto_3

    .line 31
    :cond_c
    iput v6, p0, Lmodule/canbus/u;->c:I

    :goto_3
    add-int/lit8 p3, p2, 0x7

    .line 32
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    const/16 v1, 0x21c

    invoke-static {p3, v0, v7, v1}, Lk0/qt;->i(IIZI)V

    add-int/2addr p2, v3

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    iput p1, p0, Lmodule/canbus/u;->f:I

    move p1, v6

    .line 34
    :goto_4
    iget-object p2, p0, Lmodule/canbus/u;->i:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_e

    .line 35
    iget p3, p0, Lmodule/canbus/u;->f:I

    aget-object v0, p2, p1

    aget v0, v0, v6

    if-ne p3, v0, :cond_d

    if-eqz p3, :cond_e

    .line 36
    iput p1, p0, Lmodule/canbus/u;->d:I

    goto :goto_5

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 37
    :cond_e
    :goto_5
    iget p3, p0, Lmodule/canbus/u;->f:I

    if-eqz p3, :cond_f

    .line 38
    array-length p3, p2

    if-ge p1, p3, :cond_15

    .line 39
    aget-object p1, p2, p1

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 40
    :cond_f
    iget p1, p0, Lmodule/canbus/u;->d:I

    array-length p3, p2

    if-ge p1, p3, :cond_10

    if-eq p1, v8, :cond_10

    .line 41
    aget-object p1, p2, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 42
    :cond_10
    iput v8, p0, Lmodule/canbus/u;->d:I

    goto/16 :goto_6

    .line 43
    :cond_11
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_15

    add-int/lit8 p3, p2, 0x2

    .line 44
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lmodule/canbus/u;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 45
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lmodule/canbus/u;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 46
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lmodule/canbus/u;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 47
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lmodule/canbus/u;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 48
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lmodule/canbus/u;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lmodule/canbus/u;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 50
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lmodule/canbus/u;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 51
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    invoke-static {p1}, Lmodule/canbus/u;->d3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    .line 52
    :cond_12
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 53
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_15

    add-int/2addr p2, v5

    .line 54
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    invoke-virtual {p0, p1}, Lmodule/canbus/u;->e3(I)V

    goto :goto_6

    :cond_14
    add-int/lit8 p3, p2, 0x8

    .line 55
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x9

    .line 56
    aget-byte v0, p1, v0

    new-array v1, v7, [I

    shr-int/lit8 v9, p3, 0x4

    and-int/2addr v9, v7

    aput v9, v1, v6

    .line 57
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v9, p3, 0x3

    and-int/2addr v9, v7

    aput v9, v1, v6

    .line 58
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v4

    aput p3, v1, v6

    .line 59
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    shr-int/lit8 v1, v0, 0x0

    and-int/2addr v1, v8

    aput v1, p3, v6

    .line 60
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    .line 61
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_15

    add-int/lit8 p3, p2, 0x2

    .line 62
    aget-byte p3, p1, p3

    add-int/lit8 v1, p2, 0x3

    .line 63
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 64
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x5

    .line 65
    aget-byte v3, p1, v3

    add-int/2addr p2, v4

    .line 66
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x28

    .line 67
    invoke-static {p2, v6, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/u;->t:I

    and-int/lit16 p2, v2, 0xff

    const/16 p3, 0xa

    .line 68
    invoke-static {p2, v6, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/u;->B:I

    and-int/lit16 p2, v1, 0xff

    .line 69
    invoke-static {p2, v6, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/u;->C:I

    and-int/lit16 p2, v3, 0xff

    .line 70
    invoke-static {p2, v6, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/u;->v:I

    and-int/lit16 p2, v0, 0xff

    .line 71
    invoke-static {p2, v6, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/u;->w:I

    and-int/2addr p1, v8

    .line 72
    invoke-static {p1, v6, p3}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/u;->x:I

    :cond_15
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/u;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/u;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/u;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/u;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/u;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/u;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/u;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/u;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lmodule/canbus/u;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x5

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

    const/4 p3, 0x5

    if-eqz p1, :cond_1

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p4

    if-eqz p4, :cond_2

    new-array p3, p3, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p3, v0

    const/4 p4, 0x1

    aput p1, p3, p4

    const/16 v1, 0xad

    aput v1, p3, p1

    const/4 p1, 0x3

    .line 3
    aget v0, p2, v0

    aput v0, p3, p1

    const/4 p1, 0x4

    aget p2, p2, p4

    aput p2, p3, p1

    invoke-static {p3}, Lz/k;->s([I)V

    :cond_2
    :goto_0
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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/u;->F:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/u;->u:I

    :cond_0
    return-void
.end method

.method public c3()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [I

    const-string v2, "LG"

    const-string v3, "CarDisVolume"

    .line 1
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    .line 2
    iput v2, p0, Lmodule/canbus/u;->b:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    const/16 v5, 0x20

    .line 3
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

    .line 4
    invoke-static {}, Lmodule/canbus/u;->b3()B

    move-result v6

    aput v6, v1, v4

    .line 5
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

    .line 6
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    :cond_2
    const/16 v5, 0x8

    .line 7
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

    .line 8
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 9
    :cond_4
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public e3(I)V
    .locals 3

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

    const/high16 v1, 0x10000

    if-ne p1, v0, :cond_0

    .line 6
    sget p1, Lw0/d;->h:I

    if-ltz p1, :cond_2

    if-ge p1, v1, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lw0/f;->f(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    const/high16 v2, 0x20000

    if-ne p1, v0, :cond_1

    .line 8
    sget p1, Lw0/d;->h:I

    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 9
    invoke-static {v1}, Lw0/f;->f(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    if-ne p1, v0, :cond_2

    .line 10
    sget p1, Lw0/d;->h:I

    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    const p1, 0x10001

    .line 11
    invoke-static {p1}, Lw0/f;->f(I)V

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

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/u;->I:Lo1/f;

    new-instance v1, Lmodule/canbus/u$g;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/u$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/u$g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/u$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/u$g;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/u$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/u$g;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Lmodule/canbus/u$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/u$g;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lmodule/canbus/u$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lmodule/canbus/u$g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/u$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
