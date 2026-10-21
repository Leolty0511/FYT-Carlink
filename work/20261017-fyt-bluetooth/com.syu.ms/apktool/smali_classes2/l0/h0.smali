.class public Ll0/h0;
.super Ll0/a;
.source "SourceFile"


# static fields
.field public static c:I

.field public static d:Ljava/lang/Runnable;

.field public static e:Ljava/lang/Runnable;

.field public static f:Ljava/lang/Runnable;

.field public static g:Ljava/lang/Runnable;

.field public static h:Ljava/lang/Runnable;

.field public static i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll0/h0$a;

    invoke-direct {v0}, Ll0/h0$a;-><init>()V

    sput-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Ll0/h0$b;

    invoke-direct {v0}, Ll0/h0$b;-><init>()V

    sput-object v0, Ll0/h0;->e:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ll0/h0$c;

    invoke-direct {v0}, Ll0/h0$c;-><init>()V

    sput-object v0, Ll0/h0;->f:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ll0/h0$d;

    invoke-direct {v0}, Ll0/h0$d;-><init>()V

    sput-object v0, Ll0/h0;->g:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ll0/h0$e;

    invoke-direct {v0}, Ll0/h0$e;-><init>()V

    sput-object v0, Ll0/h0;->h:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Ll0/h0$f;

    invoke-direct {v0}, Ll0/h0$f;-><init>()V

    sput-object v0, Ll0/h0;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static g()V
    .locals 19

    const/16 v0, 0x10

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
    const/16 v3, 0xe

    aput v3, v1, v2

    const/16 v3, 0x91

    const/4 v5, 0x1

    aput v3, v1, v5

    const/4 v3, 0x2

    .line 2
    invoke-static {}, Ll0/h0;->k()B

    move-result v6

    aput v6, v1, v3

    .line 3
    sget v3, Lu0/b;->D:I

    const/16 v6, 0x7a

    const/16 v7, 0x68

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/4 v10, 0x7

    const/4 v11, 0x5

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x6

    const/4 v15, 0x4

    const/16 v16, 0xa

    if-eq v3, v5, :cond_a

    const/16 v17, 0xd

    if-eq v3, v15, :cond_7

    if-eq v3, v14, :cond_4

    if-eq v3, v13, :cond_1

    if-eq v3, v12, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v3, 0x3

    const/16 v5, 0x54

    aput v5, v1, v3

    .line 5
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x2710

    .line 6
    div-int/lit16 v5, v3, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v15

    .line 7
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    rem-int/lit16 v6, v3, 0x3e8

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    div-int/lit8 v6, v6, 0xa

    :goto_1
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v11

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 8
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 9
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v5, v3, 0x3c

    .line 10
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v13

    .line 11
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v12

    .line 12
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v9

    .line 13
    rem-int/lit8 v3, v3, 0x3c

    .line 14
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 15
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v17

    goto/16 :goto_7

    .line 16
    :cond_4
    sget v3, Ld1/d;->c:I

    if-ne v3, v5, :cond_10

    .line 17
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_5

    .line 18
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    .line 19
    :cond_5
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    const/16 v3, 0x2d

    aput v3, v1, v14

    .line 20
    sget v3, Ld1/d;->d:I

    div-int/lit8 v3, v3, 0x64

    .line 21
    div-int/lit16 v4, v3, 0x2710

    if-lez v4, :cond_6

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 22
    :cond_6
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 23
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    const/16 v4, 0x2e

    aput v4, v1, v16

    .line 24
    rem-int/lit8 v4, v3, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 25
    rem-int/lit8 v3, v3, 0xa

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v8

    const/16 v3, 0x4d

    aput v3, v1, v17

    const/16 v3, 0xe

    aput v7, v1, v3

    const/16 v3, 0xf

    aput v6, v1, v3

    goto/16 :goto_7

    .line 26
    :cond_7
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_8

    goto/16 :goto_7

    :cond_8
    const/4 v3, 0x3

    const/16 v5, 0x54

    aput v5, v1, v3

    .line 27
    sget v3, Lo0/e;->B:I

    rem-int/lit16 v3, v3, 0x2710

    .line 28
    div-int/lit16 v5, v3, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v15

    .line 29
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    rem-int/lit16 v6, v3, 0x3e8

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    div-int/lit8 v6, v6, 0xa

    :goto_2
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v11

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 30
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 31
    sget v3, Lo0/e;->r:I

    div-int/lit8 v5, v3, 0x3c

    .line 32
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v13

    .line 33
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v12

    .line 34
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v9

    .line 35
    rem-int/lit8 v3, v3, 0x3c

    .line 36
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 37
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v17

    goto/16 :goto_7

    .line 38
    :cond_a
    sget v3, Lw0/d;->h:I

    const/high16 v17, 0x10000

    sub-int v18, v3, v17

    if-eqz v18, :cond_e

    sub-int v0, v3, v17

    if-eq v5, v0, :cond_e

    const/4 v0, 0x2

    sub-int v3, v3, v17

    if-ne v0, v3, :cond_b

    goto :goto_5

    .line 39
    :cond_b
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_c

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_3

    :cond_c
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_3
    aput v3, v1, v15

    .line 40
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    if-nez v3, :cond_d

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v4

    goto :goto_4

    :cond_d
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    :goto_4
    aput v3, v1, v11

    .line 41
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    .line 42
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 43
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v13

    const/16 v0, 0x4b

    aput v0, v1, v12

    aput v7, v1, v16

    aput v6, v1, v9

    goto :goto_7

    .line 44
    :cond_e
    :goto_5
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_f

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_6

    :cond_f
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_6
    aput v3, v1, v15

    .line 45
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    .line 46
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    const/16 v3, 0x2e

    aput v3, v1, v10

    .line 47
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    .line 48
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    const/16 v0, 0x4d

    aput v0, v1, v16

    aput v7, v1, v9

    aput v6, v1, v8

    :cond_10
    :goto_7
    const/16 v0, 0x11

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0x10

    :goto_8
    if-ge v2, v3, :cond_11

    add-int/lit8 v4, v2, 0x1

    .line 49
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_8

    .line 50
    :cond_11
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static h()V
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
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v5, 0x91

    const/4 v6, 0x1

    aput v5, v1, v6

    .line 2
    invoke-static {}, Ll0/h0;->k()B

    move-result v5

    const/4 v7, 0x2

    aput v5, v1, v7

    .line 3
    sget v5, Lu0/b;->D:I

    const/16 v8, 0x68

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x6

    const/4 v0, 0x4

    const/16 v16, 0xa

    if-eq v5, v6, :cond_a

    if-eq v5, v0, :cond_7

    if-eq v5, v15, :cond_4

    if-eq v5, v14, :cond_1

    if-eq v5, v13, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    sget v5, Lu0/b;->s3:I

    if-nez v5, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v5, 0x3

    const/16 v6, 0x54

    aput v6, v1, v5

    .line 5
    sget v5, Lu0/b;->r3:I

    rem-int/lit16 v5, v5, 0x2710

    .line 6
    div-int/lit16 v6, v5, 0x3e8

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v0

    .line 7
    rem-int/lit8 v0, v5, 0x64

    div-int/lit8 v0, v0, 0xa

    rem-int/lit16 v6, v5, 0x3e8

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    div-int/lit8 v6, v6, 0xa

    :goto_1
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v12

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    .line 8
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

    .line 9
    sget v0, Lu0/b;->t3:I

    div-int/lit8 v5, v0, 0x3c

    .line 10
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v14

    .line 11
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v13

    .line 12
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v10

    .line 13
    rem-int/lit8 v0, v0, 0x3c

    .line 14
    div-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 15
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v3

    goto/16 :goto_7

    .line 16
    :cond_4
    sget v4, Ld1/d;->c:I

    if-ne v4, v6, :cond_10

    .line 17
    sget v4, Ld1/d;->e:I

    div-int/lit8 v5, v4, 0xa

    if-lez v5, :cond_5

    .line 18
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v0

    .line 19
    :cond_5
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    const/16 v0, 0x2d

    aput v0, v1, v15

    .line 20
    sget v0, Ld1/d;->d:I

    div-int/lit8 v0, v0, 0x64

    .line 21
    div-int/lit16 v4, v0, 0x2710

    if-lez v4, :cond_6

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 22
    :cond_6
    rem-int/lit16 v4, v0, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 23
    rem-int/lit16 v4, v0, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    const/16 v4, 0x2e

    aput v4, v1, v16

    .line 24
    rem-int/lit8 v4, v0, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 25
    rem-int/lit8 v0, v0, 0xa

    div-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v9

    const/16 v0, 0x4d

    aput v0, v1, v3

    const/16 v0, 0xe

    aput v8, v1, v0

    goto/16 :goto_7

    .line 26
    :cond_7
    sget v5, Lo0/e;->C:I

    if-nez v5, :cond_8

    goto/16 :goto_7

    :cond_8
    const/4 v5, 0x3

    const/16 v6, 0x54

    aput v6, v1, v5

    .line 27
    sget v5, Lo0/e;->B:I

    rem-int/lit16 v5, v5, 0x2710

    .line 28
    div-int/lit16 v6, v5, 0x3e8

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v0

    .line 29
    rem-int/lit8 v0, v5, 0x64

    div-int/lit8 v0, v0, 0xa

    rem-int/lit16 v6, v5, 0x3e8

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    div-int/lit8 v6, v6, 0xa

    :goto_2
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v12

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    .line 30
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

    .line 31
    sget v0, Lo0/e;->r:I

    div-int/lit8 v5, v0, 0x3c

    .line 32
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v14

    .line 33
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v13

    .line 34
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v10

    .line 35
    rem-int/lit8 v0, v0, 0x3c

    .line 36
    div-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 37
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v3

    goto/16 :goto_7

    .line 38
    :cond_a
    sget v3, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v17, v3, v5

    if-eqz v17, :cond_e

    sub-int v2, v3, v5

    if-eq v6, v2, :cond_e

    sub-int/2addr v3, v5

    if-ne v7, v3, :cond_b

    goto :goto_5

    .line 39
    :cond_b
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_c

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v4

    goto :goto_3

    :cond_c
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_3
    aput v3, v1, v0

    .line 40
    rem-int/lit16 v0, v2, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_d

    rem-int/lit16 v0, v2, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v4

    goto :goto_4

    :cond_d
    rem-int/lit16 v0, v2, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x30

    :goto_4
    aput v0, v1, v12

    .line 41
    rem-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    .line 42
    rem-int/lit8 v0, v2, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    .line 43
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    const/16 v0, 0x4b

    aput v0, v1, v13

    aput v8, v1, v16

    const/16 v0, 0x7a

    aput v0, v1, v10

    goto :goto_7

    .line 44
    :cond_e
    :goto_5
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_f

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v4

    goto :goto_6

    :cond_f
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_6
    aput v3, v1, v0

    .line 45
    rem-int/lit16 v0, v2, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    .line 46
    rem-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    const/16 v0, 0x2e

    aput v0, v1, v11

    .line 47
    rem-int/lit8 v0, v2, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 48
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    const/16 v0, 0x4d

    aput v0, v1, v16

    aput v8, v1, v10

    const/16 v0, 0x7a

    aput v0, v1, v9

    :cond_10
    :goto_7
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    move v2, v3

    const/16 v3, 0xf

    :goto_8
    if-ge v2, v3, :cond_11

    add-int/lit8 v4, v2, 0x1

    .line 49
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_8

    .line 50
    :cond_11
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static i()V
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
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v5, 0xe1

    const/4 v6, 0x1

    aput v5, v1, v6

    .line 2
    invoke-static {}, Ll0/h0;->l()B

    move-result v5

    const/4 v7, 0x2

    aput v5, v1, v7

    .line 3
    sget v5, Lu0/b;->D:I

    const/16 v8, 0x2e

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x6

    const/16 v16, 0xa

    if-eq v5, v6, :cond_9

    if-eq v5, v15, :cond_6

    if-eq v5, v14, :cond_5

    if-eq v5, v13, :cond_3

    if-eq v5, v12, :cond_1

    if-eq v5, v11, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 5
    :cond_2
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 6
    rem-int/lit16 v5, v3, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 7
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v13

    .line 8
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    aput v4, v1, v15

    .line 9
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    .line 10
    rem-int/lit8 v4, v4, 0x3c

    .line 11
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v9

    .line 12
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 13
    rem-int/lit8 v3, v3, 0x3c

    .line 14
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 15
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v16

    goto/16 :goto_3

    .line 16
    :cond_3
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_4

    goto/16 :goto_3

    .line 17
    :cond_4
    sget v3, Lo0/e;->B:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 18
    rem-int/lit16 v5, v3, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 19
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v13

    .line 20
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    aput v4, v1, v15

    .line 21
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    .line 22
    rem-int/lit8 v4, v4, 0x3c

    .line 23
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v9

    .line 24
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 25
    rem-int/lit8 v3, v3, 0x3c

    .line 26
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 27
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v16

    goto/16 :goto_3

    .line 28
    :cond_5
    sget v3, Lh0/c;->J:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 29
    rem-int/lit16 v5, v3, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 30
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v13

    .line 31
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    aput v4, v1, v15

    .line 32
    sget v3, Lh0/c;->H:I

    div-int/lit8 v4, v3, 0x3c

    .line 33
    rem-int/lit8 v4, v4, 0x3c

    .line 34
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v9

    .line 35
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 36
    rem-int/lit8 v3, v3, 0x3c

    .line 37
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 38
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v16

    goto/16 :goto_3

    .line 39
    :cond_6
    sget v4, Ld1/d;->c:I

    if-ne v4, v6, :cond_11

    .line 40
    sget v4, Ld1/d;->e:I

    div-int/lit8 v5, v4, 0xa

    if-lez v5, :cond_7

    .line 41
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 42
    :cond_7
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    const/16 v4, 0x2d

    aput v4, v1, v10

    .line 43
    sget v4, Ld1/d;->d:I

    div-int/lit8 v4, v4, 0x64

    .line 44
    div-int/lit16 v5, v4, 0x2710

    if-lez v5, :cond_8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v15

    .line 45
    :cond_8
    rem-int/lit16 v5, v4, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v9

    .line 46
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v12

    aput v8, v1, v11

    .line 47
    rem-int/lit8 v5, v4, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    const/16 v5, 0xb

    .line 48
    rem-int/lit8 v4, v4, 0xa

    div-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    const/16 v4, 0xc

    const/16 v5, 0x4d

    aput v5, v1, v4

    const/16 v4, 0x68

    aput v4, v1, v3

    const/16 v3, 0xe

    const/16 v4, 0x7a

    aput v4, v1, v3

    goto/16 :goto_3

    .line 49
    :cond_9
    sget v3, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v17, v3, v5

    if-eqz v17, :cond_e

    sub-int v0, v3, v5

    if-eq v6, v0, :cond_e

    sub-int/2addr v3, v5

    if-ne v7, v3, :cond_a

    goto/16 :goto_1

    .line 50
    :cond_a
    sget v0, Lw0/d;->i:I

    rem-int/lit16 v0, v0, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_c

    .line 51
    sget v0, Lw0/d;->j:I

    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_b

    if-eqz v0, :cond_b

    move v3, v15

    .line 52
    :cond_b
    div-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 53
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    aput v4, v1, v10

    .line 54
    sget v0, Lw0/d;->i:I

    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    .line 55
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 56
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    goto/16 :goto_3

    .line 57
    :cond_c
    sget v0, Lw0/d;->j:I

    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_d

    if-eqz v0, :cond_d

    move v3, v15

    .line 58
    :cond_d
    div-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 59
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    aput v4, v1, v10

    .line 60
    sget v0, Lw0/d;->i:I

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    .line 61
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 62
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 63
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    goto :goto_3

    .line 64
    :cond_e
    :goto_1
    sget v0, Lw0/d;->j:I

    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_f

    if-eqz v0, :cond_f

    move v3, v15

    .line 65
    :cond_f
    div-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 66
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    aput v4, v1, v10

    .line 67
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_10

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_2

    :cond_10
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_2
    aput v3, v1, v15

    .line 68
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 69
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    aput v8, v1, v11

    .line 70
    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v16

    :cond_11
    :goto_3
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_4
    if-ge v2, v3, :cond_12

    add-int/lit8 v4, v2, 0x1

    .line 71
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_4

    .line 72
    :cond_12
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static j()V
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
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v5, 0xe1

    const/4 v6, 0x1

    aput v5, v1, v6

    .line 2
    invoke-static {}, Ll0/h0;->l()B

    move-result v5

    const/4 v7, 0x2

    aput v5, v1, v7

    .line 3
    sget v5, Lu0/b;->D:I

    const/16 v8, 0x2e

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x4

    const/4 v15, 0x6

    const/16 v16, 0xa

    if-eq v5, v6, :cond_8

    if-eq v5, v14, :cond_6

    if-eq v5, v15, :cond_3

    if-eq v5, v13, :cond_1

    if-eq v5, v12, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 5
    :cond_2
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 6
    rem-int/lit16 v5, v3, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

    .line 7
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 8
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    aput v4, v1, v15

    .line 9
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 10
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 11
    rem-int/lit8 v4, v3, 0x3c

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 12
    rem-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v16

    goto/16 :goto_3

    .line 13
    :cond_3
    sget v4, Ld1/d;->c:I

    if-ne v4, v6, :cond_10

    .line 14
    sget v4, Ld1/d;->e:I

    div-int/lit8 v5, v4, 0xa

    if-lez v5, :cond_4

    .line 15
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

    .line 16
    :cond_4
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    const/16 v4, 0x2d

    aput v4, v1, v10

    .line 17
    sget v4, Ld1/d;->d:I

    div-int/lit8 v4, v4, 0x64

    .line 18
    div-int/lit16 v5, v4, 0x2710

    if-lez v5, :cond_5

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v15

    .line 19
    :cond_5
    rem-int/lit16 v5, v4, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v9

    .line 20
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v13

    aput v8, v1, v12

    .line 21
    rem-int/lit8 v5, v4, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    const/16 v5, 0xb

    .line 22
    rem-int/lit8 v4, v4, 0xa

    div-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    const/16 v4, 0xc

    const/16 v5, 0x4d

    aput v5, v1, v4

    const/16 v4, 0x68

    aput v4, v1, v3

    const/16 v3, 0xe

    const/16 v4, 0x7a

    aput v4, v1, v3

    goto/16 :goto_3

    .line 23
    :cond_6
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_7

    goto/16 :goto_3

    .line 24
    :cond_7
    sget v3, Lo0/e;->B:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 25
    rem-int/lit16 v5, v3, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

    .line 26
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 27
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    aput v4, v1, v15

    .line 28
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    .line 29
    rem-int/lit8 v4, v4, 0x3c

    .line 30
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v9

    .line 31
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 32
    rem-int/lit8 v3, v3, 0x3c

    .line 33
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 34
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v16

    goto/16 :goto_3

    .line 35
    :cond_8
    sget v3, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v17, v3, v5

    if-eqz v17, :cond_d

    sub-int v0, v3, v5

    if-eq v6, v0, :cond_d

    sub-int/2addr v3, v5

    if-ne v7, v3, :cond_9

    goto/16 :goto_1

    .line 36
    :cond_9
    sget v0, Lw0/d;->i:I

    rem-int/lit16 v0, v0, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_b

    .line 37
    sget v0, Lw0/d;->j:I

    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_a

    if-eqz v0, :cond_a

    move v3, v15

    .line 38
    :cond_a
    div-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    .line 39
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    aput v4, v1, v10

    .line 40
    sget v0, Lw0/d;->i:I

    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    .line 41
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 42
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v13

    goto/16 :goto_3

    .line 43
    :cond_b
    sget v0, Lw0/d;->j:I

    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_c

    if-eqz v0, :cond_c

    move v3, v15

    .line 44
    :cond_c
    div-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    .line 45
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    aput v4, v1, v10

    .line 46
    sget v0, Lw0/d;->i:I

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    .line 47
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 48
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    .line 49
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    goto :goto_3

    .line 50
    :cond_d
    :goto_1
    sget v0, Lw0/d;->j:I

    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_e

    if-eqz v0, :cond_e

    move v3, v15

    .line 51
    :cond_e
    div-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    .line 52
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    aput v4, v1, v10

    .line 53
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_f

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_2

    :cond_f
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_2
    aput v3, v1, v15

    .line 54
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 55
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    aput v8, v1, v12

    .line 56
    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v16

    :cond_10
    :goto_3
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_4
    if-ge v2, v3, :cond_11

    add-int/lit8 v4, v2, 0x1

    .line 57
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_4

    .line 58
    :cond_11
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static k()B
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
    goto :goto_2

    :pswitch_1
    const/4 v1, -0x1

    goto :goto_3

    :pswitch_2
    const/4 v1, -0x2

    goto :goto_3

    :goto_0
    :pswitch_3
    move v1, v6

    goto :goto_3

    :goto_1
    :pswitch_4
    move v1, v2

    goto :goto_3

    :pswitch_5
    const/16 v1, 0xb

    goto :goto_3

    :pswitch_6
    const/16 v1, 0x8

    goto :goto_3

    :pswitch_7
    const/16 v1, 0xc

    goto :goto_3

    .line 2
    :pswitch_8
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    const/4 v1, 0x6

    goto :goto_3

    :cond_0
    if-ne v0, v4, :cond_1

    const/16 v1, 0xe

    goto :goto_3

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_1

    :pswitch_9
    move v1, v3

    goto :goto_3

    .line 3
    :pswitch_a
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v3, v0, v2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    sub-int v3, v0, v2

    if-ne v6, v3, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    sub-int v2, v0, v2

    if-ne v4, v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_3

    :cond_5
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_3

    :pswitch_b
    const/16 v1, 0x9

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v5

    .line 4
    :goto_3
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v1, 0x10

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static l()B
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, -0x7b

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x15

    goto :goto_3

    :goto_0
    :pswitch_1
    move v1, v6

    goto :goto_3

    :goto_1
    :pswitch_2
    move v1, v4

    goto :goto_3

    :pswitch_3
    const/16 v1, 0xb

    goto :goto_3

    :pswitch_4
    const/16 v1, 0x8

    goto :goto_3

    :pswitch_5
    const/16 v1, 0xc

    goto :goto_3

    .line 2
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    const/4 v1, 0x6

    goto :goto_3

    :cond_0
    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_1

    :pswitch_7
    move v1, v2

    goto :goto_3

    :pswitch_8
    const/16 v1, 0xa

    goto :goto_3

    .line 3
    :pswitch_9
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    sub-int v4, v0, v2

    if-ne v6, v4, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    sub-int v2, v0, v2

    if-ne v3, v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_3

    :cond_5
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_3

    :pswitch_a
    const/16 v1, 0x9

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v5

    .line 4
    :goto_3
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v1, 0x10

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public static m()V
    .locals 8

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 1
    sput v2, Ll0/h0;->c:I

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
    const/16 v4, 0xe

    aput v4, v1, v3

    const/16 v4, 0x91

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v4, 0x2

    .line 3
    invoke-static {}, Ll0/h0;->k()B

    move-result v6

    aput v6, v1, v4

    .line 4
    sget v4, Ly0/f;->i:I

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-eq v4, v5, :cond_3

    sget v4, Ly0/f;->C0:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x56

    aput v5, v1, v2

    const/16 v2, 0x4f

    aput v2, v1, v7

    const/16 v2, 0x4c

    aput v2, v1, v6

    const/16 v2, 0xa

    if-lt v4, v2, :cond_2

    const/16 v5, 0x9

    .line 5
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    .line 6
    :cond_2
    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v4, 0x4d

    aput v4, v1, v2

    const/16 v2, 0x55

    aput v2, v1, v7

    const/16 v2, 0x54

    aput v2, v1, v6

    const/4 v2, 0x7

    const/16 v4, 0x45

    aput v4, v1, v2

    :goto_2
    const/16 v2, 0x11

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

.method public static n()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 1
    sput v2, Ll0/h0;->c:I

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

    const/16 v4, 0xe1

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v4, 0x2

    .line 3
    invoke-static {}, Ll0/h0;->k()B

    move-result v6

    aput v6, v1, v4

    .line 4
    sget v4, Ly0/f;->i:I

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-eq v4, v5, :cond_3

    sget v4, Ly0/f;->C0:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x56

    aput v5, v1, v2

    const/16 v2, 0x4f

    aput v2, v1, v7

    const/16 v2, 0x4c

    aput v2, v1, v6

    const/16 v2, 0xa

    if-lt v4, v2, :cond_2

    const/16 v5, 0x9

    .line 5
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    .line 6
    :cond_2
    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v4, 0x4d

    aput v4, v1, v2

    const/16 v2, 0x55

    aput v2, v1, v7

    const/16 v2, 0x54

    aput v2, v1, v6

    const/4 v2, 0x7

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

.method public static o(I)I
    .locals 1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0xa

    .line 1
    div-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, -0x1

    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    const/16 p0, 0xf

    :cond_0
    return p0
.end method

.method public static p(I)I
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

.method public static q(I)I
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

.method public static r(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static s(I)I
    .locals 0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public static t()V
    .locals 18

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/16 v4, 0xb

    const/16 v5, 0x8

    const/16 v6, 0xc

    const/4 v7, 0x3

    const/16 v8, 0xe

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/16 v0, 0xff

    goto :goto_2

    :pswitch_2
    const/16 v0, 0xfe

    goto :goto_2

    :goto_0
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_2

    :pswitch_4
    move v0, v4

    goto :goto_2

    :pswitch_5
    move v0, v5

    goto :goto_2

    :pswitch_6
    move v0, v6

    goto :goto_2

    .line 2
    :pswitch_7
    sget v0, Lo0/e;->H:I

    if-ne v0, v13, :cond_0

    move v0, v1

    goto :goto_2

    :cond_0
    if-ne v0, v12, :cond_1

    move v0, v8

    goto :goto_2

    :cond_1
    if-ne v0, v7, :cond_6

    goto :goto_0

    :pswitch_8
    move v0, v10

    goto :goto_2

    .line 3
    :pswitch_9
    sget v0, Lw0/d;->h:I

    const/high16 v15, 0x10000

    sub-int v16, v0, v15

    if-nez v16, :cond_2

    move v0, v13

    goto :goto_2

    :cond_2
    sub-int v9, v0, v15

    if-ne v13, v9, :cond_3

    move v0, v12

    goto :goto_2

    :cond_3
    sub-int v9, v0, v15

    if-ne v12, v9, :cond_4

    move v0, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v0, 0x0

    if-nez v9, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v14

    if-ne v13, v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    :goto_1
    :pswitch_a
    move v0, v11

    .line 4
    :goto_2
    sget v9, Lu0/b;->o:I

    const/16 v15, 0x10

    if-ne v9, v13, :cond_7

    move v0, v15

    :cond_7
    const/16 v9, 0x11

    new-array v9, v9, [I

    const/16 v17, 0xe3

    aput v17, v9, v14

    aput v8, v9, v13

    const/16 v13, 0x91

    aput v13, v9, v12

    aput v0, v9, v7

    aput v12, v9, v3

    aput v14, v9, v2

    const/4 v0, 0x6

    aput v14, v9, v0

    aput v14, v9, v1

    aput v14, v9, v5

    aput v14, v9, v11

    aput v14, v9, v10

    aput v14, v9, v4

    aput v14, v9, v6

    const/16 v0, 0xd

    aput v14, v9, v0

    aput v14, v9, v8

    const/16 v0, 0xf

    aput v14, v9, v0

    aput v14, v9, v15

    .line 5
    invoke-static {v9}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
.end method

.method public static u(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    invoke-static {v0}, Lu0/d;->B3(I)V

    goto :goto_1

    :cond_0
    const-string v1, "persist.fyt.temperature"

    .line 2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    mul-int/lit8 p0, p0, 0x9

    add-int/lit16 p0, p0, 0x258

    const/high16 v0, 0x10000000

    or-int/2addr p0, v0

    and-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 p0, p0, 0x5

    add-int/lit16 p0, p0, 0x258

    .line 3
    :goto_0
    invoke-static {p0}, Lu0/d;->B3(I)V

    :goto_1
    return-void
.end method
