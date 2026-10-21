.class public Lmodule/canbus/d;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/d$d;
    }
.end annotation


# static fields
.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static final t:[I

.field public static final u:[I

.field public static final v:[I

.field public static final w:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/d$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/d;->t:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/d;->u:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/d;->v:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/d;->w:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
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
        0x6
        0x8
        0xa
        0xd
        0xf
        0x10
        0x11
        0x13
        0x16
        0x18
        0x1a
    .end array-data

    :array_2
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
    .locals 2

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/d;->b:I

    .line 3
    new-instance v1, Lmodule/canbus/d$a;

    invoke-direct {v1, p0}, Lmodule/canbus/d$a;-><init>(Lmodule/canbus/d;)V

    iput-object v1, p0, Lmodule/canbus/d;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Lmodule/canbus/d$b;

    invoke-direct {v1, p0}, Lmodule/canbus/d$b;-><init>(Lmodule/canbus/d;)V

    iput-object v1, p0, Lmodule/canbus/d;->d:Ljava/lang/Runnable;

    const/16 v1, 0xc8

    .line 5
    iput v1, p0, Lmodule/canbus/d;->e:I

    .line 6
    new-instance v1, Lmodule/canbus/d$c;

    invoke-direct {v1, p0}, Lmodule/canbus/d$c;-><init>(Lmodule/canbus/d;)V

    iput-object v1, p0, Lmodule/canbus/d;->f:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lmodule/canbus/d;->g:I

    return-void
.end method

.method public static A3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/d;->w:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/d$d;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/d$d;->a(I)V

    :cond_0
    return-void
.end method

.method public static a3()V
    .locals 18

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
    const/16 v0, 0xd

    aput v0, v1, v2

    const/16 v3, 0xd2

    const/4 v5, 0x1

    aput v3, v1, v5

    const/4 v3, 0x2

    .line 2
    invoke-static {}, Lmodule/canbus/d;->b3()B

    move-result v6

    aput v6, v1, v3

    .line 3
    sget v3, Lu0/b;->D:I

    const/16 v6, 0x7a

    const/16 v7, 0xb

    const/16 v8, 0x68

    const/4 v9, 0x3

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x5

    const/4 v14, 0x6

    const/4 v15, 0x4

    const/16 v16, 0xa

    if-eq v3, v5, :cond_a

    if-eq v3, v15, :cond_7

    if-eq v3, v14, :cond_4

    if-eq v3, v11, :cond_1

    if-eq v3, v10, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    sget v0, Lu0/b;->s3:I

    if-nez v0, :cond_2

    goto/16 :goto_7

    .line 5
    :cond_2
    sget v0, Lu0/b;->t3:I

    div-int/lit16 v3, v0, 0xe10

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 6
    rem-int/lit16 v3, v0, 0xe10

    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    .line 7
    rem-int/lit16 v3, v0, 0xe10

    div-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    .line 8
    rem-int/lit8 v3, v0, 0x3c

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    .line 9
    rem-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    .line 10
    sget v0, Lu0/b;->r3:I

    rem-int/lit16 v0, v0, 0x2710

    .line 11
    div-int/lit16 v3, v0, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    .line 12
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    rem-int/lit16 v4, v0, 0x3e8

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    div-int/lit8 v4, v4, 0xa

    :goto_1
    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    .line 13
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    goto/16 :goto_7

    .line 14
    :cond_4
    sget v3, Ld1/d;->c:I

    if-ne v3, v5, :cond_10

    .line 15
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_5

    .line 16
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 17
    :cond_5
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    const/16 v3, 0x2d

    aput v3, v1, v13

    .line 18
    sget v3, Ld1/d;->d:I

    div-int/lit8 v3, v3, 0x64

    .line 19
    div-int/lit16 v4, v3, 0x2710

    if-lez v4, :cond_6

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 20
    :cond_6
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 21
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    const/16 v4, 0x2e

    aput v4, v1, v10

    .line 22
    rem-int/lit8 v4, v3, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v16

    .line 23
    rem-int/lit8 v3, v3, 0xa

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v7

    const/16 v3, 0xc

    const/16 v4, 0x4d

    aput v4, v1, v3

    aput v8, v1, v0

    const/16 v0, 0xe

    aput v6, v1, v0

    goto/16 :goto_7

    .line 24
    :cond_7
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_8

    goto/16 :goto_7

    :cond_8
    const/16 v3, 0x54

    aput v3, v1, v9

    .line 25
    sget v3, Lo0/e;->B:I

    rem-int/lit16 v3, v3, 0x2710

    .line 26
    div-int/lit16 v5, v3, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v15

    .line 27
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    rem-int/lit16 v6, v3, 0x3e8

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    div-int/lit8 v6, v6, 0xa

    :goto_2
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v13

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 28
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 29
    sget v3, Lo0/e;->r:I

    div-int/lit8 v5, v3, 0x3c

    .line 30
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v11

    .line 31
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v10

    .line 32
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v7

    .line 33
    rem-int/lit8 v3, v3, 0x3c

    const/16 v4, 0xc

    .line 34
    div-int/lit8 v5, v3, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v4

    .line 35
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v0

    goto/16 :goto_7

    .line 36
    :cond_a
    sget v0, Lw0/d;->h:I

    const/high16 v3, 0x10000

    sub-int v17, v0, v3

    if-eqz v17, :cond_e

    sub-int v2, v0, v3

    if-eq v5, v2, :cond_e

    const/4 v2, 0x2

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_b

    goto :goto_5

    .line 37
    :cond_b
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x2710

    if-nez v2, :cond_c

    div-int/lit16 v2, v0, 0x2710

    add-int/2addr v2, v4

    goto :goto_3

    :cond_c
    div-int/lit16 v2, v0, 0x2710

    add-int/lit8 v2, v2, 0x30

    :goto_3
    aput v2, v1, v9

    .line 38
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    if-nez v2, :cond_d

    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v4

    goto :goto_4

    :cond_d
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x30

    :goto_4
    aput v2, v1, v15

    .line 39
    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    .line 40
    rem-int/lit8 v2, v0, 0x64

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    .line 41
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    const/16 v0, 0x4b

    aput v0, v1, v11

    aput v8, v1, v10

    aput v6, v1, v16

    goto :goto_7

    .line 42
    :cond_e
    :goto_5
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x2710

    if-nez v2, :cond_f

    div-int/lit16 v2, v0, 0x2710

    add-int/2addr v2, v4

    goto :goto_6

    :cond_f
    div-int/lit16 v2, v0, 0x2710

    add-int/lit8 v2, v2, 0x30

    :goto_6
    aput v2, v1, v9

    .line 43
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v15

    .line 44
    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    const/16 v2, 0x2e

    aput v2, v1, v14

    .line 45
    rem-int/lit8 v2, v0, 0x64

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 46
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    const/16 v0, 0x4d

    aput v0, v1, v10

    aput v8, v1, v16

    aput v6, v1, v7

    :cond_10
    :goto_7
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0xf

    :goto_8
    if-ge v3, v2, :cond_11

    add-int/lit8 v4, v3, 0x1

    .line 47
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v0, v4

    move v3, v4

    goto :goto_8

    .line 48
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

.method public static synthetic c3(Lmodule/canbus/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d;->H3()V

    return-void
.end method

.method public static synthetic d3(Lmodule/canbus/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/d;->e:I

    return p0
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->n:I

    return v0
.end method

.method public static synthetic f3(Lmodule/canbus/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d;->F3()V

    return-void
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->l:I

    return v0
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->o:I

    return v0
.end method

.method public static synthetic i3(Lmodule/canbus/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d;->G3()V

    return-void
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->p:I

    return v0
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->r:I

    return v0
.end method

.method public static synthetic l3(Lmodule/canbus/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d;->E3()V

    return-void
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->q:I

    return v0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->s:I

    return v0
.end method

.method public static synthetic o3(Lmodule/canbus/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/d;->g:I

    return p0
.end method

.method public static synthetic p3(Lmodule/canbus/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d;->C3()V

    return-void
.end method

.method public static synthetic q3(Lmodule/canbus/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/d;->g:I

    return p1
.end method

.method public static synthetic r3(Lmodule/canbus/d;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/d;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/d;->g:I

    return v0
.end method

.method public static synthetic s3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->i:I

    return v0
.end method

.method public static synthetic t3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/d;->i:I

    return p0
.end method

.method public static synthetic u3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/d;->t:[I

    return-object v0
.end method

.method public static synthetic v3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->h:I

    return v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->j:I

    return v0
.end method

.method public static synthetic x3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->m:I

    return v0
.end method

.method public static synthetic y3(Lmodule/canbus/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d;->D3()V

    return-void
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d;->k:I

    return v0
.end method


# virtual methods
.method public final B3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/d;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/d;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/d;->R2([I)V

    return-void
.end method

.method public final declared-synchronized C3()V
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
    sget v0, Lmodule/canbus/d;->s:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d;->A3(II)V
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

.method public final declared-synchronized D3()V
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
    sget v0, Lmodule/canbus/d;->m:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d;->A3(II)V
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

.method public final declared-synchronized E3()V
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
    sget v0, Lmodule/canbus/d;->r:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d;->A3(II)V
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

.method public final declared-synchronized F3()V
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
    sget v0, Lmodule/canbus/d;->n:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d;->A3(II)V
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

.method public final declared-synchronized G3()V
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
    sget v0, Lmodule/canbus/d;->o:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d;->A3(II)V
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

.method public final declared-synchronized H3()V
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
    sget v1, Lmodule/canbus/d;->i:I

    invoke-static {v0, v1}, Lmodule/canbus/d;->A3(II)V
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

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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
    sget-object p1, Lmodule/canbus/d;->u:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/d;->m:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/d;->n:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/d;->o:I

    :cond_0
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
    sget-object p1, Lmodule/canbus/d;->v:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/d;->r:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/d;->s:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 4

    .line 1
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->b:I

    .line 6
    iput v1, v0, Lk0/mt;->c:I

    .line 7
    iput v1, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 9
    iput v2, v0, Lk0/mt;->f:I

    .line 10
    iput v2, v0, Lk0/mt;->g:I

    .line 11
    iput v2, v0, Lk0/mt;->b:I

    .line 12
    iput v2, v0, Lk0/mt;->c:I

    .line 13
    iput v2, v0, Lk0/mt;->d:I

    .line 14
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lmodule/canbus/d;->init()V

    .line 16
    iget-object v0, p0, Lmodule/canbus/d;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p0}, Lmodule/canbus/d;->B3()V

    .line 18
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    :cond_1
    :goto_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lmodule/canbus/d;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x21
        0x9
    .end array-data
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, -0x5a

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq p3, v0, :cond_c

    const/16 v0, 0x31

    if-eq p3, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x6

    .line 3
    aget-byte v0, p1, v0

    add-int/lit8 v3, p2, 0x7

    .line 4
    aget-byte v3, p1, v3

    const/16 v4, 0x10

    const/4 v5, 0x1

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v5

    aput v7, v6, v2

    .line 5
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v2

    const/16 v6, 0xa

    .line 6
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    shr-int/lit8 v7, p3, 0x3

    and-int/2addr v7, v5

    aput v7, v4, v2

    const/16 v7, 0xd

    .line 7
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v8, v5, [I

    shr-int/lit8 v9, p3, 0x2

    and-int/2addr v9, v5

    aput v9, v8, v2

    .line 8
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v8, v5, [I

    shr-int/2addr p3, v2

    const/4 v9, 0x3

    and-int/2addr p3, v9

    aput p3, v8, v2

    .line 9
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/4 p3, 0x5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v9, :cond_4

    if-eq v0, p3, :cond_3

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    move v0, v2

    move v1, v0

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_1
    move v1, v2

    move v0, v5

    move v8, v0

    goto :goto_1

    :cond_2
    move v0, v2

    move v8, v0

    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v2

    move v1, v5

    goto :goto_0

    :cond_4
    move v0, v2

    move v1, v0

    move v8, v5

    goto :goto_1

    :cond_5
    move v1, v2

    move v8, v1

    move v0, v5

    :goto_1
    const/16 v9, 0x12

    new-array v10, v5, [I

    aput v0, v10, v2

    .line 10
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v9, v5, [I

    aput v1, v9, v2

    .line 11
    invoke-static {v0, v9}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v5, [I

    aput v8, v1, v2

    .line 12
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v1, v5, [I

    aput v3, v1, v2

    .line 13
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x8

    .line 14
    aget-byte v1, p1, v0

    add-int/lit8 v3, p2, 0x9

    .line 15
    aget-byte v8, p1, v3

    const-string v9, "persist.fyt.reversetemp"

    .line 16
    invoke-static {v9, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 17
    aget-byte v1, p1, v3

    .line 18
    aget-byte v8, p1, v0

    :cond_6
    const/4 v0, -0x3

    const/4 v3, -0x1

    const/16 v9, 0x1b

    const/4 v10, -0x2

    if-ne v1, v10, :cond_7

    new-array v1, v5, [I

    aput v10, v1, v2

    .line 19
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    if-ne v1, v3, :cond_8

    new-array v1, v5, [I

    aput v0, v1, v2

    .line 20
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v11, v5, [I

    and-int/lit16 v1, v1, 0xff

    aput v1, v11, v2

    .line 21
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0x1c

    if-ne v8, v10, :cond_9

    new-array v0, v5, [I

    aput v10, v0, v2

    .line 22
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    if-ne v8, v3, :cond_a

    new-array v3, v5, [I

    aput v0, v3, v2

    .line 23
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v0, v5, [I

    and-int/lit16 v3, v8, 0xff

    aput v3, v0, v2

    .line 24
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 25
    :goto_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/2addr p2, v7

    .line 26
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x50

    if-lt p1, p2, :cond_b

    .line 27
    div-int/lit8 p2, p1, 0x2

    mul-int/2addr p2, v6

    rem-int/2addr p1, v4

    mul-int/2addr p1, p3

    add-int/2addr p2, p1

    add-int/lit16 p2, p2, -0x190

    add-int/lit16 p2, p2, 0x3e8

    goto :goto_4

    .line 28
    :cond_b
    div-int/lit8 p2, p1, 0x2

    mul-int/2addr p2, v6

    rem-int/2addr p1, v4

    mul-int/2addr p1, p3

    add-int/2addr p2, p1

    rsub-int p1, p2, 0x190

    rsub-int p2, p1, 0x3e8

    :goto_4
    const/16 p1, 0x258

    if-le p2, p1, :cond_d

    .line 29
    invoke-static {p2}, Lu0/d;->A3(I)V

    goto :goto_5

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

    add-int/lit8 v3, p2, 0x4

    .line 33
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 34
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x6

    .line 35
    aget-byte v5, p1, v5

    add-int/lit8 p2, p2, 0x7

    .line 36
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x2d

    .line 37
    invoke-static {p2, v2, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/d;->h:I

    and-int/lit16 p2, v3, 0xff

    const/16 p3, 0x1a

    .line 38
    invoke-static {p2, v1, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/d;->p:I

    and-int/lit16 p2, v0, 0xff

    .line 39
    invoke-static {p2, v1, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/d;->q:I

    and-int/lit16 p2, v4, 0xff

    .line 40
    invoke-static {p2, v1, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/d;->j:I

    and-int/lit16 p2, v5, 0xff

    .line 41
    invoke-static {p2, v1, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/d;->k:I

    and-int/lit16 p1, p1, 0xff

    .line 42
    invoke-static {p1, v1, p3}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/d;->l:I

    :cond_d
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/d;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/d;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    sget-object v0, Lmodule/canbus/d;->t:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/d;->i:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/d;->w:Lo1/f;

    new-instance v1, Lmodule/canbus/d$d;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d$d;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/d$d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d$d;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/d$d;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d$d;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/d$d;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d$d;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/d$d;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d$d;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lmodule/canbus/d$d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d$d;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
