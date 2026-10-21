.class public Ll0/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Runnable;

.field public static b:Ljava/lang/Runnable;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:Ljava/lang/Runnable;

.field public static m:I

.field public static n:Ljava/lang/Runnable;

.field public static o:Ljava/lang/Runnable;

.field public static p:Z

.field public static q:Z

.field public static r:I

.field public static s:Ljava/lang/Runnable;

.field public static t:I

.field public static u:Ljava/lang/Runnable;

.field public static v:I

.field public static w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll0/c0$a;

    invoke-direct {v0}, Ll0/c0$a;-><init>()V

    sput-object v0, Ll0/c0;->a:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Ll0/c0$b;

    invoke-direct {v0}, Ll0/c0$b;-><init>()V

    sput-object v0, Ll0/c0;->b:Ljava/lang/Runnable;

    const/16 v0, 0xf

    .line 3
    sput v0, Ll0/c0;->c:I

    sput v0, Ll0/c0;->d:I

    sput v0, Ll0/c0;->e:I

    sput v0, Ll0/c0;->f:I

    .line 4
    sput v0, Ll0/c0;->g:I

    sput v0, Ll0/c0;->h:I

    sput v0, Ll0/c0;->i:I

    sput v0, Ll0/c0;->j:I

    const/4 v0, 0x0

    .line 5
    sput v0, Ll0/c0;->k:I

    .line 6
    new-instance v1, Ll0/c0$c;

    invoke-direct {v1}, Ll0/c0$c;-><init>()V

    sput-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    .line 7
    sput v0, Ll0/c0;->m:I

    .line 8
    new-instance v1, Ll0/c0$d;

    invoke-direct {v1}, Ll0/c0$d;-><init>()V

    sput-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Ll0/c0$e;

    invoke-direct {v1}, Ll0/c0$e;-><init>()V

    sput-object v1, Ll0/c0;->o:Ljava/lang/Runnable;

    .line 10
    sput-boolean v0, Ll0/c0;->p:Z

    .line 11
    sput-boolean v0, Ll0/c0;->q:Z

    .line 12
    sput v0, Ll0/c0;->r:I

    .line 13
    new-instance v1, Ll0/c0$f;

    invoke-direct {v1}, Ll0/c0$f;-><init>()V

    sput-object v1, Ll0/c0;->s:Ljava/lang/Runnable;

    .line 14
    sput v0, Ll0/c0;->t:I

    .line 15
    new-instance v1, Ll0/c0$g;

    invoke-direct {v1}, Ll0/c0$g;-><init>()V

    sput-object v1, Ll0/c0;->u:Ljava/lang/Runnable;

    .line 16
    sput v0, Ll0/c0;->v:I

    .line 17
    new-instance v0, Ll0/c0$h;

    invoke-direct {v0}, Ll0/c0$h;-><init>()V

    sput-object v0, Ll0/c0;->w:Ljava/lang/Runnable;

    return-void
.end method

.method public static A()V
    .locals 14

    const/16 v0, 0xe

    new-array v1, v0, [I

    const/16 v2, 0x83

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xc

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 1
    invoke-static {v1}, Ll0/c0;->b0([I)V

    .line 2
    sget v2, Lu0/b;->D:I

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/16 v10, 0xa

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    const/16 v11, 0x3e7

    const/4 v12, 0x5

    const/16 v13, 0x39

    if-eq v2, v4, :cond_2

    if-eq v2, v7, :cond_0

    if-eq v2, v10, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    sget v2, Lu0/b;->r3:I

    if-gt v2, v11, :cond_1

    .line 4
    div-int/lit8 v4, v2, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 5
    rem-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 6
    rem-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v8

    goto :goto_0

    :cond_1
    aput v13, v1, v12

    aput v13, v1, v9

    aput v13, v1, v8

    .line 7
    :goto_0
    sget v2, Lu0/b;->t3:I

    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    div-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v7

    .line 8
    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v6

    .line 9
    rem-int/lit16 v4, v2, 0xe10

    rem-int/lit8 v4, v4, 0x3c

    div-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 10
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    rem-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v5

    goto/16 :goto_4

    .line 11
    :cond_2
    sget v2, Lo0/e;->B:I

    if-ge v2, v11, :cond_3

    .line 12
    div-int/lit8 v4, v2, 0x64

    div-int/lit8 v4, v2, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 13
    rem-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v10

    rem-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 14
    rem-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v8

    goto :goto_1

    :cond_3
    aput v13, v1, v12

    aput v13, v1, v9

    aput v13, v1, v8

    .line 15
    :goto_1
    sget v2, Lo0/e;->r:I

    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    div-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v7

    .line 16
    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v6

    .line 17
    rem-int/lit16 v4, v2, 0xe10

    rem-int/lit8 v4, v4, 0x3c

    div-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 18
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    rem-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v5

    goto :goto_4

    .line 19
    :cond_4
    sget v2, Lw0/d;->h:I

    const/high16 v4, 0x10000

    const/16 v11, 0x20

    if-lt v2, v4, :cond_6

    const v4, 0x10002

    if-gt v2, v4, :cond_6

    .line 20
    sget v2, Lw0/d;->i:I

    div-int/lit16 v4, v2, 0x2710

    if-nez v4, :cond_5

    div-int/lit16 v4, v2, 0x2710

    add-int/2addr v4, v11

    goto :goto_2

    :cond_5
    div-int/lit16 v4, v2, 0x2710

    add-int/lit8 v4, v4, 0x30

    :goto_2
    aput v4, v1, v9

    .line 21
    rem-int/lit16 v4, v2, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 22
    rem-int/lit16 v4, v2, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v7

    const/16 v4, 0x2e

    aput v4, v1, v6

    .line 23
    rem-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 24
    rem-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v5

    goto :goto_4

    .line 25
    :cond_6
    sget v2, Lw0/d;->i:I

    rem-int/lit16 v4, v2, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    if-nez v4, :cond_7

    rem-int/lit16 v4, v2, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v11

    goto :goto_3

    :cond_7
    rem-int/lit16 v4, v2, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    :goto_3
    aput v4, v1, v9

    .line 26
    rem-int/lit16 v4, v2, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 27
    rem-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v7

    .line 28
    rem-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v6

    aput v11, v1, v10

    :goto_4
    const/16 v2, 0xf

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_5
    if-ge v3, v0, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 29
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_5

    .line 30
    :cond_8
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static A0()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    .line 3
    :cond_0
    aget v2, v1, v5

    or-int/2addr v2, v3

    aput v2, v1, v5

    .line 4
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static A1(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static B()V
    .locals 15

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    invoke-static {v1}, Ll0/c0;->c0([I)V

    .line 2
    sget v2, Lu0/b;->D:I

    const/4 v4, 0x6

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/16 v8, 0x12

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x3

    if-eq v2, v11, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v10, :cond_1

    if-eq v2, v9, :cond_0

    if-eq v2, v5, :cond_0

    goto :goto_1

    :cond_0
    aput v8, v1, v12

    aput v3, v1, v10

    aput v3, v1, v7

    goto :goto_1

    :cond_1
    aput v8, v1, v12

    aput v3, v1, v10

    aput v3, v1, v7

    goto :goto_1

    :cond_2
    aput v8, v1, v12

    aput v3, v1, v10

    aput v3, v1, v7

    goto :goto_1

    .line 3
    :cond_3
    sget v2, Lw0/d;->i:I

    .line 4
    sget v13, Lw0/d;->h:I

    const/high16 v14, 0x10000

    if-ne v13, v14, :cond_4

    aput v11, v1, v12

    goto :goto_0

    :cond_4
    const v14, 0x10001

    if-ne v13, v14, :cond_5

    aput v6, v1, v12

    goto :goto_0

    :cond_5
    const v14, 0x10002

    if-ne v13, v14, :cond_6

    aput v12, v1, v12

    goto :goto_0

    :cond_6
    if-nez v13, :cond_7

    const/16 v8, 0x11

    aput v8, v1, v12

    goto :goto_0

    :cond_7
    if-ne v13, v11, :cond_8

    aput v8, v1, v12

    :cond_8
    :goto_0
    and-int/lit16 v8, v2, 0xff

    aput v8, v1, v10

    shr-int/2addr v2, v9

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 5
    sget v2, Lw0/d;->j:I

    aput v2, v1, v4

    .line 6
    :goto_1
    sget v2, Lu0/b;->D:I

    if-eq v2, v6, :cond_f

    const/4 v6, 0x7

    const/16 v7, 0xe3

    if-ne v2, v11, :cond_a

    new-array v0, v9, [I

    aput v7, v0, v3

    :goto_2
    if-ge v3, v6, :cond_9

    add-int/lit8 v2, v3, 0x1

    .line 7
    aget v3, v1, v3

    aput v3, v0, v2

    move v3, v2

    goto :goto_2

    .line 8
    :cond_9
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_6

    :cond_a
    if-eq v2, v12, :cond_d

    if-eq v2, v10, :cond_d

    if-eq v2, v9, :cond_d

    if-eq v2, v5, :cond_d

    if-ne v2, v0, :cond_b

    goto :goto_4

    :cond_b
    new-array v0, v10, [I

    aput v7, v0, v3

    :goto_3
    if-ge v3, v12, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 9
    aget v3, v1, v3

    aput v3, v0, v2

    move v3, v2

    goto :goto_3

    .line 10
    :cond_c
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_6

    :cond_d
    :goto_4
    new-array v0, v6, [I

    aput v7, v0, v3

    :goto_5
    if-ge v3, v4, :cond_e

    add-int/lit8 v2, v3, 0x1

    .line 11
    aget v3, v1, v3

    aput v3, v0, v2

    move v3, v2

    goto :goto_5

    .line 12
    :cond_e
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_f
    :goto_6
    return-void
.end method

.method public static B0()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    .line 3
    :cond_0
    aget v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v5

    .line 4
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static B1(I)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    const/16 p0, 0x9

    :cond_1
    :goto_0
    return p0
.end method

.method public static C()V
    .locals 11

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->d0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    aput v3, v1, v6

    goto :goto_2

    :pswitch_2
    aput v3, v1, v6

    goto :goto_2

    :pswitch_3
    aput v2, v1, v6

    .line 3
    sget v5, Lw0/d;->j:I

    .line 4
    sget v7, Lw0/d;->h:I

    const/4 v8, 0x4

    const/high16 v9, 0x10000

    if-ne v7, v9, :cond_1

    if-lt v5, v9, :cond_0

    sub-int/2addr v5, v9

    :cond_0
    aput v2, v1, v8

    goto :goto_0

    :cond_1
    const v10, 0x10001

    if-ne v7, v10, :cond_3

    if-lt v5, v9, :cond_2

    sub-int/2addr v5, v9

    :cond_2
    const/4 v2, 0x2

    aput v2, v1, v8

    goto :goto_0

    :cond_3
    const v10, 0x10002

    if-ne v7, v10, :cond_5

    if-lt v5, v9, :cond_4

    sub-int/2addr v5, v9

    :cond_4
    aput v6, v1, v8

    goto :goto_0

    :cond_5
    if-nez v7, :cond_6

    const/16 v2, 0x11

    aput v2, v1, v8

    goto :goto_0

    :cond_6
    if-ne v7, v2, :cond_7

    const/16 v2, 0x12

    aput v2, v1, v8

    :cond_7
    :goto_0
    const/4 v2, 0x5

    .line 5
    sget v6, Lw0/d;->i:I

    and-int/lit16 v7, v6, 0xff

    aput v7, v1, v2

    shr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v6, 0x6

    aput v2, v1, v6

    .line 6
    rem-int/lit8 v2, v5, 0x6

    const/4 v7, 0x7

    if-nez v2, :cond_8

    if-eqz v5, :cond_8

    aput v6, v1, v7

    goto :goto_1

    :cond_8
    aput v2, v1, v7

    :goto_1
    aput v3, v1, v4

    const/16 v2, 0x9

    aput v3, v1, v2

    goto :goto_2

    :pswitch_4
    aput v3, v1, v6

    :goto_2
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 8
    :cond_9
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static C0()V
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/16 v2, 0x84

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x5

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    const/16 v5, 0xd

    aput v5, v1, v2

    .line 1
    sget v2, Ly0/f;->C0:I

    const/4 v5, 0x3

    aput v2, v1, v5

    .line 2
    sget v2, Ly0/f;->i:I

    if-eq v2, v4, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    .line 3
    :cond_0
    aget v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v5

    :cond_1
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static C1(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public static D()V
    .locals 10

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->e0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    if-eq v5, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    aput v2, v1, v5

    .line 3
    sget v5, Lw0/d;->j:I

    .line 4
    sget v6, Lw0/d;->h:I

    const/4 v7, 0x4

    const/high16 v8, 0x10000

    if-ne v6, v8, :cond_2

    if-lt v5, v8, :cond_1

    sub-int/2addr v5, v8

    :cond_1
    aput v2, v1, v7

    goto :goto_0

    :cond_2
    const v9, 0x10001

    if-ne v6, v9, :cond_4

    if-lt v5, v8, :cond_3

    sub-int/2addr v5, v8

    :cond_3
    const/4 v2, 0x2

    aput v2, v1, v7

    goto :goto_0

    :cond_4
    const v9, 0x10002

    if-ne v6, v9, :cond_6

    if-lt v5, v8, :cond_5

    sub-int/2addr v5, v8

    :cond_5
    aput v3, v1, v7

    goto :goto_0

    :cond_6
    if-nez v6, :cond_7

    const/16 v2, 0x11

    aput v2, v1, v7

    goto :goto_0

    :cond_7
    if-ne v6, v2, :cond_8

    const/16 v2, 0x12

    aput v2, v1, v7

    :cond_8
    :goto_0
    const/4 v2, 0x5

    .line 5
    sget v6, Lw0/d;->i:I

    and-int/lit16 v7, v6, 0xff

    aput v7, v1, v2

    shr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x6

    aput v2, v1, v4

    .line 6
    rem-int/lit8 v2, v5, 0x6

    const/4 v6, 0x7

    if-nez v2, :cond_9

    if-eqz v5, :cond_9

    aput v4, v1, v6

    goto :goto_1

    :cond_9
    aput v2, v1, v6

    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 8
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static D0()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0x86

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v2, Ly0/f;->C0:I

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v4, v2, 0x80

    const/4 v5, 0x2

    aput v4, v1, v5

    const/16 v4, 0x24

    if-le v2, v4, :cond_0

    const/16 v2, 0xa4

    aput v2, v1, v5

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 2
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static D1(II)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    if-nez p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    .line 1
    div-int/2addr p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static E()V
    .locals 12

    .line 1
    invoke-static {}, Ll0/c0;->Q()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xc3

    const/16 v2, 0xe3

    const/16 v3, 0x9

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_1
    new-array v0, v5, [I

    aput v1, v0, v11

    aput v8, v0, v10

    .line 4
    sget v1, Lu0/b;->s3:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v9

    .line 5
    sget v1, Lu0/b;->r3:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v7

    .line 6
    sget v1, Lu0/b;->t3:I

    rem-int/lit16 v7, v1, 0xe10

    div-int/lit8 v7, v7, 0x3c

    aput v7, v0, v8

    .line 7
    rem-int/lit16 v1, v1, 0xe10

    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v4

    aput v11, v0, v6

    const/4 v1, 0x5

    aput v11, v0, v1

    new-array v1, v3, [I

    aput v2, v1, v11

    :goto_0
    if-ge v11, v5, :cond_0

    add-int/lit8 v2, v11, 0x1

    .line 8
    aget v3, v0, v11

    aput v3, v1, v2

    move v11, v2

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_2
    new-array v0, v5, [I

    aput v1, v0, v11

    aput v8, v0, v10

    .line 10
    sget v1, Lo0/e;->B:I

    aput v1, v0, v9

    .line 11
    sget v1, Lo0/e;->C:I

    aput v1, v0, v7

    .line 12
    sget v1, Lo0/e;->r:I

    rem-int/lit16 v6, v1, 0xe10

    div-int/lit8 v6, v6, 0x3c

    aput v6, v0, v8

    .line 13
    rem-int/lit16 v1, v1, 0xe10

    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v4

    new-array v1, v3, [I

    aput v2, v1, v11

    :goto_1
    if-ge v11, v5, :cond_1

    add-int/lit8 v2, v11, 0x1

    .line 14
    aget v3, v0, v11

    aput v3, v1, v2

    move v11, v2

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :pswitch_3
    new-array v0, v8, [I

    .line 16
    sget v1, Lw0/d;->j:I

    const/16 v1, 0xc2

    aput v1, v0, v11

    aput v6, v0, v10

    .line 17
    sget v1, Lw0/d;->h:I

    if-eqz v1, :cond_3

    if-eq v1, v10, :cond_2

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_4
    aput v7, v0, v9

    goto :goto_2

    :pswitch_5
    aput v9, v0, v9

    goto :goto_2

    :pswitch_6
    aput v10, v0, v9

    goto :goto_2

    :cond_2
    const/16 v1, 0x12

    aput v1, v0, v9

    goto :goto_2

    :cond_3
    const/16 v1, 0x11

    aput v1, v0, v9

    .line 18
    :goto_2
    sget v1, Lw0/d;->i:I

    and-int/lit16 v3, v1, 0xff

    aput v3, v0, v7

    shr-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    new-array v1, v4, [I

    aput v2, v1, v11

    :goto_3
    if-ge v11, v8, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 19
    aget v3, v0, v11

    aput v3, v1, v2

    move v11, v2

    goto :goto_3

    .line 20
    :cond_4
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_4
    :pswitch_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static E0(I)I
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
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public static E1(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-ge p0, v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/16 v0, 0x2d

    if-ge p0, v0, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_4

    const/4 p0, 0x6

    goto :goto_0

    :cond_4
    const/16 v0, 0x4b

    if-ge p0, v0, :cond_5

    const/4 p0, 0x7

    goto :goto_0

    :cond_5
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_6

    const/16 p0, 0x8

    goto :goto_0

    :cond_6
    const/16 v0, 0x69

    if-ge p0, v0, :cond_7

    const/16 p0, 0x9

    goto :goto_0

    :cond_7
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public static F()V
    .locals 19

    const/16 v0, 0x12

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x12

    const/16 v5, 0x20

    if-ge v3, v4, :cond_0

    .line 1
    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xc0

    aput v3, v1, v2

    const/16 v3, 0x10

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 2
    sget v3, Lu0/b;->D:I

    const/16 v6, 0x41

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v10, 0xd

    const/4 v11, 0x5

    const/16 v12, 0x9

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/16 v15, 0x8

    const/16 v16, 0x4d

    const/16 v17, 0x4

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/16 v9, 0xa

    if-eq v3, v4, :cond_6

    if-eq v3, v2, :cond_5

    if-eq v3, v0, :cond_4

    if-eq v3, v11, :cond_3

    if-eq v3, v15, :cond_2

    if-eq v3, v9, :cond_2

    if-eq v3, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0x43

    aput v3, v1, v2

    const/16 v2, 0x44

    aput v2, v1, v0

    goto/16 :goto_2

    :cond_2
    aput v16, v1, v2

    const/16 v2, 0x50

    aput v2, v1, v0

    const/16 v0, 0x33

    aput v0, v1, v17

    aput v5, v1, v11

    .line 3
    sget v0, Lu0/b;->r3:I

    div-int/lit16 v2, v0, 0x3e8

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    .line 4
    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    .line 5
    rem-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v15

    .line 6
    rem-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    const/16 v0, 0x2f

    aput v0, v1, v9

    .line 7
    sget v0, Lu0/b;->s3:I

    div-int/lit16 v2, v0, 0x3e8

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v8

    .line 8
    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v7

    .line 9
    rem-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    const/16 v2, 0xe

    .line 10
    rem-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v2

    goto/16 :goto_2

    :cond_3
    aput v6, v1, v2

    const/16 v2, 0x55

    aput v2, v1, v0

    const/16 v0, 0x58

    aput v0, v1, v17

    goto/16 :goto_2

    :cond_4
    const/16 v3, 0x42

    aput v3, v1, v2

    const/16 v2, 0x54

    aput v2, v1, v0

    aput v5, v1, v17

    aput v16, v1, v11

    const/16 v0, 0x75

    aput v0, v1, v14

    const/16 v0, 0x73

    aput v0, v1, v13

    const/16 v0, 0x69

    aput v0, v1, v15

    const/16 v0, 0x63

    aput v0, v1, v12

    goto/16 :goto_2

    :cond_5
    const/16 v3, 0x42

    aput v3, v1, v2

    const/16 v2, 0x54

    aput v2, v1, v0

    aput v5, v1, v17

    const/16 v0, 0x50

    aput v0, v1, v11

    const/16 v0, 0x68

    aput v0, v1, v14

    const/16 v0, 0x6f

    aput v0, v1, v13

    const/16 v0, 0x6e

    aput v0, v1, v15

    const/16 v0, 0x65

    aput v0, v1, v12

    goto/16 :goto_2

    .line 11
    :cond_6
    sget v3, Lw0/d;->h:I

    const/high16 v10, 0x10000

    const/16 v18, 0x46

    if-ne v3, v10, :cond_7

    aput v18, v1, v2

    aput v16, v1, v0

    const/16 v0, 0x31

    aput v0, v1, v17

    goto :goto_1

    :cond_7
    const v10, 0x10001

    if-ne v3, v10, :cond_8

    aput v18, v1, v2

    aput v16, v1, v0

    const/16 v0, 0x32

    aput v0, v1, v17

    goto :goto_1

    :cond_8
    const v10, 0x10002

    if-ne v3, v10, :cond_9

    aput v18, v1, v2

    aput v16, v1, v0

    const/16 v0, 0x33

    aput v0, v1, v17

    goto :goto_1

    :cond_9
    if-nez v3, :cond_a

    aput v6, v1, v2

    aput v16, v1, v0

    const/16 v0, 0x31

    aput v0, v1, v17

    goto :goto_1

    :cond_a
    if-ne v3, v4, :cond_b

    aput v6, v1, v2

    aput v16, v1, v0

    const/16 v0, 0x32

    aput v0, v1, v17

    :cond_b
    :goto_1
    aput v5, v1, v11

    const/high16 v0, 0x10000

    if-lt v3, v0, :cond_d

    const v0, 0x10002

    if-gt v3, v0, :cond_d

    .line 12
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x2710

    if-nez v2, :cond_c

    .line 13
    div-int/lit16 v2, v0, 0x3e8

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    .line 14
    div-int/lit8 v2, v0, 0x64

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    const/16 v2, 0x2e

    aput v2, v1, v15

    .line 15
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 16
    rem-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v9

    aput v16, v1, v8

    const/16 v0, 0x68

    aput v0, v1, v7

    const/16 v0, 0x7a

    const/16 v2, 0xd

    aput v0, v1, v2

    goto :goto_2

    .line 17
    :cond_c
    div-int/lit16 v2, v0, 0x2710

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    .line 18
    div-int/lit16 v2, v0, 0x3e8

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    .line 19
    div-int/lit8 v2, v0, 0x64

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v15

    const/16 v2, 0x2e

    aput v2, v1, v12

    .line 20
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    .line 21
    rem-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v8

    aput v16, v1, v7

    const/16 v0, 0x68

    const/16 v2, 0xd

    aput v0, v1, v2

    const/16 v0, 0xe

    const/16 v2, 0x7a

    aput v2, v1, v0

    goto :goto_2

    .line 22
    :cond_d
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x3e8

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    .line 23
    div-int/lit8 v2, v0, 0x64

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    .line 24
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v15

    .line 25
    rem-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    const/16 v0, 0x4b

    aput v0, v1, v9

    const/16 v0, 0x68

    aput v0, v1, v8

    const/16 v0, 0x7a

    aput v0, v1, v7

    :goto_2
    const/16 v0, 0x13

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    move v2, v3

    const/16 v3, 0x12

    :goto_3
    if-ge v2, v3, :cond_e

    add-int/lit8 v4, v2, 0x1

    .line 26
    aget v2, v1, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_3

    .line 27
    :cond_e
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static F0(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static F1(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x9

    .line 1
    div-int/2addr p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0xf

    :goto_1
    return p0
.end method

.method public static G()V
    .locals 5

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xc0

    aput v3, v1, v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 2
    invoke-static {v1}, Ll0/c0;->f0([I)V

    const/16 v3, 0xb

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_1
    if-ge v2, v0, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 3
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v3}, Lz/k;->s([I)V

    .line 5
    invoke-static {}, Ll0/c0;->r0()V

    return-void
.end method

.method public static G0(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :cond_1
    :goto_0
    return v1
.end method

.method public static G1(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static H()V
    .locals 13

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xc0

    aput v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    aput v4, v1, v3

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v5, v3, :cond_4

    const/16 v3, 0xd

    if-eq v5, v3, :cond_3

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_1

    packed-switch v5, :pswitch_data_0

    const/16 v3, 0xc

    aput v3, v1, v9

    goto/16 :goto_5

    :pswitch_0
    aput v7, v1, v9

    .line 3
    sget v3, Lu0/b;->r3:I

    aput v3, v1, v8

    goto/16 :goto_5

    :cond_1
    aput v0, v1, v9

    goto/16 :goto_5

    :cond_2
    :pswitch_1
    aput v9, v1, v9

    .line 4
    sget v3, Lo0/e;->C:I

    aput v3, v1, v8

    goto/16 :goto_5

    :cond_3
    aput v9, v1, v9

    goto/16 :goto_5

    :cond_4
    aput v3, v1, v9

    .line 5
    sget v5, Lw0/d;->h:I

    const v10, 0x10001

    const v11, 0x10002

    const/high16 v12, 0x10000

    if-ne v5, v12, :cond_5

    aput v2, v1, v8

    goto :goto_1

    :cond_5
    if-ne v5, v10, :cond_6

    aput v3, v1, v8

    goto :goto_1

    :cond_6
    if-ne v5, v11, :cond_7

    aput v9, v1, v8

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    if-ne v5, v3, :cond_9

    :cond_8
    const/16 v9, 0x10

    aput v9, v1, v8

    :cond_9
    :goto_1
    if-lt v5, v12, :cond_a

    if-gt v5, v11, :cond_a

    .line 6
    sget v5, Lw0/d;->i:I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v1, v6

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    goto :goto_2

    .line 7
    :cond_a
    sget v5, Lw0/d;->i:I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v1, v6

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    .line 8
    :goto_2
    sget v4, Lw0/d;->j:I

    .line 9
    rem-int/lit8 v5, v4, 0x6

    const/4 v6, 0x6

    if-nez v5, :cond_b

    if-eqz v4, :cond_b

    aput v6, v1, v6

    goto :goto_3

    :cond_b
    aput v5, v1, v6

    .line 10
    :goto_3
    sget v4, Lw0/d;->h:I

    const/16 v5, 0x7d0

    if-eq v4, v12, :cond_e

    if-eq v4, v10, :cond_e

    if-ne v4, v11, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v4, :cond_d

    if-ne v4, v3, :cond_f

    .line 11
    :cond_d
    sget v4, Lw0/d;->i:I

    if-le v4, v5, :cond_f

    goto :goto_6

    .line 12
    :cond_e
    :goto_4
    sget v4, Lw0/d;->i:I

    if-ge v4, v5, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    move v3, v2

    :goto_6
    new-array v4, v7, [I

    const/16 v5, 0xe3

    aput v5, v4, v2

    :goto_7
    if-ge v2, v0, :cond_10

    add-int/lit8 v5, v2, 0x1

    .line 13
    aget v2, v1, v2

    aput v2, v4, v5

    move v2, v5

    goto :goto_7

    :cond_10
    if-nez v3, :cond_11

    .line 14
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_11
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static H0(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static H1(I)I
    .locals 1

    const/16 v0, 0x19

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x4b

    if-ge p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    if-ge p0, v0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    if-ge p0, v0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/16 v0, 0x96

    if-ge p0, v0, :cond_5

    const/4 p0, 0x5

    goto :goto_0

    :cond_5
    const/16 v0, 0xaf

    if-ge p0, v0, :cond_6

    const/4 p0, 0x6

    goto :goto_0

    :cond_6
    const/16 v0, 0xc8

    if-ge p0, v0, :cond_7

    const/4 p0, 0x7

    goto :goto_0

    :cond_7
    const/16 v0, 0xe1

    if-ge p0, v0, :cond_8

    const/16 p0, 0x8

    goto :goto_0

    :cond_8
    const/16 v0, 0xfe

    if-ge p0, v0, :cond_9

    const/16 p0, 0x9

    goto :goto_0

    :cond_9
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public static I()V
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/16 v2, 0xc6

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0xe

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->Y([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eq v5, v2, :cond_2

    const/16 v2, 0x8

    if-eq v5, v7, :cond_1

    if-eq v5, v2, :cond_0

    const/16 v2, 0xa

    if-eq v5, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v6

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    goto :goto_0

    .line 4
    :cond_1
    sget v4, Lo0/e;->B:I

    and-int/lit16 v5, v4, 0xff

    aput v5, v1, v6

    shr-int/lit8 v2, v4, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    goto :goto_0

    .line 5
    :cond_2
    sget v2, Lw0/d;->j:I

    .line 6
    sget v5, Lw0/d;->h:I

    const/high16 v8, 0x10000

    if-lt v5, v8, :cond_3

    const v9, 0x10002

    if-gt v5, v9, :cond_3

    if-lt v2, v8, :cond_3

    sub-int/2addr v2, v8

    .line 7
    :cond_3
    sget v5, Lw0/d;->i:I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    or-int/lit16 v8, v8, 0x80

    aput v8, v1, v6

    and-int/lit16 v6, v5, 0xff

    aput v6, v1, v7

    const/16 v6, 0xb

    aput v3, v1, v6

    const/16 v6, 0xc

    aput v2, v1, v6

    const/16 v2, 0xd

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v2

    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v4

    :goto_0
    const/16 v2, 0x11

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 8
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static I0(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static I1(I)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public static J()V
    .locals 0

    .line 1
    invoke-static {}, Ll0/c0;->h0()V

    return-void
.end method

.method public static J0(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static J1(I)I
    .locals 2

    const/16 v0, 0xa

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static K()V
    .locals 13

    .line 1
    invoke-static {}, Ll0/c0;->j0()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    const/16 v2, 0xe3

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v0, v8, :cond_a

    if-eq v0, v9, :cond_4

    const/16 v10, 0xc3

    if-eq v0, v6, :cond_2

    if-eq v0, v1, :cond_0

    const/16 v11, 0xa

    if-eq v0, v11, :cond_0

    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_8

    :cond_0
    new-array v0, v4, [I

    aput v10, v0, v7

    aput v6, v0, v8

    .line 4
    sget v6, Lu0/b;->r3:I

    and-int/lit16 v8, v6, 0xff

    aput v8, v0, v9

    shr-int/lit8 v1, v6, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    new-array v1, v3, [I

    aput v2, v1, v7

    :goto_0
    if-ge v7, v4, :cond_1

    add-int/lit8 v2, v7, 0x1

    .line 5
    aget v3, v0, v7

    aput v3, v1, v2

    move v7, v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :cond_2
    new-array v0, v4, [I

    aput v10, v0, v7

    aput v6, v0, v8

    .line 7
    sget v1, Lo0/e;->B:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v9

    .line 8
    sget v1, Lo0/e;->C:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    new-array v1, v3, [I

    aput v2, v1, v7

    :goto_1
    if-ge v7, v4, :cond_3

    add-int/lit8 v2, v7, 0x1

    .line 9
    aget v3, v0, v7

    aput v3, v1, v2

    move v7, v2

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :cond_4
    new-array v0, v5, [I

    const/16 v1, 0xc5

    aput v1, v0, v7

    aput v8, v0, v8

    .line 11
    sget v1, Lh0/c;->E:I

    if-eqz v1, :cond_8

    if-eq v1, v9, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v6, :cond_5

    goto :goto_2

    :cond_5
    aput v8, v0, v9

    goto :goto_2

    :cond_6
    aput v9, v0, v9

    goto :goto_2

    :cond_7
    aput v5, v0, v9

    goto :goto_2

    :cond_8
    aput v7, v0, v9

    :goto_2
    new-array v1, v6, [I

    aput v2, v1, v7

    :goto_3
    if-ge v7, v5, :cond_9

    add-int/lit8 v2, v7, 0x1

    .line 12
    aget v3, v0, v7

    aput v3, v1, v2

    move v7, v2

    goto :goto_3

    .line 13
    :cond_9
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_8

    :cond_a
    new-array v0, v4, [I

    .line 14
    sget v10, Lw0/d;->j:I

    const/16 v11, 0xc2

    aput v11, v0, v7

    aput v6, v0, v8

    .line 15
    sget v11, Lw0/d;->h:I

    if-eqz v11, :cond_c

    if-eq v11, v8, :cond_b

    const/high16 v12, 0x10000

    packed-switch v11, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    aput v5, v0, v9

    if-lt v10, v12, :cond_d

    goto :goto_4

    :pswitch_1
    aput v9, v0, v9

    if-lt v10, v12, :cond_d

    goto :goto_4

    :pswitch_2
    aput v8, v0, v9

    if-lt v10, v12, :cond_d

    :goto_4
    sub-int/2addr v10, v12

    goto :goto_5

    :cond_b
    const/16 v8, 0x12

    aput v8, v0, v9

    goto :goto_5

    :cond_c
    const/16 v8, 0x11

    aput v8, v0, v9

    .line 16
    :cond_d
    :goto_5
    sget v8, Lw0/d;->i:I

    and-int/lit16 v9, v8, 0xff

    aput v9, v0, v5

    shr-int/lit8 v1, v8, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    .line 17
    rem-int/lit8 v1, v10, 0x6

    const/4 v5, 0x5

    if-nez v1, :cond_e

    if-eqz v10, :cond_e

    aput v4, v0, v5

    goto :goto_6

    :cond_e
    aput v1, v0, v5

    :goto_6
    new-array v1, v3, [I

    aput v2, v1, v7

    :goto_7
    if-ge v7, v4, :cond_f

    add-int/lit8 v2, v7, 0x1

    .line 18
    aget v3, v0, v7

    aput v3, v1, v2

    move v7, v2

    goto :goto_7

    .line 19
    :cond_f
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc3
        0x4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static K0(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    :cond_3
    :goto_0
    return v1
.end method

.method public static K1(I)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public static L()V
    .locals 12

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->i0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/4 v8, 0x4

    if-eq v5, v2, :cond_0

    if-eq v5, v8, :cond_a

    aput v7, v1, v6

    goto :goto_1

    .line 3
    :cond_0
    sget v5, Lw0/d;->j:I

    .line 4
    sget v9, Lw0/d;->h:I

    const/high16 v10, 0x10000

    if-ne v9, v10, :cond_2

    if-lt v5, v10, :cond_1

    sub-int/2addr v5, v10

    :cond_1
    aput v2, v1, v8

    goto :goto_0

    :cond_2
    const v11, 0x10001

    if-ne v9, v11, :cond_4

    if-lt v5, v10, :cond_3

    sub-int/2addr v5, v10

    :cond_3
    aput v6, v1, v8

    goto :goto_0

    :cond_4
    const v6, 0x10002

    if-ne v9, v6, :cond_6

    if-lt v5, v10, :cond_5

    sub-int/2addr v5, v10

    :cond_5
    const/4 v2, 0x3

    aput v2, v1, v8

    goto :goto_0

    :cond_6
    if-nez v9, :cond_7

    const/16 v2, 0x11

    aput v2, v1, v8

    goto :goto_0

    :cond_7
    if-ne v9, v2, :cond_8

    const/16 v2, 0x12

    aput v2, v1, v8

    :cond_8
    :goto_0
    const/4 v2, 0x5

    .line 5
    sget v6, Lw0/d;->i:I

    and-int/lit16 v8, v6, 0xff

    aput v8, v1, v2

    shr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x6

    aput v2, v1, v4

    .line 6
    rem-int/lit8 v2, v5, 0x6

    if-nez v2, :cond_9

    if-eqz v5, :cond_9

    aput v4, v1, v7

    goto :goto_1

    :cond_9
    aput v2, v1, v7

    :cond_a
    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_b

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 8
    :cond_b
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static L0(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xa

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

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

.method public static L1(I)I
    .locals 1

    .line 1
    rem-int/lit8 v0, p0, 0x64

    div-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    rem-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v0

    return p0
.end method

.method public static M()V
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xa

    const/16 v7, 0x13

    const/4 v8, 0x5

    const/16 v9, 0x8

    const/4 v10, 0x3

    if-eq v5, v6, :cond_3

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    const/4 v6, 0x7

    const/16 v11, 0x30

    packed-switch v5, :pswitch_data_0

    aput v0, v1, v4

    aput v11, v1, v10

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x6

    aput v2, v1, v4

    const/16 v2, 0x12

    aput v2, v1, v10

    goto :goto_0

    :pswitch_1
    aput v6, v1, v4

    aput v11, v1, v10

    goto :goto_0

    :pswitch_2
    aput v6, v1, v4

    aput v11, v1, v10

    goto :goto_0

    .line 2
    :pswitch_3
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_0

    aput v4, v1, v4

    const/16 v2, 0x10

    aput v2, v1, v10

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    if-ne v5, v4, :cond_1

    aput v9, v1, v4

    aput v2, v1, v10

    goto :goto_0

    :cond_1
    if-ne v5, v10, :cond_4

    aput v9, v1, v4

    aput v2, v1, v10

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xb

    aput v2, v1, v4

    aput v7, v1, v10

    goto :goto_0

    :pswitch_5
    aput v8, v1, v4

    const/16 v2, 0x40

    aput v2, v1, v10

    goto :goto_0

    :pswitch_6
    aput v2, v1, v4

    aput v2, v1, v10

    goto :goto_0

    :cond_2
    const/16 v2, 0xc

    aput v2, v1, v4

    const/16 v2, 0x22

    aput v2, v1, v10

    goto :goto_0

    :cond_3
    :pswitch_7
    aput v9, v1, v4

    aput v7, v1, v10

    :cond_4
    :goto_0
    new-array v2, v8, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static M0(I)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static M1()Z
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0x30118

    if-eq v0, v1, :cond_0

    const v1, 0x3800a0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static N()V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x9

    const/4 v7, 0x5

    const/16 v8, 0x30

    const/4 v9, 0x3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/16 v2, 0xc

    aput v2, v1, v4

    aput v8, v1, v9

    goto :goto_0

    :pswitch_1
    aput v6, v1, v4

    const/16 v2, 0x11

    aput v2, v1, v9

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x6

    aput v2, v1, v4

    const/16 v2, 0x12

    aput v2, v1, v9

    goto :goto_0

    :pswitch_3
    aput v9, v1, v4

    aput v8, v1, v9

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x7

    aput v2, v1, v4

    aput v8, v1, v9

    goto :goto_0

    .line 2
    :pswitch_5
    sget v5, Lo0/e;->H:I

    const/16 v8, 0x10

    if-ne v5, v2, :cond_0

    aput v4, v1, v4

    aput v8, v1, v9

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    aput v6, v1, v4

    aput v8, v1, v9

    goto :goto_0

    :cond_1
    if-ne v5, v9, :cond_2

    const/16 v2, 0x8

    aput v2, v1, v4

    aput v8, v1, v9

    goto :goto_0

    :pswitch_6
    const/16 v2, 0xb

    aput v2, v1, v4

    aput v8, v1, v9

    goto :goto_0

    :pswitch_7
    aput v7, v1, v4

    const/16 v2, 0x40

    aput v2, v1, v9

    goto :goto_0

    :pswitch_8
    aput v2, v1, v4

    aput v2, v1, v9

    goto :goto_0

    :pswitch_9
    aput v3, v1, v4

    aput v8, v1, v9

    :cond_2
    :goto_0
    new-array v2, v7, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

.method public static N0(I)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public static N1(III)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Ll0/c0;->p:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    if-nez p1, :cond_1

    .line 2
    sget-object v3, Ll0/c0;->s:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 3
    sput v0, Ll0/c0;->r:I

    .line 4
    sput v1, Ll0/c0;->t:I

    .line 5
    sput v1, Ll0/c0;->v:I

    .line 6
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4, v2}, Lu0/i;->g4(IZ)V

    goto :goto_0

    .line 8
    :cond_1
    sget v3, Ll0/c0;->r:I

    if-ne v3, v0, :cond_2

    .line 9
    sget-object v3, Ll0/c0;->s:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    .line 10
    sget-object v3, Ll0/c0;->u:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 11
    sput v0, Ll0/c0;->t:I

    .line 12
    sput v1, Ll0/c0;->r:I

    .line 13
    sput v1, Ll0/c0;->v:I

    .line 14
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v3, v4, v2}, Lu0/i;->g4(IZ)V

    goto :goto_1

    .line 16
    :cond_3
    sget v3, Ll0/c0;->t:I

    if-ne v3, v0, :cond_4

    .line 17
    sget-object v3, Ll0/c0;->u:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    if-ne p1, v2, :cond_5

    if-eq p0, v2, :cond_6

    :cond_5
    if-ne p2, v2, :cond_7

    .line 18
    :cond_6
    sget-object p2, Ll0/c0;->w:Ljava/lang/Runnable;

    invoke-static {p2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 19
    sput v0, Ll0/c0;->v:I

    .line 20
    sput v1, Ll0/c0;->r:I

    .line 21
    sput v1, Ll0/c0;->t:I

    .line 22
    invoke-static {}, Lk0/qt;->k0()Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x8b

    new-array v0, v2, [I

    aput v2, v0, v1

    .line 23
    invoke-static {p2, v0}, Lu0/d;->I3(I[I)V

    goto :goto_2

    .line 24
    :cond_7
    sget p2, Ll0/c0;->v:I

    if-ne p2, v0, :cond_8

    .line 25
    sget-object p2, Ll0/c0;->w:Ljava/lang/Runnable;

    invoke-static {p2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 26
    :cond_8
    :goto_2
    sget p2, Lu0/b;->J2:I

    if-ne p2, p1, :cond_9

    sget p1, Lu0/b;->K2:I

    if-eq p1, p0, :cond_d

    .line 27
    :cond_9
    sget p0, Ll0/c0;->t:I

    if-nez p0, :cond_a

    move p0, v1

    goto :goto_3

    :cond_a
    move p0, v2

    :goto_3
    sput p0, Lu0/b;->J2:I

    .line 28
    sget p0, Ll0/c0;->r:I

    if-nez p0, :cond_b

    move p0, v1

    goto :goto_4

    :cond_b
    move p0, v2

    :goto_4
    sput p0, Lu0/b;->K2:I

    .line 29
    sget p0, Ll0/c0;->v:I

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    move v1, v2

    :goto_5
    sput v1, Lu0/b;->L2:I

    .line 30
    sget-object p0, Lu0/c;->g:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_d
    :goto_6
    return-void
.end method

.method public static O([I)V
    .locals 7

    if-eqz p0, :cond_5

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x7

    .line 2
    aput v2, p0, v0

    .line 3
    sget v3, Lu0/b;->D:I

    const/4 v4, 0x4

    const/16 v5, 0xff

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4
    :pswitch_1
    aput v1, p0, v0

    goto :goto_0

    .line 5
    :pswitch_2
    aput v4, p0, v0

    goto :goto_0

    .line 6
    :pswitch_3
    aput v5, p0, v0

    goto :goto_0

    .line 7
    :pswitch_4
    aput v2, p0, v0

    goto :goto_0

    .line 8
    :pswitch_5
    sget v2, Lo0/e;->H:I

    if-ne v2, v6, :cond_1

    .line 9
    aput v1, p0, v0

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/4 v1, 0x6

    .line 10
    aput v1, p0, v0

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_5

    .line 11
    aput v4, p0, v0

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x5

    .line 12
    aput v1, p0, v0

    goto :goto_0

    .line 13
    :pswitch_7
    sget v1, Lw0/d;->h:I

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 14
    :pswitch_8
    aput v6, p0, v0

    goto :goto_0

    .line 15
    :pswitch_9
    aput v6, p0, v0

    goto :goto_0

    .line 16
    :pswitch_a
    aput v6, p0, v0

    goto :goto_0

    .line 17
    :cond_3
    aput v0, p0, v0

    goto :goto_0

    .line 18
    :cond_4
    aput v0, p0, v0

    goto :goto_0

    .line 19
    :pswitch_b
    aput v5, p0, v0

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_b
        :pswitch_b
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static O0(I)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 1
    div-int/lit8 p0, p0, 0x3

    :goto_0
    return p0
.end method

.method public static synthetic O1()V
    .locals 0

    .line 1
    invoke-static {}, Ll0/c0;->n()V

    return-void
.end method

.method public static P([I)V
    .locals 9

    if-eqz p0, :cond_6

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/16 v5, 0x30

    const/16 v6, 0x10

    const/4 v7, 0x3

    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v3, p0, v8

    .line 4
    aput v5, p0, v7

    goto :goto_0

    .line 5
    :pswitch_1
    aput v8, p0, v8

    const/16 v0, 0x21

    .line 6
    aput v0, p0, v7

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xd

    .line 7
    aput v0, p0, v8

    const/16 v0, 0x22

    .line 8
    aput v0, p0, v7

    goto :goto_0

    .line 9
    :pswitch_3
    aput v1, p0, v8

    .line 10
    aput v6, p0, v7

    goto :goto_0

    .line 11
    :pswitch_4
    aput v3, p0, v8

    .line 12
    aput v5, p0, v7

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_1

    .line 14
    aput v8, p0, v8

    .line 15
    aput v6, p0, v7

    goto :goto_0

    :cond_1
    if-ne v0, v8, :cond_2

    const/16 v0, 0x9

    .line 16
    aput v0, p0, v8

    .line 17
    aput v6, p0, v7

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_3

    .line 18
    aput v1, p0, v8

    .line 19
    aput v6, p0, v7

    goto :goto_0

    .line 20
    :pswitch_6
    aput v2, p0, v8

    .line 21
    aput v5, p0, v7

    goto :goto_0

    .line 22
    :pswitch_7
    aput v2, p0, v8

    .line 23
    aput v6, p0, v7

    goto :goto_0

    .line 24
    :pswitch_8
    aput v4, p0, v8

    .line 25
    aput v4, p0, v7

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x7

    .line 26
    aput v0, p0, v8

    .line 27
    aput v5, p0, v7

    :cond_3
    :goto_0
    const-string v0, "sys.carlink.type"

    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "com.syu.carlink"

    .line 29
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lu0/b;->D:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    if-ne v0, v3, :cond_6

    .line 30
    :cond_4
    sget v0, Lk0/nt;->a:I

    const v2, 0xffff

    and-int/2addr v0, v2

    const/16 v2, 0x1b7

    if-ne v0, v2, :cond_5

    const/16 v0, 0xb

    .line 31
    aput v0, p0, v8

    .line 32
    aput v6, p0, v7

    goto :goto_1

    :cond_5
    const/16 v0, 0xf

    .line 33
    aput v0, p0, v8

    .line 34
    aput v1, p0, v7

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static P0(I)I
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
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :cond_4
    :goto_0
    return v0
.end method

.method public static synthetic P1()V
    .locals 0

    .line 1
    invoke-static {}, Ll0/c0;->y0()V

    return-void
.end method

.method public static Q()V
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xa

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-eq v5, v6, :cond_3

    const/16 v6, 0xd

    const/16 v11, 0x30

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    const/16 v2, 0xc

    aput v2, v1, v4

    aput v11, v1, v10

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x6

    aput v2, v1, v4

    const/16 v2, 0x12

    aput v2, v1, v10

    goto :goto_0

    :pswitch_1
    aput v10, v1, v4

    aput v11, v1, v10

    goto :goto_0

    .line 2
    :pswitch_2
    sget v5, Lo0/e;->H:I

    const/16 v6, 0x21

    if-ne v5, v2, :cond_0

    aput v4, v1, v4

    aput v6, v1, v10

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    const/16 v2, 0x9

    aput v2, v1, v4

    aput v6, v1, v10

    goto :goto_0

    :cond_1
    if-ne v5, v10, :cond_4

    aput v7, v1, v4

    aput v6, v1, v10

    goto :goto_0

    :pswitch_3
    const/16 v2, 0xb

    aput v2, v1, v4

    aput v8, v1, v10

    goto :goto_0

    :pswitch_4
    aput v9, v1, v4

    const/16 v2, 0x40

    aput v2, v1, v10

    goto :goto_0

    :pswitch_5
    aput v2, v1, v4

    aput v2, v1, v10

    goto :goto_0

    :cond_2
    :pswitch_6
    const/4 v2, 0x7

    aput v2, v1, v4

    aput v11, v1, v10

    goto :goto_0

    :cond_3
    :pswitch_7
    aput v7, v1, v4

    aput v8, v1, v10

    :cond_4
    :goto_0
    new-array v2, v9, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static Q0(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

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

.method public static R([I)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v3, p0, v4

    goto :goto_0

    .line 4
    :pswitch_1
    aput v3, p0, v4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 5
    aput v0, p0, v4

    goto :goto_0

    .line 6
    :pswitch_3
    aput v1, p0, v4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 7
    aput v0, p0, v4

    goto :goto_0

    .line 8
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v2, :cond_1

    .line 9
    aput v4, p0, v4

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    const/16 v0, 0x9

    .line 10
    aput v0, p0, v4

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 11
    aput v3, p0, v4

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xa

    .line 12
    aput v0, p0, v4

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x5

    .line 13
    aput v0, p0, v4

    goto :goto_0

    .line 14
    :pswitch_8
    aput v2, p0, v4

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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

.method public static R0(I)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0xa

    .line 1
    div-int/lit8 p0, p0, 0x1e

    :goto_0
    return p0
.end method

.method public static S([I)V
    .locals 6

    if-eqz p0, :cond_7

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 2
    aput v0, p0, v2

    .line 3
    sget v0, Lu0/b;->D:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0xa

    if-eq v0, v5, :cond_5

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    .line 4
    aput v0, p0, v2

    goto :goto_0

    .line 5
    :cond_2
    sget v0, Lo0/e;->H:I

    if-ne v0, v3, :cond_3

    .line 6
    aput v2, p0, v2

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const/16 v0, 0x9

    .line 7
    aput v0, p0, v2

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_7

    .line 8
    aput v4, p0, v2

    goto :goto_0

    .line 9
    :cond_5
    aput v4, p0, v2

    goto :goto_0

    .line 10
    :cond_6
    aput v3, p0, v2

    :cond_7
    :goto_0
    return-void
.end method

.method public static S0(I)I
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    const/4 v2, 0x4

    if-eqz p0, :cond_2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static T([I)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v1, p0, v3

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    .line 4
    aput v0, p0, v3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 5
    aput v0, p0, v3

    goto :goto_0

    .line 6
    :pswitch_3
    aput v1, p0, v3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 7
    aput v0, p0, v3

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x9

    .line 8
    aput v0, p0, v3

    goto :goto_0

    .line 9
    :pswitch_6
    aput v2, p0, v3

    goto :goto_0

    .line 10
    :pswitch_7
    aput v2, p0, v3

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x1

    .line 11
    aput v0, p0, v3

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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

.method public static T0(I)I
    .locals 3

    const/16 v0, 0xa

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
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public static U([I)V
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 2
    aput v0, p0, v2

    .line 3
    sget v0, Lu0/b;->D:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4
    :pswitch_1
    aput v2, p0, v2

    goto :goto_0

    .line 5
    :pswitch_2
    aput v1, p0, v2

    goto :goto_0

    .line 6
    :pswitch_3
    aput v1, p0, v2

    goto :goto_0

    .line 7
    :pswitch_4
    sget v0, Lo0/e;->H:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 8
    aput v3, p0, v2

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v0, 0x4

    .line 9
    aput v0, p0, v2

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 10
    aput v3, p0, v2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    .line 11
    aput v0, p0, v2

    goto :goto_0

    .line 12
    :pswitch_6
    aput v1, p0, v2

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static U0(I)I
    .locals 1

    const/16 v0, 0xff

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    :goto_0
    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static V([I)V
    .locals 7

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v4, p0, v6

    .line 4
    aput v4, p0, v5

    goto :goto_0

    .line 5
    :pswitch_1
    aput v2, p0, v6

    .line 6
    aput v1, p0, v5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 7
    aput v0, p0, v6

    const/16 v0, 0x12

    .line 8
    aput v0, p0, v5

    goto :goto_0

    .line 9
    :pswitch_3
    aput v5, p0, v6

    .line 10
    aput v4, p0, v5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 11
    aput v0, p0, v6

    const/16 v0, 0x30

    .line 12
    aput v0, p0, v5

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v3, :cond_1

    .line 14
    aput v6, p0, v6

    .line 15
    aput v1, p0, v5

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    if-ne v0, v6, :cond_2

    .line 16
    aput v2, p0, v6

    .line 17
    aput v1, p0, v5

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    .line 18
    aput v2, p0, v6

    .line 19
    aput v1, p0, v5

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xb

    .line 20
    aput v0, p0, v6

    .line 21
    aput v4, p0, v5

    goto :goto_0

    .line 22
    :pswitch_7
    aput v3, p0, v6

    .line 23
    aput v3, p0, v5

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static V0(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public static W([I)V
    .locals 6

    if-eqz p0, :cond_5

    .line 1
    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3
    :pswitch_1
    aput v4, p0, v5

    goto :goto_0

    .line 4
    :pswitch_2
    aput v1, p0, v5

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xa

    .line 5
    aput v0, p0, v5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 6
    aput v0, p0, v5

    goto :goto_0

    .line 7
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v2, :cond_1

    .line 8
    aput v5, p0, v5

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 9
    aput v3, p0, v5

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_5

    .line 10
    aput v4, p0, v5

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x9

    .line 11
    aput v0, p0, v5

    goto :goto_0

    .line 12
    :pswitch_7
    aput v2, p0, v5

    .line 13
    sget v0, Lw0/d;->h:I

    const/16 v1, 0xff

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 14
    :pswitch_8
    aput v1, p0, v3

    const/16 v0, 0x13

    .line 15
    aput v0, p0, v4

    goto :goto_0

    .line 16
    :pswitch_9
    aput v1, p0, v3

    const/16 v0, 0x12

    .line 17
    aput v0, p0, v4

    goto :goto_0

    .line 18
    :pswitch_a
    aput v1, p0, v3

    const/16 v0, 0x11

    .line 19
    aput v0, p0, v4

    goto :goto_0

    .line 20
    :cond_3
    aput v1, p0, v3

    const/16 v0, 0x22

    .line 21
    aput v0, p0, v4

    goto :goto_0

    .line 22
    :cond_4
    aput v1, p0, v3

    const/16 v0, 0x21

    .line 23
    aput v0, p0, v4

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static W0(I)I
    .locals 2

    const/16 v0, 0xa

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    :cond_3
    :goto_0
    return v0
.end method

.method public static X()V
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/16 v7, 0x30

    const/4 v8, 0x3

    if-eqz v5, :cond_6

    if-eq v5, v2, :cond_5

    const/16 v9, 0x10

    if-eq v5, v0, :cond_2

    const/4 v2, 0x7

    if-eq v5, v6, :cond_1

    const/16 v10, 0x8

    if-eq v5, v10, :cond_0

    const/16 v10, 0xa

    if-eq v5, v10, :cond_0

    aput v2, v1, v4

    aput v7, v1, v8

    goto :goto_0

    :cond_0
    aput v4, v1, v4

    aput v9, v1, v8

    goto :goto_0

    :cond_1
    aput v2, v1, v4

    aput v7, v1, v8

    goto :goto_0

    .line 2
    :cond_2
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_3

    aput v4, v1, v4

    aput v9, v1, v8

    goto :goto_0

    :cond_3
    if-ne v5, v4, :cond_4

    aput v4, v1, v4

    aput v9, v1, v8

    goto :goto_0

    :cond_4
    if-ne v5, v8, :cond_7

    aput v4, v1, v4

    aput v9, v1, v8

    goto :goto_0

    :cond_5
    aput v2, v1, v4

    aput v2, v1, v8

    goto :goto_0

    :cond_6
    aput v3, v1, v4

    aput v7, v1, v8

    :cond_7
    :goto_0
    new-array v2, v6, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_8
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static X0(I)I
    .locals 1

    const/16 v0, 0x13

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x37

    if-ge p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x47

    if-ge p0, v0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/16 v0, 0x57

    if-ge p0, v0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/16 v0, 0x67

    if-ge p0, v0, :cond_5

    const/4 p0, 0x5

    goto :goto_0

    :cond_5
    const/16 v0, 0x77

    if-ge p0, v0, :cond_6

    const/4 p0, 0x6

    goto :goto_0

    :cond_6
    const/16 v0, 0x89

    if-ge p0, v0, :cond_7

    const/4 p0, 0x7

    goto :goto_0

    :cond_7
    const/16 v0, 0xc1

    if-ge p0, v0, :cond_8

    const/16 p0, 0x8

    goto :goto_0

    :cond_8
    const/16 v0, 0xf5

    if-ge p0, v0, :cond_9

    const/16 p0, 0x9

    goto :goto_0

    :cond_9
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public static Y([I)V
    .locals 6

    if-eqz p0, :cond_5

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x7

    const/16 v3, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x1f

    .line 3
    aput v0, p0, v5

    goto :goto_0

    .line 4
    :pswitch_1
    aput v5, p0, v5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    .line 5
    aput v0, p0, v5

    goto :goto_0

    .line 6
    :pswitch_3
    aput v2, p0, v5

    goto :goto_0

    .line 7
    :pswitch_4
    aput v2, p0, v5

    goto :goto_0

    .line 8
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_1

    .line 9
    aput v5, p0, v5

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 10
    aput v1, p0, v5

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_5

    .line 11
    aput v5, p0, v5

    goto :goto_0

    .line 12
    :pswitch_6
    aput v3, p0, v5

    goto :goto_0

    .line 13
    :pswitch_7
    aput v3, p0, v5

    goto :goto_0

    .line 14
    :pswitch_8
    sget v0, Lw0/d;->h:I

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 15
    :pswitch_9
    aput v1, p0, v5

    goto :goto_0

    .line 16
    :pswitch_a
    aput v1, p0, v5

    goto :goto_0

    .line 17
    :pswitch_b
    aput v1, p0, v5

    goto :goto_0

    .line 18
    :cond_3
    aput v4, p0, v5

    goto :goto_0

    .line 19
    :cond_4
    aput v4, p0, v5

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static Y0(I)I
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static Z([I)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v1, p0, v4

    goto :goto_0

    .line 4
    :pswitch_1
    aput v2, p0, v4

    goto :goto_0

    .line 5
    :pswitch_2
    aput v1, p0, v4

    goto :goto_0

    .line 6
    :pswitch_3
    aput v1, p0, v4

    goto :goto_0

    .line 7
    :pswitch_4
    aput v1, p0, v4

    goto :goto_0

    .line 8
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v3, :cond_1

    .line 9
    aput v4, p0, v4

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    const/4 v0, 0x4

    .line 10
    aput v0, p0, v4

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 11
    aput v2, p0, v4

    goto :goto_0

    .line 12
    :pswitch_6
    aput v1, p0, v4

    goto :goto_0

    .line 13
    :pswitch_7
    aput v3, p0, v4

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static Z0(I)I
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    :cond_3
    :goto_0
    return v0
.end method

.method public static a(III)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Ll0/c0;->p:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v0, 0x2000

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    if-nez p1, :cond_1

    .line 2
    sput v1, Ll0/c0;->r:I

    .line 3
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lu0/i;->g4(IZ)V

    goto :goto_0

    .line 4
    :cond_1
    sput v2, Ll0/c0;->r:I

    .line 5
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lu0/i;->g4(IZ)V

    :goto_0
    const/16 v0, 0x1000

    if-ne p1, v3, :cond_2

    if-nez p0, :cond_2

    .line 6
    sput v1, Ll0/c0;->t:I

    .line 7
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lu0/i;->g4(IZ)V

    goto :goto_1

    .line 8
    :cond_2
    sput v2, Ll0/c0;->t:I

    .line 9
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lu0/i;->g4(IZ)V

    :goto_1
    const/16 v0, 0x8b

    if-ne p1, v3, :cond_3

    if-eq p0, v3, :cond_4

    :cond_3
    if-ne p2, v3, :cond_5

    .line 10
    :cond_4
    sput v1, Ll0/c0;->v:I

    new-array p2, v3, [I

    aput v3, p2, v2

    .line 11
    invoke-static {v0, p2}, Lu0/d;->I3(I[I)V

    goto :goto_2

    .line 12
    :cond_5
    sput v2, Ll0/c0;->v:I

    new-array p2, v3, [I

    aput v2, p2, v2

    .line 13
    invoke-static {v0, p2}, Lu0/d;->I3(I[I)V

    .line 14
    :goto_2
    sget p2, Lu0/b;->J2:I

    if-ne p2, p1, :cond_6

    sget p1, Lu0/b;->K2:I

    if-eq p1, p0, :cond_a

    .line 15
    :cond_6
    sget p0, Ll0/c0;->t:I

    if-nez p0, :cond_7

    move p0, v2

    goto :goto_3

    :cond_7
    move p0, v3

    :goto_3
    sput p0, Lu0/b;->J2:I

    .line 16
    sget p0, Ll0/c0;->r:I

    if-nez p0, :cond_8

    move p0, v2

    goto :goto_4

    :cond_8
    move p0, v3

    :goto_4
    sput p0, Lu0/b;->K2:I

    .line 17
    sget p0, Ll0/c0;->v:I

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    move v2, v3

    :goto_5
    sput v2, Lu0/b;->L2:I

    .line 18
    sget-object p0, Lu0/c;->g:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_a
    :goto_6
    return-void
.end method

.method public static a0([I)V
    .locals 8

    if-eqz p0, :cond_5

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x7

    const/4 v2, 0x2

    .line 2
    aput v0, p0, v2

    const/16 v0, 0x30

    .line 3
    aput v0, p0, v1

    .line 4
    sget v0, Lu0/b;->D:I

    const/16 v3, 0xb

    const/16 v4, 0x8

    const/16 v5, 0x13

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5
    :pswitch_0
    aput v7, p0, v2

    .line 6
    aput v7, p0, v1

    goto :goto_0

    .line 7
    :pswitch_1
    sget v0, Ln0/j4;->b:I

    if-ne v0, v3, :cond_1

    .line 8
    aput v4, p0, v2

    .line 9
    aput v5, p0, v1

    goto :goto_0

    .line 10
    :cond_1
    aput v4, p0, v2

    const/16 v0, 0xff

    .line 11
    aput v0, p0, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 12
    aput v0, p0, v2

    const/16 v0, 0x12

    .line 13
    aput v0, p0, v1

    goto :goto_0

    .line 14
    :pswitch_3
    sget v0, Ld1/d;->c:I

    if-ne v0, v6, :cond_2

    .line 15
    aput v1, p0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    .line 16
    aput v0, p0, v2

    goto :goto_0

    .line 17
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_3

    .line 18
    aput v2, p0, v2

    .line 19
    aput v5, p0, v1

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const/16 v0, 0x9

    .line 20
    aput v0, p0, v2

    .line 21
    aput v5, p0, v1

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 22
    aput v4, p0, v2

    const/16 v0, 0x11

    .line 23
    aput v0, p0, v1

    goto :goto_0

    .line 24
    :pswitch_5
    aput v3, p0, v2

    .line 25
    aput v7, p0, v1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    .line 26
    aput v0, p0, v2

    const/16 v0, 0x40

    .line 27
    aput v0, p0, v1

    goto :goto_0

    .line 28
    :pswitch_7
    aput v6, p0, v2

    .line 29
    aput v6, p0, v1

    goto :goto_0

    .line 30
    :pswitch_8
    aput v7, p0, v2

    .line 31
    aput v7, p0, v1

    :cond_5
    :goto_0
    :pswitch_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static a1(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0xa

    .line 1
    div-int/lit16 p0, p0, 0xfd

    return p0
.end method

.method public static b(III)V
    .locals 5

    .line 1
    invoke-static {}, Ll0/c0;->M1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Ll0/c0;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_3

    if-nez p1, :cond_3

    .line 3
    sget-object v3, Ll0/c0;->s:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 4
    sput v0, Ll0/c0;->r:I

    .line 5
    sput v1, Ll0/c0;->t:I

    .line 6
    sput v1, Ll0/c0;->v:I

    .line 7
    invoke-static {}, Ll0/c0;->M1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4, v2}, Lu0/i;->g4(IZ)V

    goto :goto_0

    .line 11
    :cond_3
    sget v3, Ll0/c0;->r:I

    if-ne v3, v0, :cond_4

    .line 12
    sget-object v3, Ll0/c0;->s:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    if-ne p1, v2, :cond_6

    if-nez p0, :cond_6

    .line 13
    sget-object v3, Ll0/c0;->u:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 14
    sput v0, Ll0/c0;->t:I

    .line 15
    sput v1, Ll0/c0;->r:I

    .line 16
    sput v1, Ll0/c0;->v:I

    .line 17
    invoke-static {}, Ll0/c0;->M1()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v3, v4, v2}, Lu0/i;->g4(IZ)V

    goto :goto_1

    .line 21
    :cond_6
    sget v3, Ll0/c0;->t:I

    if-ne v3, v0, :cond_7

    .line 22
    sget-object v3, Ll0/c0;->u:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    if-ne p1, v2, :cond_8

    if-eq p0, v2, :cond_9

    :cond_8
    if-ne p2, v2, :cond_b

    .line 23
    :cond_9
    sget-object p2, Ll0/c0;->w:Ljava/lang/Runnable;

    invoke-static {p2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 24
    sput v0, Ll0/c0;->v:I

    .line 25
    sput v1, Ll0/c0;->r:I

    .line 26
    sput v1, Ll0/c0;->t:I

    .line 27
    invoke-static {}, Ll0/c0;->M1()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 28
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto :goto_2

    .line 29
    :cond_a
    invoke-static {}, Lk0/qt;->k0()Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 p2, 0x8b

    new-array v0, v2, [I

    aput v2, v0, v1

    .line 30
    invoke-static {p2, v0}, Lu0/d;->I3(I[I)V

    goto :goto_2

    .line 31
    :cond_b
    sget p2, Ll0/c0;->v:I

    if-ne p2, v0, :cond_c

    .line 32
    sget-object p2, Ll0/c0;->w:Ljava/lang/Runnable;

    invoke-static {p2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 33
    :cond_c
    :goto_2
    sget p2, Lu0/b;->J2:I

    if-ne p2, p1, :cond_d

    sget p1, Lu0/b;->K2:I

    if-eq p1, p0, :cond_11

    .line 34
    :cond_d
    sget p0, Ll0/c0;->t:I

    if-nez p0, :cond_e

    move p0, v1

    goto :goto_3

    :cond_e
    move p0, v2

    :goto_3
    sput p0, Lu0/b;->J2:I

    .line 35
    sget p0, Ll0/c0;->r:I

    if-nez p0, :cond_f

    move p0, v1

    goto :goto_4

    :cond_f
    move p0, v2

    :goto_4
    sput p0, Lu0/b;->K2:I

    .line 36
    sget p0, Ll0/c0;->v:I

    if-nez p0, :cond_10

    goto :goto_5

    :cond_10
    move v1, v2

    :goto_5
    sput v1, Lu0/b;->L2:I

    .line 37
    sget-object p0, Lu0/c;->g:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_11
    return-void
.end method

.method public static b0([I)V
    .locals 14

    if-eqz p0, :cond_6

    .line 1
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    .line 3
    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget v1, Lu0/b;->D:I

    const/16 v2, 0x33

    const/16 v3, 0x55

    const/4 v4, 0x5

    const/16 v5, 0x4f

    const/16 v6, 0x44

    const/16 v7, 0x56

    const/16 v8, 0x4a

    const/16 v9, 0x50

    const/4 v10, 0x1

    const/16 v11, 0x4d

    const/4 v12, 0x4

    const/4 v13, 0x3

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 5
    :pswitch_1
    aput v11, p0, v0

    .line 6
    aput v9, p0, v13

    .line 7
    aput v2, p0, v12

    goto/16 :goto_1

    :pswitch_2
    const/16 v1, 0x49

    .line 8
    aput v1, p0, v0

    .line 9
    aput v9, p0, v13

    .line 10
    aput v5, p0, v12

    .line 11
    aput v6, p0, v4

    goto/16 :goto_1

    :pswitch_3
    const/16 v1, 0x54

    .line 12
    aput v1, p0, v0

    .line 13
    aput v7, p0, v13

    goto/16 :goto_1

    .line 14
    :pswitch_4
    aput v8, p0, v0

    .line 15
    aput v3, p0, v13

    const/16 v0, 0x58

    .line 16
    aput v0, p0, v12

    goto :goto_1

    .line 17
    :pswitch_5
    sget v1, Lo0/e;->H:I

    if-ne v1, v10, :cond_2

    .line 18
    aput v6, p0, v0

    .line 19
    aput v7, p0, v13

    .line 20
    aput v6, p0, v13

    goto :goto_1

    :cond_2
    const/16 v2, 0x53

    if-ne v1, v0, :cond_3

    .line 21
    aput v2, p0, v0

    .line 22
    aput v7, p0, v13

    goto :goto_1

    :cond_3
    if-ne v1, v13, :cond_6

    .line 23
    aput v3, p0, v0

    .line 24
    aput v2, p0, v13

    const/16 v0, 0x42

    .line 25
    aput v0, p0, v12

    goto :goto_1

    .line 26
    :pswitch_6
    aput v9, p0, v0

    const/16 v0, 0x48

    .line 27
    aput v0, p0, v13

    .line 28
    aput v5, p0, v12

    const/16 v0, 0x4e

    .line 29
    aput v0, p0, v4

    const/4 v0, 0x6

    const/16 v1, 0x45

    .line 30
    aput v1, p0, v0

    goto :goto_1

    .line 31
    :pswitch_7
    sget v1, Lw0/d;->h:I

    const/16 v3, 0x31

    if-eqz v1, :cond_5

    const/16 v4, 0x32

    if-eq v1, v10, :cond_4

    const/16 v5, 0x46

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 32
    :pswitch_8
    aput v5, p0, v0

    .line 33
    aput v11, p0, v13

    .line 34
    aput v2, p0, v12

    goto :goto_1

    .line 35
    :pswitch_9
    aput v5, p0, v0

    .line 36
    aput v11, p0, v13

    .line 37
    aput v4, p0, v12

    goto :goto_1

    .line 38
    :pswitch_a
    aput v5, p0, v0

    .line 39
    aput v11, p0, v13

    .line 40
    aput v3, p0, v12

    goto :goto_1

    .line 41
    :cond_4
    aput v8, p0, v0

    .line 42
    aput v11, p0, v13

    .line 43
    aput v4, p0, v12

    goto :goto_1

    .line 44
    :cond_5
    aput v8, p0, v0

    .line 45
    aput v11, p0, v13

    .line 46
    aput v3, p0, v12

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static b1(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static c(III)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Ll0/c0;->p:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    if-nez p1, :cond_1

    .line 2
    sget-object v3, Ll0/c0;->s:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 3
    sput v0, Ll0/c0;->r:I

    .line 4
    sput v1, Ll0/c0;->t:I

    .line 5
    sput v1, Ll0/c0;->v:I

    .line 6
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4, v2}, Lu0/i;->g4(IZ)V

    goto :goto_0

    .line 7
    :cond_1
    sget v3, Ll0/c0;->r:I

    if-ne v3, v0, :cond_2

    .line 8
    sget-object v3, Ll0/c0;->s:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    .line 9
    sget-object p0, Ll0/c0;->u:Ljava/lang/Runnable;

    invoke-static {p0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 10
    sput v0, Ll0/c0;->t:I

    .line 11
    sput v1, Ll0/c0;->r:I

    .line 12
    sput v1, Ll0/c0;->v:I

    .line 13
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p0

    const/16 p1, 0x1000

    invoke-virtual {p0, p1, v2}, Lu0/i;->g4(IZ)V

    goto :goto_1

    .line 14
    :cond_3
    sget p0, Ll0/c0;->t:I

    if-ne p0, v0, :cond_4

    .line 15
    sget-object p0, Ll0/c0;->u:Ljava/lang/Runnable;

    invoke-static {p0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    if-ne p2, v2, :cond_5

    .line 16
    sget-object p0, Ll0/c0;->w:Ljava/lang/Runnable;

    invoke-static {p0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 17
    sput v0, Ll0/c0;->v:I

    .line 18
    sput v1, Ll0/c0;->r:I

    .line 19
    sput v1, Ll0/c0;->t:I

    const/16 p0, 0x8b

    new-array p1, v2, [I

    aput v2, p1, v1

    .line 20
    invoke-static {p0, p1}, Lu0/d;->I3(I[I)V

    goto :goto_2

    .line 21
    :cond_5
    sget p0, Ll0/c0;->v:I

    if-ne p0, v0, :cond_6

    .line 22
    sget-object p0, Ll0/c0;->w:Ljava/lang/Runnable;

    invoke-static {p0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static c0([I)V
    .locals 7

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v6, p0, v6

    .line 4
    aput v4, p0, v5

    goto :goto_0

    .line 5
    :pswitch_1
    aput v4, p0, v6

    .line 6
    aput v3, p0, v5

    goto :goto_0

    .line 7
    :pswitch_2
    aput v6, p0, v6

    .line 8
    aput v2, p0, v5

    goto :goto_0

    .line 9
    :pswitch_3
    aput v6, p0, v6

    .line 10
    aput v2, p0, v5

    goto :goto_0

    .line 11
    :pswitch_4
    aput v6, p0, v6

    .line 12
    aput v2, p0, v5

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_1

    .line 14
    aput v4, p0, v6

    .line 15
    aput v3, p0, v5

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 16
    aput v4, p0, v6

    .line 17
    aput v3, p0, v5

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v4, p0, v6

    .line 19
    aput v3, p0, v5

    goto :goto_0

    .line 20
    :pswitch_6
    aput v4, p0, v6

    const/16 v0, 0xb

    .line 21
    aput v0, p0, v5

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x5

    .line 22
    aput v0, p0, v6

    .line 23
    aput v6, p0, v5

    :cond_3
    :goto_0
    :pswitch_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
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

.method public static c1(I)I
    .locals 4

    const/16 v0, 0xf

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :cond_4
    :goto_0
    return v0
.end method

.method public static d()V
    .locals 21

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/16 v2, 0x84

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x7

    aput v4, v1, v2

    const/4 v2, 0x2

    const/4 v5, 0x6

    aput v5, v1, v2

    .line 1
    sget v2, Ly0/f;->a0:I

    const/16 v6, 0x49

    const/16 v7, 0x54

    const/16 v8, 0x52

    const/16 v9, 0x4e

    const/16 v10, 0x4d

    const/16 v11, 0x53

    const/16 v12, 0x43

    const/16 v13, 0x4c

    const/16 v14, 0x41

    const/16 v15, 0x4f

    const/16 v16, 0x8

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x20

    packed-switch v2, :pswitch_data_0

    aput v12, v1, v19

    const/16 v2, 0x55

    aput v2, v1, v18

    aput v11, v1, v17

    aput v7, v1, v5

    aput v15, v1, v4

    aput v10, v1, v16

    goto/16 :goto_0

    :pswitch_0
    aput v12, v1, v19

    aput v6, v1, v18

    aput v9, v1, v17

    const/16 v2, 0x45

    aput v2, v1, v5

    aput v10, v1, v4

    aput v14, v1, v16

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x4a

    aput v2, v1, v19

    aput v14, v1, v18

    const/16 v2, 0x5a

    aput v2, v1, v17

    aput v2, v1, v5

    aput v20, v1, v4

    aput v20, v1, v16

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x48

    aput v2, v1, v19

    aput v14, v1, v18

    aput v13, v1, v17

    aput v13, v1, v5

    aput v20, v1, v4

    aput v20, v1, v16

    goto :goto_0

    :pswitch_3
    aput v20, v1, v19

    const/16 v2, 0x50

    aput v2, v1, v18

    aput v15, v1, v17

    aput v2, v1, v5

    aput v20, v1, v4

    aput v20, v1, v16

    goto :goto_0

    :pswitch_4
    aput v12, v1, v19

    aput v13, v1, v18

    aput v14, v1, v17

    aput v11, v1, v5

    aput v11, v1, v4

    aput v6, v1, v16

    goto :goto_0

    :pswitch_5
    aput v11, v1, v19

    aput v15, v1, v18

    const/16 v2, 0x46

    aput v2, v1, v17

    aput v7, v1, v5

    aput v20, v1, v4

    aput v20, v1, v16

    goto :goto_0

    :pswitch_6
    aput v8, v1, v19

    aput v15, v1, v18

    aput v12, v1, v17

    const/16 v2, 0x4b

    aput v2, v1, v5

    aput v20, v1, v4

    aput v20, v1, v16

    goto :goto_0

    :pswitch_7
    aput v9, v1, v19

    aput v15, v1, v18

    aput v8, v1, v17

    aput v10, v1, v5

    aput v14, v1, v4

    aput v13, v1, v16

    :goto_0
    const/16 v2, 0xa

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 2
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d0([I)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v1, p0, v3

    goto :goto_0

    .line 4
    :pswitch_1
    aput v2, p0, v3

    goto :goto_0

    .line 5
    :pswitch_2
    aput v2, p0, v3

    goto :goto_0

    .line 6
    :pswitch_3
    aput v1, p0, v3

    goto :goto_0

    .line 7
    :pswitch_4
    aput v1, p0, v3

    goto :goto_0

    .line 8
    :pswitch_5
    aput v2, p0, v3

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xb

    .line 9
    aput v0, p0, v3

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x5

    .line 10
    aput v0, p0, v3

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x1

    .line 11
    aput v0, p0, v3

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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

.method public static d1(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :cond_3
    :goto_0
    return v1
.end method

.method public static e()V
    .locals 14

    .line 1
    invoke-static {}, Ll0/c0;->M()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xc3

    const/16 v2, 0xe3

    const/4 v3, 0x7

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x6

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v7, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_1
    new-array v0, v8, [I

    aput v1, v0, v12

    aput v9, v0, v11

    .line 5
    sget v1, Lu0/b;->s3:I

    and-int/lit16 v11, v1, 0xff

    aput v11, v0, v10

    shr-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 6
    sget v1, Lu0/b;->r3:I

    and-int/lit16 v5, v1, 0xff

    aput v5, v0, v6

    shr-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    .line 7
    sget v1, Lu0/b;->t3:I

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v0, v9

    .line 8
    rem-int/lit16 v1, v1, 0xe10

    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v3

    new-array v1, v7, [I

    aput v2, v1, v12

    :goto_0
    if-ge v12, v8, :cond_0

    add-int/lit8 v2, v12, 0x1

    .line 9
    aget v3, v0, v12

    aput v3, v1, v2

    move v12, v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_2
    new-array v0, v8, [I

    aput v1, v0, v12

    aput v9, v0, v11

    .line 11
    sget v1, Lo0/e;->H:I

    if-ne v1, v11, :cond_1

    .line 12
    sget v1, Lo0/e;->C:I

    aput v1, v0, v10

    .line 13
    sget v1, Lo0/e;->B:I

    aput v1, v0, v5

    .line 14
    sget v1, Lo0/e;->r:I

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v0, v9

    .line 15
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v3

    goto :goto_1

    .line 16
    :cond_1
    sget v1, Lo0/e;->C:I

    and-int/lit16 v11, v1, 0xff

    aput v11, v0, v10

    shr-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 17
    sget v1, Lo0/e;->B:I

    and-int/lit16 v5, v1, 0xff

    aput v5, v0, v6

    shr-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    .line 18
    sget v1, Lo0/e;->r:I

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v0, v9

    .line 19
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v3

    :goto_1
    new-array v1, v7, [I

    aput v2, v1, v12

    :goto_2
    if-ge v12, v8, :cond_2

    add-int/lit8 v2, v12, 0x1

    .line 20
    aget v3, v0, v12

    aput v3, v1, v2

    move v12, v2

    goto :goto_2

    .line 21
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_7

    .line 22
    :pswitch_3
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v4, :cond_3

    new-array v0, v7, [I

    .line 23
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_7

    :cond_3
    new-array v0, v7, [I

    .line 24
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_7

    :cond_4
    new-array v0, v7, [I

    .line 25
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_7

    :cond_5
    new-array v0, v7, [I

    .line 26
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_7

    :pswitch_4
    new-array v0, v9, [I

    .line 27
    sget v1, Lw0/d;->j:I

    const/16 v7, 0xc2

    aput v7, v0, v12

    aput v6, v0, v11

    .line 28
    sget v7, Lw0/d;->h:I

    const/16 v13, 0x10

    if-eqz v7, :cond_7

    if-eq v7, v11, :cond_6

    const/high16 v13, 0x10000

    packed-switch v7, :pswitch_data_1

    goto :goto_4

    :pswitch_5
    aput v12, v0, v10

    if-lt v1, v13, :cond_8

    goto :goto_3

    :pswitch_6
    aput v10, v0, v10

    if-lt v1, v13, :cond_8

    goto :goto_3

    :pswitch_7
    aput v11, v0, v10

    if-lt v1, v13, :cond_8

    :goto_3
    sub-int/2addr v1, v13

    goto :goto_4

    :cond_6
    aput v13, v0, v10

    goto :goto_4

    :cond_7
    aput v13, v0, v10

    .line 29
    :cond_8
    :goto_4
    sget v7, Lw0/d;->i:I

    and-int/lit16 v10, v7, 0xff

    aput v10, v0, v5

    shr-int/lit8 v5, v7, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v6

    .line 30
    rem-int/lit8 v5, v1, 0x6

    if-nez v5, :cond_9

    if-eqz v1, :cond_9

    aput v9, v0, v4

    goto :goto_5

    :cond_9
    aput v5, v0, v4

    :goto_5
    new-array v1, v3, [I

    aput v2, v1, v12

    :goto_6
    if-ge v12, v9, :cond_a

    add-int/lit8 v2, v12, 0x1

    .line 31
    aget v3, v0, v12

    aput v3, v1, v2

    move v12, v2

    goto :goto_6

    .line 32
    :cond_a
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_7
    :pswitch_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc2
        0x4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc3
        0x6
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc3
        0x6
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc3
        0x6
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc3
        0x6
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static e0([I)V
    .locals 6

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v3, p0, v5

    .line 4
    aput v3, p0, v4

    goto :goto_0

    .line 5
    :pswitch_1
    aput v2, p0, v5

    .line 6
    aput v3, p0, v4

    goto :goto_0

    .line 7
    :pswitch_2
    aput v2, p0, v5

    .line 8
    aput v3, p0, v4

    goto :goto_0

    .line 9
    :pswitch_3
    aput v2, p0, v5

    .line 10
    aput v3, p0, v4

    goto :goto_0

    .line 11
    :pswitch_4
    aput v2, p0, v5

    .line 12
    aput v3, p0, v4

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v1, :cond_1

    .line 14
    aput v2, p0, v5

    .line 15
    aput v3, p0, v4

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 16
    aput v2, p0, v5

    .line 17
    aput v3, p0, v4

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    .line 18
    aput v2, p0, v5

    .line 19
    aput v3, p0, v4

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xb

    .line 20
    aput v0, p0, v5

    .line 21
    aput v3, p0, v4

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x5

    .line 22
    aput v0, p0, v5

    .line 23
    aput v3, p0, v4

    goto :goto_0

    .line 24
    :pswitch_8
    aput v1, p0, v5

    .line 25
    aput v1, p0, v4

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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

.method public static e1(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static f()V
    .locals 13

    .line 1
    invoke-static {}, Ll0/c0;->l0()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v10, :cond_4

    const/16 v11, 0xc3

    const/16 v12, 0x9

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_0

    if-eq v0, v7, :cond_2

    if-eq v0, v12, :cond_2

    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v12, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_0
    new-array v0, v7, [I

    aput v11, v0, v9

    aput v6, v0, v10

    .line 5
    sget v2, Lo0/e;->C:I

    aput v2, v0, v8

    .line 6
    sget v2, Lo0/e;->B:I

    aput v2, v0, v5

    .line 7
    sget v2, Lo0/e;->r:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v6

    .line 8
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v3

    new-array v2, v12, [I

    aput v1, v2, v9

    :goto_0
    if-ge v9, v7, :cond_1

    add-int/lit8 v1, v9, 0x1

    .line 9
    aget v3, v0, v9

    aput v3, v2, v1

    move v9, v1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_2
    new-array v0, v7, [I

    aput v11, v0, v9

    aput v6, v0, v10

    .line 11
    sget v10, Lu0/b;->r3:I

    and-int/lit16 v11, v10, 0xff

    aput v11, v0, v8

    shr-int/lit8 v8, v10, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v5

    .line 12
    sget v5, Lu0/b;->s3:I

    and-int/lit16 v8, v5, 0xff

    aput v8, v0, v4

    shr-int/lit8 v4, v5, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v2

    .line 13
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v6

    .line 14
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v3

    new-array v2, v12, [I

    aput v1, v2, v9

    :goto_1
    if-ge v9, v7, :cond_3

    add-int/lit8 v1, v9, 0x1

    .line 15
    aget v3, v0, v9

    aput v3, v2, v1

    move v9, v1

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_4

    :cond_4
    new-array v0, v6, [I

    const/16 v11, 0xc2

    aput v11, v0, v9

    aput v4, v0, v10

    .line 17
    sget v11, Lw0/d;->h:I

    if-eqz v11, :cond_6

    if-eq v11, v10, :cond_5

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    aput v5, v0, v8

    goto :goto_2

    :pswitch_1
    aput v8, v0, v8

    goto :goto_2

    :pswitch_2
    aput v10, v0, v8

    goto :goto_2

    :cond_5
    const/16 v10, 0x12

    aput v10, v0, v8

    goto :goto_2

    :cond_6
    const/16 v10, 0x11

    aput v10, v0, v8

    .line 18
    :goto_2
    sget v8, Lw0/d;->i:I

    and-int/lit16 v10, v8, 0xff

    aput v10, v0, v5

    shr-int/lit8 v5, v8, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v4

    .line 19
    sget v4, Lw0/d;->j:I

    aput v4, v0, v2

    .line 20
    aget v4, v0, v2

    if-nez v4, :cond_7

    aput v6, v0, v2

    :cond_7
    new-array v2, v3, [I

    aput v1, v2, v9

    :goto_3
    if-ge v9, v6, :cond_8

    add-int/lit8 v1, v9, 0x1

    .line 21
    aget v3, v0, v9

    aput v3, v2, v1

    move v9, v1

    goto :goto_3

    .line 22
    :cond_8
    invoke-static {v2}, Lz/k;->s([I)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc2
        0x4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static f0([I)V
    .locals 5

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v1, p0, v3

    .line 4
    aput v1, p0, v2

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    .line 5
    aput v0, p0, v3

    .line 6
    aput v1, p0, v2

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    .line 7
    aput v0, p0, v3

    .line 8
    aput v1, p0, v2

    goto :goto_0

    .line 9
    :pswitch_3
    sget v0, Lw0/d;->h:I

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 10
    :pswitch_4
    aput v4, p0, v3

    .line 11
    aput v1, p0, v2

    goto :goto_0

    .line 12
    :cond_1
    aput v4, p0, v3

    const/16 v0, 0x1d

    .line 13
    aput v0, p0, v2

    :cond_2
    :goto_0
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static f1(I)I
    .locals 1

    const/16 v0, 0xf

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    :goto_0
    :pswitch_6
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g()V
    .locals 10

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0x82

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->k0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    if-eq v5, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget v5, Lw0/d;->j:I

    .line 4
    sget v6, Lw0/d;->h:I

    const/4 v7, 0x4

    const/high16 v8, 0x10000

    if-ne v6, v8, :cond_2

    if-lt v5, v8, :cond_1

    sub-int/2addr v5, v8

    :cond_1
    aput v2, v1, v7

    goto :goto_0

    :cond_2
    const v9, 0x10001

    if-ne v6, v9, :cond_4

    if-lt v5, v8, :cond_3

    sub-int/2addr v5, v8

    :cond_3
    const/4 v2, 0x2

    aput v2, v1, v7

    goto :goto_0

    :cond_4
    const v9, 0x10002

    if-ne v6, v9, :cond_6

    if-lt v5, v8, :cond_5

    sub-int/2addr v5, v8

    :cond_5
    const/4 v2, 0x3

    aput v2, v1, v7

    goto :goto_0

    :cond_6
    if-nez v6, :cond_7

    const/16 v2, 0x11

    aput v2, v1, v7

    goto :goto_0

    :cond_7
    if-ne v6, v2, :cond_8

    const/16 v2, 0x12

    aput v2, v1, v7

    :cond_8
    :goto_0
    const/4 v2, 0x5

    .line 5
    sget v6, Lw0/d;->i:I

    and-int/lit16 v7, v6, 0xff

    aput v7, v1, v2

    shr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x6

    aput v2, v1, v4

    .line 6
    rem-int/lit8 v2, v5, 0x6

    const/4 v6, 0x7

    if-nez v2, :cond_9

    if-eqz v5, :cond_9

    aput v4, v1, v6

    goto :goto_1

    :cond_9
    aput v2, v1, v6

    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 8
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static g0()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0x82

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Lu0/b;->D:I

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    aput v6, v1, v7

    goto :goto_0

    :pswitch_1
    aput v6, v1, v7

    goto :goto_0

    :pswitch_2
    aput v5, v1, v7

    goto :goto_0

    :pswitch_3
    aput v6, v1, v7

    goto :goto_0

    :pswitch_4
    aput v0, v1, v7

    goto :goto_0

    :pswitch_5
    aput v7, v1, v7

    goto :goto_0

    :pswitch_6
    aput v6, v1, v7

    goto :goto_0

    :pswitch_7
    aput v2, v1, v7

    :goto_0
    new-array v2, v5, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 2
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static g1(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x1e

    if-eq p0, v1, :cond_0

    .line 1
    div-int/lit8 p0, p0, 0x3

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public static h()V
    .locals 10

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/16 v2, 0x84

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x5

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->m0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x6

    const/16 v7, 0x8

    if-eq v5, v2, :cond_6

    const/4 v8, 0x4

    if-eq v5, v8, :cond_1

    if-eq v5, v7, :cond_0

    const/16 v2, 0xa

    if-eq v5, v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v5, v2, 0x8

    shl-int/2addr v5, v6

    or-int/lit16 v5, v5, 0xc0

    aput v2, v1, v8

    .line 4
    sget v2, Lu0/b;->t3:I

    rem-int/lit16 v8, v2, 0xe10

    rem-int/lit8 v8, v8, 0x3c

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v5, v8

    aput v5, v1, v4

    .line 5
    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto :goto_2

    .line 6
    :cond_1
    sget v5, Lo0/e;->A:I

    const/4 v9, 0x3

    if-eq v5, v9, :cond_3

    if-ne v5, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    aget v5, v1, v9

    or-int/2addr v2, v5

    aput v2, v1, v9

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    aget v2, v1, v9

    or-int/lit8 v2, v2, 0x10

    aput v2, v1, v9

    .line 9
    :goto_1
    sget v2, Lo0/e;->P:I

    if-eqz v2, :cond_4

    .line 10
    aget v2, v1, v9

    or-int/2addr v2, v8

    aput v2, v1, v9

    .line 11
    :cond_4
    sget v2, Lo0/e;->O:I

    if-eqz v2, :cond_5

    .line 12
    aget v2, v1, v9

    or-int/lit8 v2, v2, 0x2

    aput v2, v1, v9

    .line 13
    :cond_5
    sget v2, Lo0/e;->B:I

    shr-int/lit8 v5, v2, 0x8

    shl-int/2addr v5, v6

    or-int/lit16 v5, v5, 0xc0

    aput v2, v1, v8

    .line 14
    sget v2, Lo0/e;->r:I

    rem-int/lit16 v8, v2, 0xe10

    rem-int/lit8 v8, v8, 0x3c

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v5, v8

    aput v5, v1, v4

    .line 15
    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto :goto_2

    .line 16
    :cond_6
    sget v2, Lw0/d;->i:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    :goto_2
    new-array v2, v7, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_7

    add-int/lit8 v4, v3, 0x1

    .line 17
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 18
    :cond_7
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static h0()V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0x86

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Lu0/b;->D:I

    const/4 v5, 0x4

    const/4 v6, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    aput v0, v1, v6

    goto :goto_0

    :pswitch_1
    aput v5, v1, v6

    goto :goto_0

    :pswitch_2
    aput v5, v1, v6

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x8

    aput v2, v1, v6

    goto :goto_0

    :pswitch_4
    aput v0, v1, v6

    goto :goto_0

    .line 2
    :pswitch_5
    sget v4, Lo0/e;->H:I

    if-ne v4, v2, :cond_0

    aput v6, v1, v6

    goto :goto_0

    :cond_0
    aput v5, v1, v6

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x7

    aput v2, v1, v6

    goto :goto_0

    :pswitch_7
    const/4 v2, 0x5

    aput v2, v1, v6

    goto :goto_0

    :pswitch_8
    aput v2, v1, v6

    :goto_0
    new-array v2, v5, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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

.method public static h1(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static i()V
    .locals 12

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x6

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->n0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v5, v2, :cond_2

    const/4 v2, 0x7

    if-eq v5, v7, :cond_1

    if-eq v5, v0, :cond_0

    const/16 v8, 0xa

    if-eq v5, v8, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    sget v5, Lu0/b;->r3:I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v1, v7

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    .line 4
    sget v5, Lu0/b;->s3:I

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v4

    and-int/lit16 v4, v5, 0xff

    aput v4, v1, v2

    goto :goto_3

    .line 5
    :cond_1
    sget v5, Lo0/e;->B:I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v1, v7

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    .line 6
    sget v5, Lo0/e;->C:I

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v4

    and-int/lit16 v4, v5, 0xff

    aput v4, v1, v2

    goto :goto_3

    .line 7
    :cond_2
    sget v2, Lw0/d;->j:I

    .line 8
    sget v5, Lw0/d;->h:I

    const/high16 v8, 0x10000

    if-lt v5, v8, :cond_4

    const v9, 0x10002

    if-gt v5, v9, :cond_4

    .line 9
    sget v5, Lw0/d;->i:I

    rem-int/lit16 v9, v5, 0x2710

    div-int/lit8 v9, v9, 0x64

    .line 10
    rem-int/lit16 v10, v5, 0x2710

    rem-int/lit8 v10, v10, 0x64

    const/16 v11, 0x2710

    if-lt v5, v11, :cond_3

    .line 11
    div-int/2addr v5, v11

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    if-lt v2, v8, :cond_5

    sub-int/2addr v2, v8

    goto :goto_1

    .line 12
    :cond_4
    sget v5, Lw0/d;->i:I

    div-int/lit8 v9, v5, 0x64

    .line 13
    rem-int/lit8 v10, v5, 0x64

    move v5, v3

    .line 14
    :cond_5
    :goto_1
    invoke-static {v9}, Ll0/c0;->L1(I)I

    move-result v8

    aput v8, v1, v6

    .line 15
    invoke-static {v10}, Ll0/c0;->L1(I)I

    move-result v6

    aput v6, v1, v4

    .line 16
    rem-int/lit8 v6, v2, 0x6

    if-nez v6, :cond_6

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v4, v6

    :goto_2
    shl-int/lit8 v2, v5, 0x3

    or-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 17
    invoke-static {v2}, Ll0/c0;->L1(I)I

    move-result v2

    aput v2, v1, v7

    :goto_3
    const/16 v2, 0x9

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_4
    if-ge v3, v0, :cond_7

    add-int/lit8 v4, v3, 0x1

    .line 18
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_4

    .line 19
    :cond_7
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static i0([I)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x7

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v3, p0, v4

    goto :goto_0

    .line 4
    :pswitch_1
    aput v3, p0, v4

    goto :goto_0

    .line 5
    :pswitch_2
    aput v2, p0, v4

    goto :goto_0

    .line 6
    :pswitch_3
    aput v3, p0, v4

    goto :goto_0

    .line 7
    :pswitch_4
    aput v3, p0, v4

    goto :goto_0

    .line 8
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v1, :cond_1

    .line 9
    aput v2, p0, v4

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    .line 10
    aput v2, p0, v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 11
    aput v2, p0, v4

    goto :goto_0

    .line 12
    :pswitch_6
    aput v3, p0, v4

    goto :goto_0

    .line 13
    :pswitch_7
    aput v3, p0, v4

    goto :goto_0

    .line 14
    :pswitch_8
    aput v1, p0, v4

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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

.method public static i1(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    :cond_4
    :goto_0
    return v1
.end method

.method public static j()V
    .locals 8

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/16 v2, 0x82

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x4

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->o0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xa

    const/4 v7, 0x3

    if-eq v5, v2, :cond_3

    if-eq v5, v4, :cond_2

    if-eq v5, v0, :cond_1

    const/16 v2, 0x8

    if-eq v5, v2, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    goto :goto_0

    .line 4
    :cond_1
    sget v2, Ld1/d;->e:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    goto :goto_0

    .line 5
    :cond_2
    sget v2, Lo0/e;->B:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    goto :goto_0

    .line 6
    :cond_3
    sget v2, Lw0/d;->h:I

    const/high16 v5, 0x10000

    if-lt v2, v5, :cond_4

    const v5, 0x10002

    if-gt v2, v5, :cond_4

    .line 7
    sget v2, Lw0/d;->i:I

    div-int/2addr v2, v6

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    goto :goto_0

    .line 8
    :cond_4
    sget v2, Lw0/d;->i:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    :goto_0
    const/4 v2, 0x7

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 9
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 10
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static j0()V
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/16 v7, 0xc

    const/16 v8, 0x12

    const/16 v9, 0x8

    const/16 v10, 0x30

    const/4 v11, 0x3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    aput v7, v1, v4

    aput v10, v1, v11

    goto :goto_0

    :pswitch_1
    aput v9, v1, v4

    aput v8, v1, v11

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x6

    aput v2, v1, v4

    aput v8, v1, v11

    goto :goto_0

    :pswitch_3
    aput v11, v1, v4

    aput v10, v1, v11

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x7

    aput v2, v1, v4

    aput v10, v1, v11

    goto :goto_0

    .line 2
    :pswitch_5
    sget v5, Lo0/e;->H:I

    const/16 v7, 0x21

    if-ne v5, v2, :cond_0

    aput v4, v1, v4

    aput v7, v1, v11

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    const/16 v2, 0x9

    aput v2, v1, v4

    aput v7, v1, v11

    goto :goto_0

    :cond_1
    if-ne v5, v11, :cond_2

    aput v9, v1, v4

    aput v7, v1, v11

    goto :goto_0

    :pswitch_6
    aput v9, v1, v4

    aput v8, v1, v11

    goto :goto_0

    :pswitch_7
    aput v6, v1, v4

    const/16 v2, 0x40

    aput v2, v1, v11

    goto :goto_0

    :pswitch_8
    aput v2, v1, v4

    aput v2, v1, v11

    goto :goto_0

    :pswitch_9
    aput v7, v1, v4

    aput v10, v1, v11

    :cond_2
    :goto_0
    new-array v2, v6, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

.method public static j1(I)I
    .locals 3

    const/16 v0, 0xa

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
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public static k()V
    .locals 8

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/16 v2, 0x82

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x4

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->q0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xa

    const/4 v7, 0x3

    if-eq v5, v2, :cond_4

    if-eq v5, v4, :cond_3

    if-eq v5, v0, :cond_1

    const/16 v2, 0x8

    if-eq v5, v2, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    goto :goto_0

    .line 4
    :cond_1
    sget v5, Ld1/d;->c:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v7

    .line 5
    sget v2, Ld1/d;->e:I

    aput v2, v1, v4

    goto :goto_0

    :cond_2
    aput v3, v1, v7

    aput v3, v1, v4

    goto :goto_0

    .line 6
    :cond_3
    sget v2, Lo0/e;->B:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    goto :goto_0

    .line 7
    :cond_4
    sget v2, Lw0/d;->h:I

    const/high16 v5, 0x10000

    if-lt v2, v5, :cond_5

    const v5, 0x10002

    if-gt v2, v5, :cond_5

    .line 8
    sget v2, Lw0/d;->i:I

    div-int/2addr v2, v6

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    goto :goto_0

    .line 9
    :cond_5
    sget v2, Lw0/d;->i:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    :goto_0
    const/4 v2, 0x7

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_6

    add-int/lit8 v4, v3, 0x1

    .line 10
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 11
    :cond_6
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static k0([I)V
    .locals 8

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xff

    const/4 v2, 0x5

    const/16 v3, 0x9

    const/4 v4, 0x1

    const/16 v5, 0x30

    const/4 v6, 0x3

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0xc0

    .line 3
    aput v0, p0, v7

    .line 4
    aput v5, p0, v6

    goto :goto_0

    .line 5
    :pswitch_1
    aput v3, p0, v7

    .line 6
    aput v5, p0, v6

    goto :goto_0

    .line 7
    :pswitch_2
    aput v3, p0, v7

    .line 8
    aput v1, p0, v6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    .line 9
    aput v0, p0, v7

    .line 10
    aput v5, p0, v6

    goto :goto_0

    .line 11
    :pswitch_4
    aput v6, p0, v7

    .line 12
    aput v5, p0, v6

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x7

    .line 13
    aput v0, p0, v7

    .line 14
    aput v5, p0, v6

    goto :goto_0

    .line 15
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_1

    .line 16
    aput v7, p0, v7

    .line 17
    aput v5, p0, v6

    goto :goto_0

    :cond_1
    if-ne v0, v7, :cond_2

    const/16 v0, 0x8

    .line 18
    aput v0, p0, v7

    .line 19
    aput v5, p0, v6

    goto :goto_0

    :cond_2
    if-ne v0, v6, :cond_3

    .line 20
    aput v3, p0, v7

    .line 21
    aput v5, p0, v6

    goto :goto_0

    .line 22
    :pswitch_7
    aput v2, p0, v7

    .line 23
    aput v1, p0, v6

    goto :goto_0

    .line 24
    :pswitch_8
    aput v2, p0, v7

    .line 25
    aput v5, p0, v6

    goto :goto_0

    .line 26
    :pswitch_9
    aput v4, p0, v7

    .line 27
    aput v4, p0, v6

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static k1(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xff

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static l()V
    .locals 16

    const/16 v0, 0x23

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x90

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x21

    aput v3, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->O([I)V

    .line 2
    sget v4, Lu0/b;->D:I

    const/16 v7, 0x16

    const/16 v8, 0x14

    const/16 v9, 0x12

    const/16 v10, 0x10

    const/16 v11, 0xe

    const/16 v12, 0xc

    const/16 v13, 0x4d

    const/16 v14, 0x20

    const/4 v15, 0x6

    const/4 v0, 0x4

    const/16 v5, 0x8

    const/16 v3, 0xa

    if-eq v4, v2, :cond_9

    const/4 v2, 0x2

    if-eq v4, v2, :cond_8

    const/4 v2, 0x3

    if-eq v4, v2, :cond_7

    const/16 v2, 0x44

    if-eq v4, v0, :cond_3

    const/4 v6, 0x5

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_1

    if-eq v4, v3, :cond_1

    const/16 v3, 0xd

    if-eq v4, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v3, 0x43

    aput v3, v1, v0

    aput v2, v1, v15

    goto/16 :goto_3

    :cond_1
    aput v13, v1, v0

    const/16 v0, 0x50

    aput v0, v1, v15

    const/16 v0, 0x33

    aput v0, v1, v5

    aput v14, v1, v3

    .line 3
    sget v0, Lu0/b;->t3:I

    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 4
    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    div-int/2addr v2, v3

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    .line 5
    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    const/16 v2, 0x3a

    aput v2, v1, v9

    .line 6
    rem-int/lit16 v2, v0, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v8

    .line 7
    rem-int/lit16 v2, v0, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    div-int/2addr v2, v3

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v7

    .line 8
    rem-int/lit16 v0, v0, 0xe10

    rem-int/lit8 v0, v0, 0x3c

    rem-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x30

    const/16 v2, 0x18

    aput v0, v1, v2

    .line 9
    sget v0, Lu0/b;->r3:I

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x21

    aput v2, v1, v3

    const/16 v2, 0x22

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v2

    goto/16 :goto_3

    :cond_2
    const/16 v2, 0x41

    aput v2, v1, v0

    const/16 v0, 0x55

    aput v0, v1, v15

    const/16 v0, 0x58

    aput v0, v1, v5

    goto/16 :goto_3

    .line 10
    :cond_3
    sget v4, Lo0/e;->H:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    aput v2, v1, v0

    const/16 v0, 0x56

    aput v0, v1, v15

    aput v2, v1, v5

    goto :goto_0

    :cond_4
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    const/16 v4, 0x53

    aput v4, v1, v0

    aput v2, v1, v15

    aput v14, v1, v5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v4, v2, :cond_6

    const/16 v2, 0x55

    aput v2, v1, v0

    const/16 v0, 0x53

    aput v0, v1, v15

    const/16 v0, 0x42

    aput v0, v1, v5

    :cond_6
    :goto_0
    aput v14, v1, v3

    .line 11
    sget v0, Lo0/e;->r:I

    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 12
    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    div-int/2addr v2, v3

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    .line 13
    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    const/16 v2, 0x3a

    aput v2, v1, v9

    .line 14
    rem-int/lit16 v2, v0, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v8

    .line 15
    rem-int/lit16 v2, v0, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    div-int/2addr v2, v3

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v7

    .line 16
    rem-int/lit16 v0, v0, 0xe10

    rem-int/lit8 v0, v0, 0x3c

    rem-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x30

    const/16 v2, 0x18

    aput v0, v1, v2

    goto/16 :goto_3

    :cond_7
    const/16 v2, 0x42

    aput v2, v1, v0

    const/16 v0, 0x54

    aput v0, v1, v15

    aput v14, v1, v5

    aput v13, v1, v3

    const/16 v0, 0x75

    aput v0, v1, v12

    const/16 v0, 0x73

    aput v0, v1, v11

    const/16 v0, 0x69

    aput v0, v1, v10

    const/16 v0, 0x63

    aput v0, v1, v9

    goto/16 :goto_3

    :cond_8
    const/16 v2, 0x42

    aput v2, v1, v0

    const/16 v0, 0x54

    aput v0, v1, v15

    aput v14, v1, v5

    const/16 v0, 0x50

    aput v0, v1, v3

    const/16 v0, 0x68

    aput v0, v1, v12

    const/16 v0, 0x6f

    aput v0, v1, v11

    const/16 v0, 0x6e

    aput v0, v1, v10

    const/16 v0, 0x65

    aput v0, v1, v9

    goto/16 :goto_3

    .line 17
    :cond_9
    sget v2, Lw0/d;->h:I

    const/high16 v4, 0x10000

    if-ne v2, v4, :cond_a

    const/16 v4, 0x46

    aput v4, v1, v0

    aput v13, v1, v15

    const/16 v0, 0x31

    aput v0, v1, v5

    goto :goto_1

    :cond_a
    const v4, 0x10001

    if-ne v2, v4, :cond_b

    const/16 v4, 0x46

    aput v4, v1, v0

    aput v13, v1, v15

    const/16 v0, 0x32

    aput v0, v1, v5

    goto :goto_1

    :cond_b
    const v4, 0x10002

    if-ne v2, v4, :cond_c

    const/16 v4, 0x46

    aput v4, v1, v0

    aput v13, v1, v15

    const/16 v0, 0x33

    aput v0, v1, v5

    goto :goto_1

    :cond_c
    if-nez v2, :cond_d

    const/16 v4, 0x41

    aput v4, v1, v0

    aput v13, v1, v15

    const/16 v0, 0x31

    aput v0, v1, v5

    goto :goto_1

    :cond_d
    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    const/16 v4, 0x41

    aput v4, v1, v0

    aput v13, v1, v15

    const/16 v0, 0x32

    aput v0, v1, v5

    :cond_e
    :goto_1
    aput v14, v1, v3

    const/high16 v0, 0x10000

    if-lt v2, v0, :cond_10

    const v0, 0x10002

    if-gt v2, v0, :cond_10

    .line 18
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x2710

    if-eqz v2, :cond_f

    .line 19
    div-int/lit16 v2, v0, 0x2710

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 20
    div-int/lit16 v2, v0, 0x3e8

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    .line 21
    div-int/lit8 v2, v0, 0x64

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    const/16 v2, 0x2e

    aput v2, v1, v9

    .line 22
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v8

    .line 23
    rem-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v7

    const/16 v0, 0x18

    aput v14, v1, v0

    const/16 v0, 0x1a

    aput v13, v1, v0

    const/16 v0, 0x1c

    const/16 v2, 0x68

    aput v2, v1, v0

    const/16 v0, 0x1e

    const/16 v2, 0x7a

    aput v2, v1, v0

    goto/16 :goto_2

    .line 24
    :cond_f
    div-int/lit16 v2, v0, 0x3e8

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 25
    div-int/lit8 v2, v0, 0x64

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    const/16 v2, 0x2e

    aput v2, v1, v10

    .line 26
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    .line 27
    rem-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v8

    aput v14, v1, v7

    const/16 v0, 0x18

    aput v13, v1, v0

    const/16 v0, 0x1a

    const/16 v2, 0x68

    aput v2, v1, v0

    const/16 v0, 0x1c

    const/16 v2, 0x7a

    aput v2, v1, v0

    goto :goto_2

    .line 28
    :cond_10
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x3e8

    rem-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 29
    div-int/lit16 v2, v0, 0x3e8

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 30
    div-int/lit8 v2, v0, 0x64

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    .line 31
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    .line 32
    rem-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v9

    aput v14, v1, v8

    const/16 v0, 0x4b

    aput v0, v1, v7

    const/16 v0, 0x68

    const/16 v2, 0x18

    aput v0, v1, v2

    const/16 v0, 0x1a

    const/16 v2, 0x7a

    aput v2, v1, v0

    goto :goto_2

    .line 33
    :cond_11
    div-int/lit8 v2, v0, 0x64

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 34
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    .line 35
    rem-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v10

    aput v14, v1, v9

    const/16 v0, 0x4b

    aput v0, v1, v8

    const/16 v0, 0x68

    aput v0, v1, v7

    const/16 v0, 0x7a

    const/16 v2, 0x18

    aput v0, v1, v2

    .line 36
    :goto_2
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_12

    const v2, 0x10002

    if-gt v0, v2, :cond_12

    .line 37
    sget v0, Lw0/d;->i:I

    div-int/lit8 v2, v0, 0xa

    shr-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x21

    aput v2, v1, v4

    const/16 v2, 0x22

    .line 38
    div-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v2

    goto :goto_3

    .line 39
    :cond_12
    sget v0, Lw0/d;->i:I

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x21

    aput v2, v1, v3

    const/16 v2, 0x22

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v2

    :goto_3
    const/16 v0, 0x24

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0x23

    :goto_4
    if-ge v2, v3, :cond_13

    add-int/lit8 v4, v2, 0x1

    .line 40
    aget v2, v1, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_4

    .line 41
    :cond_13
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static l0()V
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x8

    const/16 v7, 0x12

    const/16 v8, 0x30

    const/4 v9, 0x5

    const/16 v10, 0x10

    const/4 v11, 0x3

    packed-switch v5, :pswitch_data_0

    const/16 v2, 0xb

    aput v2, v1, v4

    aput v10, v1, v11

    goto :goto_0

    :pswitch_0
    aput v6, v1, v4

    aput v7, v1, v11

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x6

    aput v2, v1, v4

    aput v7, v1, v11

    goto :goto_0

    :pswitch_2
    aput v11, v1, v4

    aput v8, v1, v11

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x7

    aput v2, v1, v4

    aput v8, v1, v11

    goto :goto_0

    .line 2
    :pswitch_4
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_0

    aput v4, v1, v4

    aput v10, v1, v11

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    aput v6, v1, v4

    aput v10, v1, v11

    goto :goto_0

    :cond_1
    if-ne v5, v11, :cond_2

    const/16 v2, 0x9

    aput v2, v1, v4

    aput v10, v1, v11

    goto :goto_0

    :pswitch_5
    aput v9, v1, v4

    const/16 v2, 0x40

    aput v2, v1, v11

    goto :goto_0

    :pswitch_6
    aput v2, v1, v4

    aput v2, v1, v11

    :cond_2
    :goto_0
    new-array v2, v9, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static l1(I)I
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0xff

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v3, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_4

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :cond_4
    :goto_0
    return v1
.end method

.method public static m()V
    .locals 12

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->P([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    if-eq v5, v2, :cond_2

    const/16 v2, 0x9

    if-eq v5, v4, :cond_1

    if-eq v5, v0, :cond_1

    if-eq v5, v6, :cond_1

    if-eq v5, v10, :cond_0

    goto/16 :goto_1

    :cond_0
    aput v3, v1, v10

    .line 3
    sget v5, Lo0/e;->B:I

    aput v5, v1, v9

    .line 4
    sget v5, Lo0/e;->C:I

    aput v5, v1, v8

    .line 5
    sget v5, Lo0/e;->r:I

    rem-int/lit16 v6, v5, 0xe10

    aput v6, v1, v7

    .line 6
    rem-int/lit16 v6, v5, 0xe10

    div-int/lit8 v6, v6, 0x3c

    aput v6, v1, v4

    .line 7
    rem-int/lit16 v5, v5, 0xe10

    rem-int/lit8 v5, v5, 0x3c

    aput v5, v1, v2

    goto :goto_1

    :cond_1
    aput v3, v1, v10

    .line 8
    sget v5, Lu0/b;->r3:I

    aput v5, v1, v9

    .line 9
    sget v5, Lu0/b;->s3:I

    aput v5, v1, v8

    .line 10
    sget v5, Lu0/b;->t3:I

    div-int/lit16 v6, v5, 0xe10

    aput v6, v1, v7

    .line 11
    rem-int/lit16 v6, v5, 0xe10

    div-int/lit8 v6, v6, 0x3c

    aput v6, v1, v4

    .line 12
    rem-int/lit16 v5, v5, 0xe10

    rem-int/lit8 v5, v5, 0x3c

    aput v5, v1, v2

    goto :goto_1

    .line 13
    :cond_2
    sget v5, Lw0/d;->h:I

    const/high16 v11, 0x10000

    if-ne v5, v11, :cond_3

    aput v2, v1, v10

    goto :goto_0

    :cond_3
    const v11, 0x10001

    if-ne v5, v11, :cond_4

    const/4 v2, 0x2

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v11, 0x10002

    if-ne v5, v11, :cond_5

    aput v6, v1, v10

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    const/16 v2, 0x11

    aput v2, v1, v10

    goto :goto_0

    :cond_6
    if-ne v5, v2, :cond_7

    const/16 v2, 0x12

    aput v2, v1, v10

    .line 14
    :cond_7
    :goto_0
    sget v2, Lw0/d;->i:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 15
    sget v2, Lw0/d;->j:I

    aput v2, v1, v7

    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 16
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 17
    :cond_8
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static m0([I)V
    .locals 9

    if-eqz p0, :cond_9

    .line 1
    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 3
    :pswitch_1
    aput v2, p0, v6

    goto/16 :goto_3

    .line 4
    :pswitch_2
    aput v3, p0, v6

    goto/16 :goto_3

    .line 5
    :pswitch_3
    aput v4, p0, v6

    goto/16 :goto_3

    :pswitch_4
    const/4 v0, 0x7

    .line 6
    aput v0, p0, v6

    goto/16 :goto_3

    .line 7
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 8
    aput v6, p0, v6

    goto :goto_3

    :cond_1
    if-ne v0, v6, :cond_2

    const/16 v0, 0x9

    .line 9
    aput v0, p0, v6

    goto :goto_3

    :cond_2
    if-ne v0, v4, :cond_9

    .line 10
    aput v2, p0, v6

    goto :goto_3

    :pswitch_6
    const/16 v0, 0xa

    .line 11
    aput v0, p0, v6

    goto :goto_3

    .line 12
    :pswitch_7
    aput v1, p0, v6

    goto :goto_3

    .line 13
    :pswitch_8
    aput v5, p0, v6

    .line 14
    sget v0, Lw0/d;->j:I

    .line 15
    sget v1, Lw0/d;->h:I

    const/4 v2, 0x0

    const/4 v7, 0x4

    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    const/high16 v8, 0x10000

    packed-switch v1, :pswitch_data_1

    :cond_3
    :goto_0
    move v5, v2

    goto :goto_1

    :pswitch_9
    if-lt v0, v8, :cond_4

    sub-int/2addr v0, v8

    :cond_4
    move v5, v6

    goto :goto_1

    :pswitch_a
    if-lt v0, v8, :cond_7

    sub-int/2addr v0, v8

    goto :goto_1

    :pswitch_b
    if-lt v0, v8, :cond_3

    sub-int/2addr v0, v8

    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_1

    :cond_6
    move v5, v4

    .line 16
    :cond_7
    :goto_1
    rem-int/lit8 v1, v0, 0x6

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    .line 17
    aput v3, p0, v7

    goto :goto_2

    .line 18
    :cond_8
    aput v1, p0, v7

    .line 19
    :goto_2
    aget v0, p0, v7

    shl-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x38

    aput v0, p0, v7

    .line 20
    aget v0, p0, v7

    or-int/2addr v0, v5

    aput v0, p0, v7

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static m1(I)I
    .locals 2

    const/16 v0, 0xff

    const/16 v1, 0xa

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x9

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n()V
    .locals 14

    .line 1
    invoke-static {}, Ll0/c0;->X()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xe3

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x0

    if-eq v0, v8, :cond_4

    const/16 v11, 0xc3

    const/16 v12, 0x9

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_0

    const/16 v13, 0xa

    if-eq v0, v13, :cond_0

    new-array v0, v12, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_0
    new-array v0, v4, [I

    aput v11, v0, v10

    aput v9, v0, v8

    .line 4
    sget v8, Lu0/b;->s3:I

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v7

    .line 5
    sget v7, Lu0/b;->r3:I

    and-int/lit16 v7, v7, 0xff

    aput v7, v0, v3

    aput v10, v0, v5

    aput v10, v0, v6

    .line 6
    sget v3, Lu0/b;->t3:I

    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v0, v9

    .line 7
    rem-int/lit16 v3, v3, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    aput v3, v0, v2

    new-array v2, v12, [I

    aput v1, v2, v10

    :goto_0
    if-ge v10, v4, :cond_1

    add-int/lit8 v1, v10, 0x1

    .line 8
    aget v3, v0, v10

    aput v3, v2, v1

    move v10, v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_2
    new-array v0, v4, [I

    aput v11, v0, v10

    aput v9, v0, v8

    .line 10
    sget v8, Lo0/e;->C:I

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v7

    .line 11
    sget v7, Lo0/e;->B:I

    and-int/lit16 v7, v7, 0xff

    aput v7, v0, v3

    aput v10, v0, v5

    aput v10, v0, v6

    .line 12
    sget v3, Lo0/e;->r:I

    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v0, v9

    .line 13
    rem-int/lit16 v3, v3, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    aput v3, v0, v2

    new-array v2, v12, [I

    aput v1, v2, v10

    :goto_1
    if-ge v10, v4, :cond_3

    add-int/lit8 v1, v10, 0x1

    .line 14
    aget v3, v0, v10

    aput v3, v2, v1

    move v10, v1

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_5

    :cond_4
    new-array v0, v9, [I

    const/16 v11, 0xc2

    aput v11, v0, v10

    aput v5, v0, v8

    .line 16
    sget v11, Lw0/d;->h:I

    const/16 v12, 0x10

    if-eqz v11, :cond_6

    if-eq v11, v8, :cond_5

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    aput v10, v0, v7

    goto :goto_2

    :pswitch_1
    aput v10, v0, v7

    goto :goto_2

    :pswitch_2
    aput v10, v0, v7

    goto :goto_2

    :cond_5
    aput v12, v0, v7

    goto :goto_2

    :cond_6
    aput v12, v0, v7

    .line 17
    :goto_2
    sget v7, Lw0/d;->i:I

    and-int/lit16 v8, v7, 0xff

    aput v8, v0, v3

    shr-int/lit8 v3, v7, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v5

    .line 18
    sget v3, Lw0/d;->j:I

    rem-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_7

    if-eqz v3, :cond_7

    aput v9, v0, v6

    goto :goto_3

    .line 19
    :cond_7
    rem-int/2addr v3, v9

    aput v3, v0, v6

    .line 20
    :goto_3
    aget v3, v0, v6

    if-nez v3, :cond_8

    aput v9, v0, v6

    :cond_8
    new-array v2, v2, [I

    aput v1, v2, v10

    :goto_4
    if-ge v10, v9, :cond_9

    add-int/lit8 v1, v10, 0x1

    .line 21
    aget v3, v0, v10

    aput v3, v2, v1

    move v10, v1

    goto :goto_4

    .line 22
    :cond_9
    invoke-static {v2}, Lz/k;->s([I)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static n0([I)V
    .locals 6

    if-eqz p0, :cond_4

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3
    :pswitch_1
    aput v1, p0, v5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 4
    aput v0, p0, v5

    goto :goto_0

    .line 5
    :pswitch_3
    aput v4, p0, v5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 6
    aput v0, p0, v5

    goto :goto_0

    .line 7
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v3, :cond_1

    .line 8
    aput v5, p0, v5

    goto :goto_0

    .line 9
    :cond_1
    aput v1, p0, v5

    goto :goto_0

    .line 10
    :pswitch_6
    aput v2, p0, v5

    const/16 v0, 0x32

    .line 11
    aput v0, p0, v4

    goto :goto_0

    .line 12
    :pswitch_7
    aput v2, p0, v5

    .line 13
    aput v3, p0, v4

    goto :goto_0

    .line 14
    :pswitch_8
    aput v3, p0, v5

    .line 15
    sget v0, Lw0/d;->h:I

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 16
    :pswitch_9
    aput v5, p0, v4

    goto :goto_0

    .line 17
    :pswitch_a
    aput v5, p0, v4

    goto :goto_0

    .line 18
    :pswitch_b
    aput v3, p0, v4

    goto :goto_0

    .line 19
    :cond_2
    aput v4, p0, v4

    goto :goto_0

    .line 20
    :cond_3
    aput v4, p0, v4

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static n1(I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public static o()V
    .locals 14

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x84

    aput v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x5

    aput v5, v1, v4

    .line 1
    invoke-static {v1}, Ll0/c0;->R([I)V

    .line 2
    sget v6, Lu0/b;->D:I

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eq v6, v4, :cond_2

    if-eq v6, v10, :cond_1

    if-eq v6, v7, :cond_0

    const/16 v3, 0xa

    if-eq v6, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    aput v9, v1, v9

    .line 3
    sget v3, Lu0/b;->r3:I

    and-int/lit16 v4, v3, 0xff

    aput v4, v1, v10

    shr-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    and-int/2addr v3, v9

    shl-int/2addr v3, v8

    .line 4
    sget v4, Lu0/b;->t3:I

    rem-int/lit16 v6, v4, 0xe10

    rem-int/lit8 v6, v6, 0x3c

    or-int/2addr v3, v6

    aput v3, v1, v5

    .line 5
    rem-int/lit16 v4, v4, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v1, v8

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x23

    aput v3, v1, v9

    .line 6
    sget v3, Lo0/e;->B:I

    and-int/lit16 v4, v3, 0xff

    aput v4, v1, v10

    shr-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    and-int/2addr v3, v9

    shl-int/2addr v3, v8

    .line 7
    sget v4, Lo0/e;->r:I

    rem-int/lit16 v6, v4, 0xe10

    rem-int/lit8 v6, v6, 0x3c

    or-int/2addr v3, v6

    aput v3, v1, v5

    .line 8
    rem-int/lit16 v4, v4, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v1, v8

    goto :goto_3

    :cond_2
    aput v3, v1, v2

    aput v5, v1, v4

    const/4 v3, 0x2

    aput v4, v1, v3

    aput v2, v1, v9

    .line 9
    sget v6, Lw0/d;->j:I

    .line 10
    sget v11, Lw0/d;->h:I

    const/high16 v12, 0x10000

    if-ne v11, v12, :cond_3

    aput v2, v1, v10

    if-lt v6, v12, :cond_7

    :goto_0
    sub-int/2addr v6, v12

    goto :goto_1

    :cond_3
    const v13, 0x10001

    if-ne v11, v13, :cond_4

    aput v4, v1, v10

    if-lt v6, v12, :cond_7

    goto :goto_0

    :cond_4
    const v13, 0x10002

    if-ne v11, v13, :cond_5

    aput v3, v1, v10

    if-lt v6, v12, :cond_7

    goto :goto_0

    :cond_5
    if-nez v11, :cond_6

    aput v9, v1, v10

    goto :goto_1

    :cond_6
    if-ne v11, v4, :cond_7

    aput v10, v1, v10

    .line 11
    :cond_7
    :goto_1
    rem-int/lit8 v3, v6, 0x6

    if-nez v3, :cond_8

    if-eqz v6, :cond_8

    .line 12
    aget v3, v1, v10

    or-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    goto :goto_2

    .line 13
    :cond_8
    aget v4, v1, v10

    shl-int/2addr v3, v9

    or-int/2addr v3, v4

    aput v3, v1, v10

    .line 14
    :goto_2
    sget v3, Lw0/d;->i:I

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v5

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v8

    :goto_3
    new-array v3, v7, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_4
    if-ge v2, v0, :cond_9

    add-int/lit8 v4, v2, 0x1

    .line 15
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_4

    .line 16
    :cond_9
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static o0([I)V
    .locals 7

    if-eqz p0, :cond_5

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x4

    const/16 v3, 0xa

    const/16 v4, 0xf

    const/4 v5, 0x1

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v4, p0, v6

    goto :goto_0

    .line 4
    :pswitch_1
    aput v2, p0, v6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    .line 5
    aput v0, p0, v6

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb

    .line 6
    aput v0, p0, v6

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x9

    .line 7
    aput v0, p0, v6

    goto :goto_0

    .line 8
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    const/4 v0, 0x6

    .line 9
    aput v0, p0, v6

    goto :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    .line 10
    aput v1, p0, v6

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_5

    .line 11
    aput v2, p0, v6

    goto :goto_0

    .line 12
    :pswitch_6
    aput v3, p0, v6

    goto :goto_0

    .line 13
    :pswitch_7
    aput v3, p0, v6

    goto :goto_0

    .line 14
    :pswitch_8
    sget v0, Lw0/d;->h:I

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 15
    :pswitch_9
    aput v5, p0, v6

    goto :goto_0

    .line 16
    :pswitch_a
    aput v5, p0, v6

    goto :goto_0

    .line 17
    :pswitch_b
    aput v5, p0, v6

    goto :goto_0

    .line 18
    :cond_3
    aput v6, p0, v6

    goto :goto_0

    .line 19
    :cond_4
    aput v6, p0, v6

    goto :goto_0

    .line 20
    :pswitch_c
    aput v4, p0, v6

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static o1(I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    div-int/lit8 p0, p0, 0x3

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public static p()V
    .locals 14

    const/16 v0, 0xb

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x9

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->S([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/16 v9, 0x8

    const/4 v10, 0x3

    if-eq v5, v2, :cond_1

    if-eq v5, v9, :cond_0

    const/16 v2, 0xa

    if-eq v5, v2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    sget v2, Lu0/b;->s3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v10

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 4
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    const/4 v2, 0x7

    .line 5
    sget v5, Lu0/b;->t3:I

    div-int/lit16 v6, v5, 0xe10

    aput v6, v1, v2

    .line 6
    rem-int/lit16 v2, v5, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    .line 7
    rem-int/lit16 v5, v5, 0xe10

    rem-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    goto :goto_2

    .line 8
    :cond_1
    sget v4, Lw0/d;->j:I

    .line 9
    sget v5, Lw0/d;->i:I

    .line 10
    sget v11, Lw0/d;->h:I

    const/high16 v12, 0x10000

    if-ne v11, v12, :cond_2

    aput v2, v1, v10

    if-lt v4, v12, :cond_6

    :goto_0
    sub-int/2addr v4, v12

    goto :goto_1

    :cond_2
    const v13, 0x10001

    if-ne v11, v13, :cond_3

    const/4 v2, 0x2

    aput v2, v1, v10

    if-lt v4, v12, :cond_6

    goto :goto_0

    :cond_3
    const v13, 0x10002

    if-ne v11, v13, :cond_4

    aput v10, v1, v10

    if-lt v4, v12, :cond_6

    goto :goto_0

    :cond_4
    if-nez v11, :cond_5

    const/16 v2, 0x11

    aput v2, v1, v10

    goto :goto_1

    :cond_5
    if-ne v11, v2, :cond_6

    const/16 v2, 0x12

    aput v2, v1, v10

    :cond_6
    :goto_1
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v7

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 11
    rem-int/lit8 v2, v4, 0x6

    if-nez v2, :cond_7

    if-eqz v4, :cond_7

    aput v8, v1, v8

    goto :goto_2

    :cond_7
    aput v2, v1, v8

    :goto_2
    const/16 v2, 0xc

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 12
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 13
    :cond_8
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static p0()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0x82

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Lu0/b;->D:I

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/4 v7, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    aput v5, v1, v7

    goto :goto_0

    :pswitch_1
    aput v6, v1, v7

    goto :goto_0

    :pswitch_2
    aput v6, v1, v7

    goto :goto_0

    :pswitch_3
    aput v5, v1, v7

    goto :goto_0

    :pswitch_4
    aput v0, v1, v7

    goto :goto_0

    .line 2
    :pswitch_5
    sget v4, Lo0/e;->H:I

    if-ne v4, v2, :cond_0

    aput v7, v1, v7

    goto :goto_0

    :cond_0
    aput v6, v1, v7

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x7

    aput v2, v1, v7

    goto :goto_0

    :pswitch_7
    const/4 v2, 0x5

    aput v2, v1, v7

    goto :goto_0

    :pswitch_8
    aput v2, v1, v7

    :goto_0
    new-array v2, v6, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public static p1(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static q()V
    .locals 12

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->T([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    aput v3, v1, v6

    goto :goto_3

    :pswitch_2
    aput v3, v1, v6

    goto :goto_3

    :pswitch_3
    aput v2, v1, v6

    .line 3
    sget v5, Lw0/d;->j:I

    .line 4
    sget v7, Lw0/d;->i:I

    .line 5
    sget v8, Lw0/d;->h:I

    const/4 v9, 0x4

    const/high16 v10, 0x10000

    if-ne v8, v10, :cond_0

    aput v2, v1, v9

    if-lt v5, v10, :cond_4

    :goto_0
    sub-int/2addr v5, v10

    goto :goto_1

    :cond_0
    const v11, 0x10001

    if-ne v8, v11, :cond_1

    const/4 v2, 0x2

    aput v2, v1, v9

    if-lt v5, v10, :cond_4

    goto :goto_0

    :cond_1
    const v11, 0x10002

    if-ne v8, v11, :cond_2

    aput v6, v1, v9

    if-lt v5, v10, :cond_4

    goto :goto_0

    :cond_2
    if-nez v8, :cond_3

    const/16 v2, 0x11

    aput v2, v1, v9

    goto :goto_1

    :cond_3
    if-ne v8, v2, :cond_4

    const/16 v2, 0x12

    aput v2, v1, v9

    :cond_4
    :goto_1
    const/4 v2, 0x5

    and-int/lit16 v6, v7, 0xff

    aput v6, v1, v2

    shr-int/lit8 v2, v7, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v6, 0x6

    aput v2, v1, v6

    .line 6
    rem-int/lit8 v2, v5, 0x6

    const/4 v7, 0x7

    if-nez v2, :cond_5

    if-eqz v5, :cond_5

    aput v6, v1, v7

    goto :goto_2

    :cond_5
    aput v2, v1, v7

    :goto_2
    aput v3, v1, v4

    const/16 v2, 0x9

    aput v3, v1, v2

    goto :goto_3

    :pswitch_4
    aput v3, v1, v6

    :goto_3
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_4
    if-ge v3, v0, :cond_6

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_4

    .line 8
    :cond_6
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static q0([I)V
    .locals 6

    if-eqz p0, :cond_5

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x4

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3
    :pswitch_1
    aput v2, p0, v5

    goto :goto_0

    .line 4
    :pswitch_2
    aput v3, p0, v5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    .line 5
    aput v0, p0, v5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    .line 6
    aput v0, p0, v5

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xb

    .line 7
    aput v0, p0, v5

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x9

    .line 8
    aput v0, p0, v5

    goto :goto_0

    .line 9
    :pswitch_7
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x6

    .line 10
    aput v0, p0, v5

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 11
    aput v1, p0, v5

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_5

    .line 12
    aput v2, p0, v5

    goto :goto_0

    .line 13
    :pswitch_8
    aput v3, p0, v5

    goto :goto_0

    .line 14
    :pswitch_9
    aput v3, p0, v5

    goto :goto_0

    .line 15
    :pswitch_a
    sget v0, Lw0/d;->h:I

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 16
    :pswitch_b
    aput v4, p0, v5

    goto :goto_0

    .line 17
    :pswitch_c
    aput v4, p0, v5

    goto :goto_0

    .line 18
    :pswitch_d
    aput v4, p0, v5

    goto :goto_0

    .line 19
    :cond_3
    aput v5, p0, v5

    goto :goto_0

    .line 20
    :cond_4
    aput v5, p0, v5

    goto :goto_0

    :pswitch_e
    const/4 v0, 0x0

    .line 21
    aput v0, p0, v5

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static q1(I)I
    .locals 1

    const/16 v0, 0xa

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public static r()V
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/16 v2, 0x83

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x4

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->U([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    if-eq v5, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v5, Lw0/d;->i:I

    .line 4
    sget v6, Lw0/d;->h:I

    const/high16 v7, 0x10000

    const/4 v8, 0x3

    if-lt v6, v7, :cond_1

    const v7, 0x10002

    if-gt v6, v7, :cond_1

    aput v2, v1, v8

    add-int/lit16 v5, v5, -0x222e

    .line 5
    div-int/lit8 v5, v5, 0xa

    aput v5, v1, v4

    const/4 v2, 0x5

    aput v3, v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    aput v2, v1, v8

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v4

    :goto_0
    const/4 v2, 0x7

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 6
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static r0()V
    .locals 17

    const/16 v0, 0xc

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
    const/16 v3, 0x70

    aput v3, v1, v2

    const/4 v3, 0x1

    const/16 v5, 0xa

    aput v5, v1, v3

    const/4 v6, 0x2

    aput v6, v1, v6

    .line 2
    sget v7, Lu0/b;->D:I

    const/16 v8, 0xb

    const/16 v9, 0x4d

    const/16 v10, 0x9

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/16 v15, 0x8

    const/4 v0, 0x3

    if-eq v7, v3, :cond_3

    if-eq v7, v6, :cond_2

    if-eq v7, v0, :cond_2

    if-eq v7, v15, :cond_1

    if-eq v7, v5, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    sget v3, Lu0/b;->r3:I

    div-int/lit16 v4, v3, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v0

    .line 4
    rem-int/lit16 v0, v3, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 5
    rem-int/lit8 v0, v3, 0x64

    div-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v13

    .line 6
    rem-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    const/16 v0, 0x2f

    aput v0, v1, v11

    .line 7
    sget v0, Lu0/b;->s3:I

    div-int/lit16 v3, v0, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    .line 8
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 9
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v5

    .line 10
    rem-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v8

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x42

    aput v3, v1, v0

    const/16 v0, 0x54

    aput v0, v1, v14

    aput v4, v1, v13

    aput v9, v1, v12

    const/16 v0, 0x75

    aput v0, v1, v11

    const/16 v0, 0x73

    aput v0, v1, v15

    const/16 v0, 0x69

    aput v0, v1, v10

    const/16 v0, 0x63

    aput v0, v1, v5

    goto/16 :goto_1

    .line 11
    :cond_3
    sget v3, Lw0/d;->h:I

    const/high16 v4, 0x10000

    const/16 v6, 0x7a

    const/16 v7, 0x68

    if-lt v3, v4, :cond_5

    const v4, 0x10002

    if-gt v3, v4, :cond_5

    .line 12
    sget v3, Lw0/d;->i:I

    div-int/lit16 v4, v3, 0x2710

    const/16 v16, 0x2e

    if-nez v4, :cond_4

    .line 13
    div-int/lit16 v4, v3, 0x3e8

    rem-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v0

    .line 14
    div-int/lit8 v0, v3, 0x64

    rem-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    aput v16, v1, v13

    .line 15
    div-int/lit8 v0, v3, 0xa

    rem-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    .line 16
    rem-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    aput v9, v1, v15

    aput v7, v1, v10

    aput v6, v1, v5

    goto :goto_1

    .line 17
    :cond_4
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v0

    .line 18
    div-int/lit16 v0, v3, 0x3e8

    rem-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 19
    div-int/lit8 v0, v3, 0x64

    rem-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v13

    aput v16, v1, v12

    .line 20
    div-int/lit8 v0, v3, 0xa

    rem-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    .line 21
    rem-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    aput v9, v1, v10

    aput v7, v1, v5

    aput v6, v1, v8

    goto :goto_1

    .line 22
    :cond_5
    sget v3, Lw0/d;->i:I

    div-int/lit16 v4, v3, 0x3e8

    rem-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v0

    .line 23
    div-int/lit8 v0, v3, 0x64

    rem-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 24
    div-int/lit8 v0, v3, 0xa

    rem-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v13

    .line 25
    rem-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    const/16 v0, 0x4b

    aput v0, v1, v11

    aput v7, v1, v15

    aput v6, v1, v10

    :goto_1
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xc

    :goto_2
    if-ge v2, v3, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 26
    aget v2, v1, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_2

    .line 27
    :cond_6
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static r1(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    goto :goto_0

    :cond_3
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public static s()V
    .locals 0

    .line 1
    invoke-static {}, Ll0/c0;->p0()V

    return-void
.end method

.method public static s0()V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    const/16 v6, 0x24

    if-le v4, v6, :cond_0

    aput v6, v1, v5

    .line 2
    :cond_0
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_1

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_2

    .line 3
    :cond_1
    aget v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static s1(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_0

    :cond_2
    const/16 p0, 0x9

    :goto_0
    return p0
.end method

.method public static t()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->V([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x9

    const/4 v7, 0x5

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 4
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 5
    sget v2, Lu0/b;->t3:I

    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto/16 :goto_3

    .line 7
    :cond_1
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v10

    .line 8
    sget v2, Lo0/e;->B:I

    aput v2, v1, v7

    .line 9
    sget v2, Lo0/e;->C:I

    aput v2, v1, v9

    .line 10
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v8

    .line 11
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto/16 :goto_3

    .line 13
    :cond_2
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 14
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 15
    sget v2, Lo0/e;->r:I

    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto :goto_3

    .line 17
    :cond_3
    sget v5, Lw0/d;->j:I

    .line 18
    sget v11, Lw0/d;->h:I

    const/high16 v12, 0x10000

    if-ne v11, v12, :cond_4

    aput v2, v1, v10

    if-lt v5, v12, :cond_8

    :goto_0
    sub-int/2addr v5, v12

    goto :goto_1

    :cond_4
    const v13, 0x10001

    if-ne v11, v13, :cond_5

    const/4 v2, 0x2

    aput v2, v1, v10

    if-lt v5, v12, :cond_8

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v11, v13, :cond_6

    aput v3, v1, v10

    if-lt v5, v12, :cond_8

    goto :goto_0

    :cond_6
    const/16 v12, 0x10

    if-nez v11, :cond_7

    aput v12, v1, v10

    goto :goto_1

    :cond_7
    if-ne v11, v2, :cond_8

    aput v12, v1, v10

    .line 19
    :cond_8
    :goto_1
    sget v2, Lw0/d;->i:I

    and-int/lit16 v10, v2, 0xff

    aput v10, v1, v7

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 20
    rem-int/lit8 v2, v5, 0x6

    if-nez v2, :cond_9

    if-eqz v5, :cond_9

    aput v9, v1, v8

    goto :goto_2

    :cond_9
    aput v2, v1, v8

    :goto_2
    aput v3, v1, v4

    aput v3, v1, v6

    :goto_3
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_4
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_4

    .line 22
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static t0()V
    .locals 7

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/16 v2, 0x84

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x5

    const/4 v4, 0x1

    aput v2, v1, v4

    const/16 v2, 0xd

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 1
    sget v2, Ly0/f;->C0:I

    const/4 v6, 0x3

    aput v2, v1, v6

    .line 2
    sget v2, Ly0/f;->i:I

    if-eq v2, v4, :cond_1

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x24

    if-ne v2, v4, :cond_2

    const/16 v2, 0xa4

    aput v2, v1, v5

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    aget v2, v1, v5

    or-int/2addr v2, v3

    aput v2, v1, v5

    :cond_2
    :goto_1
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static t1(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_8
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static u()V
    .locals 14

    const/16 v0, 0xb

    new-array v1, v0, [I

    const/16 v2, 0x82

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x9

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->W([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/16 v8, 0x8

    if-eq v5, v2, :cond_4

    const/4 v9, 0x4

    const/16 v10, 0x37

    const/4 v11, 0x3

    const/16 v12, 0xa

    if-eq v5, v9, :cond_2

    if-eq v5, v8, :cond_0

    if-eq v5, v12, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget v4, Lu0/b;->r3:I

    const/16 v5, 0x3e7

    if-gt v4, v5, :cond_1

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v7

    goto :goto_1

    :cond_1
    aput v11, v1, v6

    aput v10, v1, v7

    goto :goto_1

    .line 4
    :cond_2
    sget v5, Lo0/e;->B:I

    and-int/lit16 v9, v5, 0xff

    const/16 v13, 0x63

    if-gt v9, v13, :cond_3

    shr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    aput v9, v1, v6

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    goto :goto_0

    :cond_3
    aput v11, v1, v6

    aput v10, v1, v7

    .line 5
    :goto_0
    sget v5, Lo0/e;->r:I

    rem-int/lit16 v6, v5, 0xe10

    div-int/lit8 v6, v6, 0x3c

    aput v6, v1, v4

    .line 6
    rem-int/lit16 v5, v5, 0xe10

    rem-int/lit8 v5, v5, 0x3c

    aput v5, v1, v12

    goto :goto_1

    .line 7
    :cond_4
    sget v4, Lw0/d;->j:I

    .line 8
    sget v5, Lw0/d;->h:I

    const/high16 v9, 0x10000

    if-lt v5, v9, :cond_5

    const v10, 0x10002

    if-gt v5, v10, :cond_5

    if-lt v4, v9, :cond_5

    sub-int/2addr v4, v9

    .line 9
    :cond_5
    sget v5, Lw0/d;->i:I

    shr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    aput v9, v1, v6

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    .line 10
    rem-int/lit8 v5, v4, 0x6

    const/4 v6, 0x7

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    aput v7, v1, v6

    goto :goto_1

    :cond_6
    aput v5, v1, v6

    :goto_1
    aput v3, v1, v8

    .line 11
    sget v4, Lw0/d;->z:I

    if-eqz v4, :cond_7

    .line 12
    aget v4, v1, v8

    or-int/lit8 v4, v4, 0x40

    aput v4, v1, v8

    .line 13
    :cond_7
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_8

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_9

    .line 14
    :cond_8
    aget v2, v1, v8

    or-int/2addr v2, v8

    aput v2, v1, v8

    :cond_9
    const/16 v2, 0xc

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 15
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 16
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static u0()V
    .locals 9

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/16 v2, 0x84

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x7

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v4, v1, v2

    .line 1
    sget v2, Ly0/f;->C0:I

    const/4 v5, 0x3

    aput v2, v1, v5

    const/16 v6, 0x24

    if-le v2, v6, :cond_0

    .line 2
    sput v6, Ly0/f;->C0:I

    .line 3
    :cond_0
    sget v2, Ly0/f;->i:I

    const/4 v6, 0x4

    const/16 v7, 0xa

    const/16 v8, 0x30

    if-eq v2, v4, :cond_2

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    div-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v8

    aput v4, v1, v5

    .line 5
    rem-int/2addr v2, v7

    add-int/2addr v2, v8

    aput v2, v1, v6

    goto :goto_1

    :cond_2
    :goto_0
    aput v8, v1, v5

    aput v8, v1, v6

    :goto_1
    new-array v2, v7, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 6
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 7
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static u1(I)I
    .locals 1

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, -0x1

    :goto_0
    return v0
.end method

.method public static v()V
    .locals 10

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/16 v2, 0x93

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x6

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->Z([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x2

    const/16 v7, 0xa

    if-eq v5, v2, :cond_2

    const/4 v2, 0x5

    const/4 v4, 0x4

    if-eq v5, v4, :cond_1

    if-eq v5, v0, :cond_0

    if-eq v5, v7, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget v5, Lu0/b;->r3:I

    rem-int/lit8 v5, v5, 0x63

    aput v5, v1, v4

    aput v6, v1, v2

    goto :goto_1

    .line 4
    :cond_1
    sget v5, Lo0/e;->B:I

    rem-int/lit8 v5, v5, 0x63

    aput v5, v1, v4

    aput v6, v1, v2

    goto :goto_1

    .line 5
    :cond_2
    sget v5, Lw0/d;->i:I

    .line 6
    sget v5, Lw0/d;->h:I

    const/high16 v8, 0x10000

    const/4 v9, 0x3

    if-ne v5, v8, :cond_3

    aput v3, v1, v9

    goto :goto_0

    :cond_3
    const v8, 0x10001

    if-ne v5, v8, :cond_4

    aput v2, v1, v9

    goto :goto_0

    :cond_4
    const v8, 0x10002

    if-ne v5, v8, :cond_5

    aput v6, v1, v9

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    aput v4, v1, v9

    goto :goto_0

    :cond_6
    if-ne v5, v2, :cond_7

    aput v4, v1, v9

    .line 7
    :cond_7
    :goto_0
    sget v2, Lw0/d;->i:I

    div-int/lit8 v5, v2, 0xa

    shr-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    const/4 v4, 0x7

    .line 8
    div-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    :goto_1
    const/16 v2, 0x9

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 9
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 10
    :cond_8
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static v0()V
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/16 v2, 0x84

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x7

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 1
    sget v2, Ly0/f;->i:I

    const/4 v5, 0x2

    if-eq v2, v4, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    .line 2
    :cond_0
    aget v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    goto :goto_0

    :cond_2
    aput v2, v1, v5

    :goto_0
    const/16 v2, 0x9

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static v1(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w()V
    .locals 15

    .line 1
    invoke-static {}, Ll0/c0;->g0()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xe3

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v10, 0xff

    const/4 v11, 0x0

    if-eq v0, v9, :cond_8

    const/16 v12, 0xa

    const/4 v13, 0x7

    if-eq v0, v4, :cond_6

    const/16 v14, 0xc3

    if-eq v0, v12, :cond_4

    if-eq v0, v13, :cond_0

    if-eq v0, v6, :cond_4

    goto/16 :goto_9

    :cond_0
    new-array v0, v6, [I

    aput v14, v0, v11

    aput v7, v0, v9

    .line 3
    sget v9, Lk0/x5;->n:I

    if-eqz v9, :cond_2

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget v9, Lk0/x5;->o:I

    aput v9, v0, v8

    .line 5
    sget v8, Lk0/x5;->w:I

    aput v8, v0, v5

    .line 6
    sget v5, Lk0/x5;->s:I

    aput v5, v0, v4

    .line 7
    sget v4, Lk0/x5;->t:I

    aput v4, v0, v3

    .line 8
    sget v3, Lk0/x5;->p:I

    aput v3, v0, v7

    .line 9
    sget v3, Lk0/x5;->q:I

    aput v3, v0, v13

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    sget v9, Lk0/x5;->s:I

    aput v9, v0, v8

    .line 11
    sget v8, Lk0/x5;->t:I

    aput v8, v0, v5

    .line 12
    sget v5, Lk0/x5;->u:I

    aput v5, v0, v4

    .line 13
    sget v4, Lk0/x5;->v:I

    aput v4, v0, v3

    .line 14
    sget v3, Lk0/x5;->w:I

    aput v3, v0, v7

    aput v11, v0, v13

    :goto_1
    new-array v2, v2, [I

    aput v1, v2, v11

    :goto_2
    if-ge v11, v6, :cond_3

    add-int/lit8 v1, v11, 0x1

    .line 15
    aget v3, v0, v11

    aput v3, v2, v1

    move v11, v1

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_9

    :cond_4
    new-array v0, v6, [I

    aput v14, v0, v11

    aput v7, v0, v9

    .line 17
    sget v9, Lu0/b;->s3:I

    and-int/lit16 v12, v9, 0xff

    aput v12, v0, v8

    shr-int/lit8 v8, v9, 0x8

    and-int/2addr v8, v10

    aput v8, v0, v5

    .line 18
    sget v5, Lu0/b;->r3:I

    and-int/lit16 v8, v5, 0xff

    aput v8, v0, v4

    shr-int/lit8 v4, v5, 0x8

    and-int/2addr v4, v10

    aput v4, v0, v3

    .line 19
    sget v3, Lu0/b;->t3:I

    rem-int/lit16 v4, v3, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v0, v7

    .line 20
    rem-int/lit16 v3, v3, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    aput v3, v0, v13

    new-array v2, v2, [I

    aput v1, v2, v11

    :goto_3
    if-ge v11, v6, :cond_5

    add-int/lit8 v1, v11, 0x1

    .line 21
    aget v3, v0, v11

    aput v3, v2, v1

    move v11, v1

    goto :goto_3

    .line 22
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_9

    :cond_6
    const/16 v0, 0xe

    new-array v3, v0, [I

    const/16 v4, 0x84

    aput v4, v3, v11

    const/16 v4, 0xc

    aput v4, v3, v9

    .line 23
    sget v4, Lo0/e;->C:I

    div-int/lit8 v5, v4, 0x64

    and-int/2addr v5, v10

    aput v5, v3, v7

    .line 24
    rem-int/lit8 v4, v4, 0x64

    and-int/2addr v4, v10

    aput v4, v3, v13

    .line 25
    sget v4, Lo0/e;->r:I

    rem-int/lit16 v5, v4, 0xe10

    and-int/2addr v5, v10

    aput v5, v3, v6

    .line 26
    rem-int/lit16 v5, v4, 0xe10

    div-int/lit8 v5, v5, 0x3c

    and-int/2addr v5, v10

    aput v5, v3, v2

    .line 27
    rem-int/lit16 v4, v4, 0xe10

    rem-int/lit8 v4, v4, 0x3c

    and-int/lit16 v2, v4, 0xff

    aput v2, v3, v12

    const/16 v2, 0xb

    aput v10, v3, v2

    const/16 v2, 0xf

    new-array v2, v2, [I

    aput v1, v2, v11

    :goto_4
    if-ge v11, v0, :cond_7

    add-int/lit8 v1, v11, 0x1

    .line 28
    aget v4, v3, v11

    aput v4, v2, v1

    move v11, v1

    goto :goto_4

    .line 29
    :cond_7
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_9

    :cond_8
    new-array v0, v6, [I

    .line 30
    sget v12, Lw0/d;->j:I

    const/16 v13, 0x83

    aput v13, v0, v11

    aput v7, v0, v9

    .line 31
    sget v13, Lw0/d;->h:I

    if-eqz v13, :cond_a

    if-eq v13, v9, :cond_9

    const/high16 v14, 0x10000

    packed-switch v13, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    aput v8, v0, v8

    if-lt v12, v14, :cond_b

    goto :goto_5

    :pswitch_1
    aput v8, v0, v8

    if-lt v12, v14, :cond_b

    goto :goto_5

    :pswitch_2
    aput v9, v0, v8

    if-lt v12, v14, :cond_b

    :goto_5
    sub-int/2addr v12, v14

    goto :goto_6

    :cond_9
    aput v5, v0, v8

    goto :goto_6

    :cond_a
    aput v5, v0, v8

    .line 32
    :cond_b
    :goto_6
    sget v8, Lw0/d;->i:I

    shr-int/lit8 v9, v8, 0x8

    and-int/2addr v9, v10

    aput v9, v0, v5

    and-int/lit16 v5, v8, 0xff

    aput v5, v0, v4

    .line 33
    rem-int/lit8 v4, v12, 0x6

    if-nez v4, :cond_c

    if-eqz v12, :cond_c

    aput v7, v0, v3

    goto :goto_7

    :cond_c
    aput v4, v0, v3

    :goto_7
    new-array v2, v2, [I

    aput v1, v2, v11

    :goto_8
    if-ge v11, v6, :cond_d

    add-int/lit8 v1, v11, 0x1

    .line 34
    aget v3, v0, v11

    aput v3, v2, v1

    move v11, v1

    goto :goto_8

    .line 35
    :cond_d
    invoke-static {v2}, Lz/k;->s([I)V

    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w0()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static w1(I)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-lt p0, v0, :cond_3

    const/4 v0, 0x6

    if-gt p0, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static x()V
    .locals 13

    const/16 v0, 0xb

    new-array v1, v0, [I

    const/16 v2, 0x82

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x9

    aput v4, v1, v2

    .line 1
    sget v5, Lk0/nt;->a:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/16 v6, 0x1b0

    if-eq v5, v6, :cond_0

    .line 2
    invoke-static {}, Ll0/c0;->N()V

    :cond_0
    const/4 v5, 0x2

    move v6, v5

    :goto_0
    const/16 v7, 0xff

    if-ge v6, v0, :cond_1

    .line 3
    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget v6, Ly0/f;->i:I

    const/16 v8, 0x8

    if-eq v6, v2, :cond_3

    sget v6, Ly0/f;->C0:I

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v8

    .line 5
    :goto_2
    sget v9, Lh0/c;->E:I

    if-eqz v9, :cond_4

    or-int/lit8 v6, v6, 0x4

    :cond_4
    aput v6, v1, v8

    .line 6
    sget v6, Lu0/b;->D:I

    const/16 v8, 0xa

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x4

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    aput v12, v1, v5

    .line 7
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v7

    aput v5, v1, v10

    and-int/2addr v2, v7

    aput v2, v1, v11

    .line 8
    sget v2, Lu0/b;->t3:I

    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 9
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto/16 :goto_6

    :pswitch_2
    aput v10, v1, v5

    goto/16 :goto_6

    :pswitch_3
    aput v8, v1, v5

    aput v3, v1, v10

    .line 10
    sget v2, Ld1/d;->g:I

    aput v2, v1, v11

    goto/16 :goto_6

    :pswitch_4
    aput v9, v1, v5

    goto/16 :goto_6

    .line 11
    :pswitch_5
    sget v6, Lo0/e;->H:I

    if-ne v6, v2, :cond_5

    aput v5, v1, v5

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    if-ne v6, v5, :cond_6

    aput v2, v1, v5

    goto :goto_3

    :cond_6
    if-ne v6, v2, :cond_7

    aput v12, v1, v5

    .line 12
    :cond_7
    :goto_3
    sget v2, Lo0/e;->B:I

    shr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v7

    aput v5, v1, v10

    and-int/2addr v2, v7

    aput v2, v1, v11

    .line 13
    sget v2, Lo0/e;->r:I

    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 14
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_6

    :pswitch_6
    aput v4, v1, v5

    goto :goto_6

    :pswitch_7
    aput v2, v1, v5

    .line 15
    sget v4, Lw0/d;->j:I

    .line 16
    sget v5, Lw0/d;->h:I

    const/high16 v6, 0x10000

    if-ne v5, v6, :cond_8

    const/16 v2, 0x11

    aput v2, v1, v12

    if-lt v4, v6, :cond_c

    :goto_4
    sub-int/2addr v4, v6

    goto :goto_5

    :cond_8
    const v8, 0x10001

    if-ne v5, v8, :cond_9

    const/16 v2, 0x12

    aput v2, v1, v12

    if-lt v4, v6, :cond_c

    goto :goto_4

    :cond_9
    const v8, 0x10002

    if-ne v5, v8, :cond_a

    const/16 v2, 0x13

    aput v2, v1, v12

    if-lt v4, v6, :cond_c

    goto :goto_4

    :cond_a
    if-nez v5, :cond_b

    const/16 v2, 0x21

    aput v2, v1, v12

    goto :goto_5

    :cond_b
    if-ne v5, v2, :cond_c

    const/16 v2, 0x22

    aput v2, v1, v12

    .line 17
    :cond_c
    :goto_5
    sget v2, Lw0/d;->i:I

    shr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v7

    aput v5, v1, v10

    and-int/2addr v2, v7

    aput v2, v1, v11

    .line 18
    rem-int/lit8 v2, v4, 0x6

    if-nez v2, :cond_d

    if-eqz v4, :cond_d

    aput v11, v1, v9

    goto :goto_6

    :cond_d
    aput v2, v1, v9

    goto :goto_6

    :pswitch_8
    const/16 v2, 0xf

    aput v2, v1, v5

    :goto_6
    const/16 v2, 0xc

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_7
    if-ge v3, v0, :cond_e

    add-int/lit8 v4, v3, 0x1

    .line 19
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_7

    .line 20
    :cond_e
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

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
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static x0()V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0x86

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    const/16 v5, 0x80

    aput v5, v1, v4

    .line 1
    sget v4, Ly0/f;->C0:I

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    aput v3, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_2

    const/16 v2, 0x9f

    aput v2, v1, v5

    :cond_2
    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static x1(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x9

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y()V
    .locals 14

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x84

    aput v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    aput v4, v1, v3

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xa

    const/16 v7, 0xe

    const/4 v8, 0x2

    if-eq v5, v7, :cond_c

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x6

    const/4 v12, 0x3

    packed-switch v5, :pswitch_data_0

    aput v7, v1, v8

    goto/16 :goto_5

    :pswitch_0
    aput v11, v1, v8

    goto/16 :goto_5

    :pswitch_1
    aput v12, v1, v8

    goto/16 :goto_5

    :pswitch_2
    aput v4, v1, v8

    goto/16 :goto_5

    .line 3
    :pswitch_3
    sget v4, Lo0/e;->H:I

    const/16 v5, 0x8

    if-ne v4, v3, :cond_1

    aput v8, v1, v8

    goto :goto_1

    :cond_1
    if-ne v4, v8, :cond_2

    aput v0, v1, v8

    goto :goto_1

    :cond_2
    if-ne v4, v12, :cond_3

    aput v5, v1, v8

    .line 4
    :cond_3
    :goto_1
    sget v4, Lo0/e;->A:I

    if-ne v4, v3, :cond_4

    const/16 v3, 0x10

    aput v3, v1, v12

    goto :goto_2

    :cond_4
    aput v2, v1, v12

    .line 5
    :goto_2
    sget v3, Lo0/e;->B:I

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v10

    .line 6
    sget v3, Lo0/e;->C:I

    shr-int/2addr v3, v5

    and-int/2addr v3, v12

    shl-int/2addr v3, v11

    sget v4, Lo0/e;->r:I

    rem-int/lit16 v5, v4, 0xe10

    div-int/lit8 v5, v5, 0x3c

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v3, v5

    aput v3, v1, v9

    .line 7
    rem-int/lit16 v4, v4, 0xe10

    rem-int/lit8 v4, v4, 0x3c

    aput v4, v1, v11

    goto :goto_5

    :pswitch_4
    aput v6, v1, v8

    goto :goto_5

    :pswitch_5
    aput v9, v1, v8

    goto :goto_5

    :pswitch_6
    aput v3, v1, v8

    aput v2, v1, v12

    .line 8
    sget v4, Lw0/d;->i:I

    .line 9
    sget v5, Lw0/d;->j:I

    const/high16 v7, 0x10000

    if-lt v5, v7, :cond_6

    if-lt v5, v7, :cond_5

    sub-int/2addr v5, v7

    .line 10
    rem-int/2addr v5, v11

    goto :goto_3

    .line 11
    :cond_5
    rem-int/2addr v5, v11

    goto :goto_3

    .line 12
    :cond_6
    rem-int/2addr v5, v11

    :goto_3
    add-int/2addr v5, v3

    shl-int/2addr v5, v12

    and-int/lit8 v5, v5, 0x38

    .line 13
    sget v13, Lw0/d;->h:I

    if-ne v13, v7, :cond_7

    or-int/lit8 v3, v5, 0x0

    aput v3, v1, v10

    goto :goto_4

    :cond_7
    const v7, 0x10001

    if-ne v13, v7, :cond_8

    or-int/2addr v3, v5

    aput v3, v1, v10

    goto :goto_4

    :cond_8
    const v7, 0x10002

    if-ne v13, v7, :cond_9

    or-int/lit8 v3, v5, 0x2

    aput v3, v1, v10

    goto :goto_4

    :cond_9
    if-nez v13, :cond_a

    or-int/lit8 v3, v5, 0x3

    aput v3, v1, v10

    goto :goto_4

    :cond_a
    if-ne v13, v3, :cond_b

    or-int/lit8 v3, v5, 0x4

    aput v3, v1, v10

    :cond_b
    :goto_4
    shr-int/lit8 v3, v4, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v9

    and-int/lit16 v3, v4, 0xff

    aput v3, v1, v11

    goto :goto_5

    :cond_c
    const/16 v3, 0xb

    aput v3, v1, v8

    :goto_5
    new-array v3, v6, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_6
    if-ge v2, v0, :cond_d

    add-int/lit8 v4, v2, 0x1

    .line 14
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_6

    .line 15
    :cond_d
    invoke-static {v3}, Lz/k;->s([I)V

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

.method public static y0()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v2, Ly0/f;->C0:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 2
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static y1(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_8
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_9
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static z()V
    .locals 16

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Ll0/c0;->a0([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x7

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/4 v12, 0x4

    if-eq v5, v2, :cond_5

    if-eq v5, v8, :cond_2

    if-eq v5, v12, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v10, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v12

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    aput v3, v1, v11

    .line 4
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v9

    .line 5
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v10

    goto/16 :goto_3

    .line 7
    :cond_1
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v12

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    aput v3, v1, v11

    .line 8
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v9

    .line 9
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 10
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v10

    goto :goto_3

    .line 11
    :cond_2
    sget v4, Lh0/c;->E:I

    if-nez v4, :cond_3

    aput v3, v1, v12

    goto :goto_3

    :cond_3
    if-gt v4, v6, :cond_4

    aput v2, v1, v12

    goto :goto_3

    :cond_4
    aput v8, v1, v12

    goto :goto_3

    .line 12
    :cond_5
    sget v5, Lw0/d;->i:I

    .line 13
    sget v13, Lw0/d;->j:I

    .line 14
    sget v14, Lw0/d;->h:I

    const/high16 v15, 0x10000

    if-ne v14, v15, :cond_6

    aput v2, v1, v12

    if-lt v13, v15, :cond_a

    :goto_0
    sub-int/2addr v13, v15

    goto :goto_1

    :cond_6
    const v0, 0x10001

    if-ne v14, v0, :cond_7

    aput v8, v1, v12

    if-lt v13, v15, :cond_a

    goto :goto_0

    :cond_7
    const v0, 0x10002

    if-ne v14, v0, :cond_8

    aput v6, v1, v12

    if-lt v13, v15, :cond_a

    goto :goto_0

    :cond_8
    if-nez v14, :cond_9

    const/16 v0, 0x11

    aput v0, v1, v12

    goto :goto_1

    :cond_9
    if-ne v14, v2, :cond_a

    const/16 v0, 0x12

    aput v0, v1, v12

    :cond_a
    :goto_1
    and-int/lit16 v0, v5, 0xff

    aput v0, v1, v7

    shr-int/lit8 v0, v5, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v11

    .line 15
    rem-int/lit8 v0, v13, 0x6

    if-nez v0, :cond_b

    if-eqz v13, :cond_b

    aput v11, v1, v9

    goto :goto_2

    :cond_b
    aput v0, v1, v9

    :goto_2
    aput v3, v1, v4

    aput v3, v1, v10

    :goto_3
    const/16 v0, 0xb

    new-array v0, v0, [I

    const/16 v2, 0xe3

    aput v2, v0, v3

    const/16 v2, 0xa

    :goto_4
    if-ge v3, v2, :cond_c

    add-int/lit8 v4, v3, 0x1

    .line 16
    aget v3, v1, v3

    aput v3, v0, v4

    move v3, v4

    goto :goto_4

    .line 17
    :cond_c
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static z0()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0x86

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    or-int/lit16 v4, v4, 0x80

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    aput v3, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x24

    if-ne v2, v4, :cond_2

    const/16 v2, 0xa4

    aput v2, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static z1(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/16 v2, 0xf

    if-eqz p0, :cond_0

    rsub-int/lit8 p0, p0, 0x1f

    .line 1
    div-int/2addr p0, v1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_6
    move v0, v1

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_8
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    :pswitch_9
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
