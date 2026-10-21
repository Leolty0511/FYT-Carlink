.class public Lmodule/canbus/e;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/e$e;
    }
.end annotation


# static fields
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

.field public static t:I

.field public static final u:[I

.field public static final v:[I

.field public static final w:[I

.field public static final x:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/e$e;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lo1/y;


# instance fields
.field public b:I

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/e;->u:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/e;->v:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/e;->w:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/e;->x:Lo1/f;

    .line 5
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Lmodule/canbus/e;->y:Lo1/y;

    return-void

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
    iput v0, p0, Lmodule/canbus/e;->b:I

    .line 3
    new-instance v1, Lmodule/canbus/e$a;

    invoke-direct {v1, p0}, Lmodule/canbus/e$a;-><init>(Lmodule/canbus/e;)V

    iput-object v1, p0, Lmodule/canbus/e;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Lmodule/canbus/e$b;

    invoke-direct {v1, p0}, Lmodule/canbus/e$b;-><init>(Lmodule/canbus/e;)V

    iput-object v1, p0, Lmodule/canbus/e;->d:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lmodule/canbus/e$c;

    invoke-direct {v1, p0}, Lmodule/canbus/e$c;-><init>(Lmodule/canbus/e;)V

    iput-object v1, p0, Lmodule/canbus/e;->e:Ljava/lang/Runnable;

    const/16 v1, 0xc8

    .line 6
    iput v1, p0, Lmodule/canbus/e;->f:I

    .line 7
    new-instance v1, Lmodule/canbus/e$d;

    invoke-direct {v1, p0}, Lmodule/canbus/e$d;-><init>(Lmodule/canbus/e;)V

    iput-object v1, p0, Lmodule/canbus/e;->g:Ljava/lang/Runnable;

    .line 8
    iput v0, p0, Lmodule/canbus/e;->h:I

    return-void
.end method

.method public static synthetic A3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->l:I

    return v0
.end method

.method public static B3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/e;->x:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/e$e;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/e$e;->a(I)V

    :cond_0
    return-void
.end method

.method public static a3()V
    .locals 17

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

    const/16 v5, 0xd2

    const/4 v6, 0x1

    aput v5, v1, v6

    const/4 v5, 0x2

    .line 2
    invoke-static {}, Lmodule/canbus/e;->b3()B

    move-result v7

    aput v7, v1, v5

    .line 3
    sget v5, Lu0/b;->D:I

    const/4 v7, 0x3

    const/16 v8, 0xb

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/16 v13, 0x9

    const/4 v14, 0x6

    const/16 v15, 0xa

    if-eq v5, v6, :cond_9

    if-eq v5, v12, :cond_7

    if-eq v5, v14, :cond_4

    if-eq v5, v11, :cond_1

    if-eq v5, v13, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_6

    .line 5
    :cond_2
    sget v3, Lu0/b;->r3:I

    const/16 v4, 0x3e7

    if-gt v3, v4, :cond_3

    .line 6
    div-int/lit8 v4, v3, 0x64

    div-int/lit8 v4, v3, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 7
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v15

    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    .line 8
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v8

    goto :goto_1

    :cond_3
    const/16 v3, 0x39

    aput v3, v1, v13

    aput v3, v1, v15

    aput v3, v1, v8

    .line 9
    :goto_1
    sget v3, Lu0/b;->t3:I

    div-int/lit16 v4, v3, 0xe10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v7

    .line 10
    rem-int/lit16 v4, v3, 0xe10

    div-int/lit8 v4, v4, 0x3c

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 11
    rem-int/lit16 v4, v3, 0xe10

    div-int/lit8 v4, v4, 0x3c

    rem-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 12
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 13
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    goto/16 :goto_6

    .line 14
    :cond_4
    sget v3, Ld1/d;->c:I

    if-ne v3, v6, :cond_f

    .line 15
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_5

    .line 16
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v7

    .line 17
    :cond_5
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    const/16 v3, 0x2d

    aput v3, v1, v10

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

    aput v4, v1, v9

    .line 21
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    const/16 v4, 0x2e

    aput v4, v1, v13

    .line 22
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    .line 23
    rem-int/2addr v3, v15

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v8

    goto/16 :goto_6

    .line 24
    :cond_7
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_8

    goto/16 :goto_6

    .line 25
    :cond_8
    sget v3, Lo0/e;->B:I

    div-int/lit8 v5, v3, 0x64

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v7

    .line 26
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v12

    .line 27
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    aput v4, v1, v14

    .line 28
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 29
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 30
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 31
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    goto/16 :goto_6

    .line 32
    :cond_9
    sget v5, Lw0/d;->j:I

    rem-int/lit8 v16, v5, 0x6

    if-nez v16, :cond_a

    if-eqz v5, :cond_a

    const/16 v5, 0xc

    const/16 v16, 0x36

    aput v16, v1, v5

    goto :goto_2

    :cond_a
    const/16 v16, 0xc

    and-int/lit16 v5, v5, 0xff

    .line 33
    rem-int/2addr v5, v14

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    :goto_2
    aput v4, v1, v3

    const/16 v3, 0xe

    aput v4, v1, v3

    .line 34
    sget v3, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v16, v3, v5

    if-eqz v16, :cond_d

    sub-int v0, v3, v5

    if-eq v6, v0, :cond_d

    const/4 v0, 0x2

    sub-int/2addr v3, v5

    if-ne v0, v3, :cond_b

    goto :goto_4

    .line 35
    :cond_b
    sget v0, Lw0/d;->i:I

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    if-nez v3, :cond_c

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v4

    goto :goto_3

    :cond_c
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    :goto_3
    aput v3, v1, v12

    .line 36
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 37
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    .line 38
    rem-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v9

    const/16 v0, 0x4b

    aput v0, v1, v11

    const/16 v0, 0x48

    aput v0, v1, v13

    const/16 v0, 0x5a

    aput v0, v1, v15

    aput v4, v1, v8

    goto :goto_6

    .line 39
    :cond_d
    :goto_4
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_e

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_5

    :cond_e
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_5
    aput v3, v1, v7

    .line 40
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 41
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    const/16 v3, 0x2e

    aput v3, v1, v14

    .line 42
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 43
    rem-int/lit8 v0, v0, 0x64

    rem-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    const/16 v0, 0x4d

    aput v0, v1, v13

    const/16 v0, 0x48

    aput v0, v1, v15

    const/16 v0, 0x5a

    aput v0, v1, v8

    :cond_f
    :goto_6
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_7
    if-ge v2, v3, :cond_10

    add-int/lit8 v4, v2, 0x1

    .line 44
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_7

    .line 45
    :cond_10
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

.method public static synthetic d3(Lmodule/canbus/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/e;->I3()V

    return-void
.end method

.method public static synthetic e3(Lmodule/canbus/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/e;->f:I

    return p0
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->o:I

    return v0
.end method

.method public static synthetic g3(Lmodule/canbus/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/e;->G3()V

    return-void
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->m:I

    return v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->p:I

    return v0
.end method

.method public static synthetic j3(Lmodule/canbus/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/e;->H3()V

    return-void
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->q:I

    return v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->s:I

    return v0
.end method

.method public static synthetic m3(Lmodule/canbus/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/e;->F3()V

    return-void
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->r:I

    return v0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->t:I

    return v0
.end method

.method public static synthetic p3(Lmodule/canbus/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/e;->h:I

    return p0
.end method

.method public static synthetic q3(Lmodule/canbus/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/e;->D3()V

    return-void
.end method

.method public static synthetic r3(Lmodule/canbus/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/e;->h:I

    return p1
.end method

.method public static synthetic s3(Lmodule/canbus/e;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/e;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/e;->h:I

    return v0
.end method

.method public static synthetic t3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->j:I

    return v0
.end method

.method public static synthetic u3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/e;->j:I

    return p0
.end method

.method public static synthetic v3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/e;->u:[I

    return-object v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->i:I

    return v0
.end method

.method public static synthetic x3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->k:I

    return v0
.end method

.method public static synthetic y3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/e;->n:I

    return v0
.end method

.method public static synthetic z3(Lmodule/canbus/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/e;->E3()V

    return-void
.end method


# virtual methods
.method public final C3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/e;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/e;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/e;->R2([I)V

    return-void
.end method

.method public final declared-synchronized D3()V
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
    sget v0, Lmodule/canbus/e;->t:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/e;->B3(II)V
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

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/e;->n:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/e;->B3(II)V
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

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/e;->s:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/e;->B3(II)V
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
    sget v0, Lmodule/canbus/e;->o:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/e;->B3(II)V
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

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/e;->p:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/e;->B3(II)V
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

.method public final declared-synchronized I3()V
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
    sget v1, Lmodule/canbus/e;->j:I

    invoke-static {v0, v1}, Lmodule/canbus/e;->B3(II)V
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
    sget-object p1, Lmodule/canbus/e;->v:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/e;->n:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/e;->o:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/e;->p:I

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
    sget-object p1, Lmodule/canbus/e;->w:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/e;->s:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/e;->t:I

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
    iput v3, v0, Lk0/mt;->f:I

    .line 5
    iput v3, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->b:I

    .line 7
    iput v2, v0, Lk0/mt;->c:I

    .line 8
    iput v2, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v2, v0, Lk0/mt;->e:I

    .line 11
    iput v3, v0, Lk0/mt;->f:I

    .line 12
    iput v3, v0, Lk0/mt;->g:I

    .line 13
    iput v3, v0, Lk0/mt;->b:I

    .line 14
    iput v3, v0, Lk0/mt;->c:I

    .line 15
    iput v3, v0, Lk0/mt;->d:I

    .line 16
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lmodule/canbus/e;->init()V

    .line 18
    iget-object v0, p0, Lmodule/canbus/e;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {p0}, Lmodule/canbus/e;->C3()V

    .line 20
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    :cond_1
    :goto_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lmodule/canbus/e;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 23
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/e;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/e;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x24
        0x9
    .end array-data
.end method

.method public U2([BII)V
    .locals 10

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x5a

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    const/16 v1, -0x10

    const/4 v4, 0x2

    if-eq v0, v1, :cond_9

    const/16 p3, 0x31

    if-eq v0, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    const/4 v0, 0x1

    new-array v1, v0, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v0

    aput v5, v1, v3

    const/16 v5, 0xa

    .line 3
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    shr-int/lit8 v6, p3, 0x3

    and-int/2addr v6, v0

    aput v6, v1, v3

    const/16 v6, 0xd

    .line 4
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v7, v0, [I

    shr-int/lit8 v8, p3, 0x2

    and-int/2addr v8, v0

    aput v8, v7, v3

    .line 5
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v7, v0, [I

    const/4 v8, 0x3

    and-int/2addr p3, v8

    aput p3, v7, v3

    .line 6
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x6

    .line 7
    aget-byte p3, p1, p3

    const/4 v1, 0x5

    if-eqz p3, :cond_1

    const/16 v7, 0xc

    if-eq p3, v7, :cond_6

    if-eq p3, v4, :cond_5

    if-eq p3, v8, :cond_4

    if-eq p3, v1, :cond_3

    if-eq p3, v2, :cond_2

    :cond_1
    move p3, v3

    move v2, p3

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_2
    move v2, v0

    move p3, v3

    move v7, p3

    goto :goto_1

    :cond_3
    move v2, v0

    move v7, v2

    move p3, v3

    goto :goto_1

    :cond_4
    move v7, v0

    move p3, v3

    move v2, p3

    goto :goto_1

    :cond_5
    move p3, v0

    move v2, v3

    goto :goto_0

    :cond_6
    move p3, v0

    move v7, p3

    move v2, v3

    :goto_1
    const/16 v8, 0x12

    new-array v9, v0, [I

    aput p3, v9, v3

    .line 8
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v8, v0, [I

    aput v2, v8, v3

    .line 9
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v2, v0, [I

    aput v7, v2, v3

    .line 10
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v2, v0, [I

    add-int/lit8 v7, p2, 0x7

    .line 11
    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0xf

    aput v7, v2, v3

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 12
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/16 v2, 0x1c

    const/16 v7, 0x1b

    if-eqz p3, :cond_7

    new-array p3, v0, [I

    add-int/lit8 v8, p2, 0x9

    .line 13
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, p3, v3

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v0, [I

    add-int/lit8 v0, p2, 0x8

    .line 14
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p3, v3

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array p3, v0, [I

    add-int/lit8 v8, p2, 0x8

    .line 15
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, p3, v3

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v0, [I

    add-int/lit8 v0, p2, 0x9

    .line 16
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p3, v3

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    .line 17
    :goto_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/2addr p2, v6

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x50

    if-lt p1, p2, :cond_8

    .line 19
    div-int/lit8 p2, p1, 0x2

    mul-int/2addr p2, v5

    rem-int/2addr p1, v4

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    add-int/lit16 p2, p2, -0x190

    add-int/lit16 p2, p2, 0x3e8

    goto :goto_3

    .line 20
    :cond_8
    div-int/lit8 p2, p1, 0x2

    mul-int/2addr p2, v5

    rem-int/2addr p1, v4

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    rsub-int p1, p2, 0x190

    rsub-int p2, p1, 0x3e8

    :goto_3
    const/16 p1, 0x258

    if-le p2, p1, :cond_b

    .line 21
    invoke-static {p2}, Lu0/d;->A3(I)V

    goto :goto_4

    .line 22
    :cond_9
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_4

    .line 23
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 25
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 26
    aget-byte v1, p1, v1

    add-int/lit8 v4, p2, 0x5

    .line 27
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x6

    .line 28
    aget-byte v5, p1, v5

    add-int/lit8 p2, p2, 0x7

    .line 29
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x2d

    .line 30
    invoke-static {p2, v3, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/e;->i:I

    and-int/lit16 p2, v1, 0xff

    const/16 p3, 0x1a

    .line 31
    invoke-static {p2, v2, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/e;->q:I

    and-int/lit16 p2, v0, 0xff

    .line 32
    invoke-static {p2, v2, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/e;->r:I

    and-int/lit16 p2, v4, 0xff

    .line 33
    invoke-static {p2, v2, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/e;->k:I

    and-int/lit16 p2, v5, 0xff

    .line 34
    invoke-static {p2, v2, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/e;->l:I

    and-int/lit16 p1, p1, 0xff

    .line 35
    invoke-static {p1, v2, p3}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/e;->m:I

    :cond_b
    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/e;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/e;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/e;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/e;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/e;->e:Ljava/lang/Runnable;

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
    sget-object v0, Lmodule/canbus/e;->u:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/e;->j:I

    :cond_0
    return-void
.end method

.method public c3()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 1
    iput v2, p0, Lmodule/canbus/e;->b:I

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
    invoke-static {}, Lmodule/canbus/e;->b3()B

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

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/e;->x:Lo1/f;

    new-instance v1, Lmodule/canbus/e$e;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/e$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/e$e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/e$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/e$e;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/e$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/e$e;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Lmodule/canbus/e$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/e$e;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lmodule/canbus/e$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lmodule/canbus/e$e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/e$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
