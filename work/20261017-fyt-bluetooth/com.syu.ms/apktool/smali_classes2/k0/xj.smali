.class public Lk0/xj;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x0

.field public static B:I = 0x1

.field public static C:I = 0x3e8

.field public static D:I = 0x0

.field public static E:I = 0x3e8

.field public static F:I = 0x0

.field public static G:I = 0x3e8

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Lo1/g0;

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/xj;->c:I

    const/16 v1, 0x9

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v9, 0x5

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v10, 0x6

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v11, 0x7

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v12, 0x8

    aput-object v4, v2, v12

    iput-object v2, p0, Lk0/xj;->d:[[I

    .line 4
    iput v0, p0, Lk0/xj;->f:I

    const/16 v0, 0xd

    new-array v0, v0, [[I

    new-array v2, v3, [I

    .line 5
    fill-array-data v2, :array_9

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    const/16 v13, 0xb

    aput-object v2, v0, v13

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    const/16 v14, 0xc

    aput-object v2, v0, v14

    iput-object v0, p0, Lk0/xj;->g:[[I

    .line 6
    iput v5, p0, Lk0/xj;->h:I

    .line 7
    iput v5, p0, Lk0/xj;->i:I

    .line 8
    new-instance v0, Lk0/xj$a;

    invoke-direct {v0, p0}, Lk0/xj$a;-><init>(Lk0/xj;)V

    iput-object v0, p0, Lk0/xj;->j:Ljava/lang/Runnable;

    .line 9
    iput v5, p0, Lk0/xj;->k:I

    .line 10
    new-instance v0, Lk0/xj$b;

    invoke-direct {v0, p0}, Lk0/xj$b;-><init>(Lk0/xj;)V

    iput-object v0, p0, Lk0/xj;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/xj$c;

    invoke-direct {v0, p0}, Lk0/xj$c;-><init>(Lk0/xj;)V

    iput-object v0, p0, Lk0/xj;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x20

    invoke-direct {v0, v2, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/xj;->n:Lo1/g0;

    .line 13
    iput v6, p0, Lk0/xj;->o:I

    .line 14
    iput v3, p0, Lk0/xj;->p:I

    .line 15
    iput v7, p0, Lk0/xj;->q:I

    .line 16
    iput v8, p0, Lk0/xj;->r:I

    .line 17
    iput v9, p0, Lk0/xj;->s:I

    .line 18
    iput v10, p0, Lk0/xj;->t:I

    .line 19
    iput v11, p0, Lk0/xj;->u:I

    .line 20
    iput v12, p0, Lk0/xj;->v:I

    .line 21
    iput v1, p0, Lk0/xj;->w:I

    .line 22
    iput v4, p0, Lk0/xj;->x:I

    .line 23
    iput v13, p0, Lk0/xj;->y:I

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
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_10
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_11
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_12
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x2d
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x54
        0x2
    .end array-data
.end method

.method public static a3(I)I
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

.method public static b3(I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    const/4 v3, 0x0

    if-eq p0, v0, :cond_4

    const/16 v0, 0x20

    const/16 v1, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :cond_0
    :pswitch_0
    sget p0, Lk0/xj;->z:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 2
    invoke-static {v2, v3}, Lk0/xj;->c3(II)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 3
    invoke-static {p0, v3}, Lk0/xj;->c3(II)V

    goto :goto_0

    .line 4
    :cond_2
    :pswitch_1
    sget p0, Lk0/xj;->z:I

    if-ne p0, v2, :cond_6

    .line 5
    invoke-static {v1, v3}, Lk0/xj;->c3(II)V

    goto :goto_0

    .line 6
    :cond_3
    :pswitch_2
    sget p0, Lk0/xj;->z:I

    if-ne p0, v2, :cond_6

    .line 7
    invoke-static {v1, v2}, Lk0/xj;->c3(II)V

    goto :goto_0

    .line 8
    :cond_4
    sget p0, Lk0/xj;->z:I

    if-ne p0, v2, :cond_6

    .line 9
    invoke-static {v1, v3}, Lk0/xj;->c3(II)V

    goto :goto_0

    .line 10
    :cond_5
    sget p0, Lk0/xj;->z:I

    if-ne p0, v2, :cond_6

    .line 11
    invoke-static {v1, v2}, Lk0/xj;->c3(II)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static c3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xf2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p0, v0, v1

    const/4 p0, 0x4

    aput p1, v0, p0

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static synthetic l3(Lk0/xj;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/xj;->n:Lo1/g0;

    return-object p0
.end method

.method public static synthetic m3(Lk0/xj;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xj;->h3(I)V

    return-void
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lk0/xj;->B:I

    return v0
.end method

.method public static synthetic o3(Lk0/xj;III)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/xj;->k3(III)Z

    move-result p0

    return p0
.end method

.method public static synthetic p3(Lk0/xj;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xj;->f3(I)V

    return-void
.end method

.method public static synthetic q3(Lk0/xj;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xj;->g3(I)V

    return-void
.end method

.method public static synthetic r3(Lk0/xj;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xj;->j3(I)V

    return-void
.end method

.method public static synthetic s3(Lk0/xj;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xj;->i3(I)V

    return-void
.end method

.method public static synthetic t3(Lk0/xj;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xj;->e3(I)V

    return-void
.end method

.method public static synthetic u3(Lk0/xj;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xj;->d3(I)V

    return-void
.end method

.method public static synthetic v3()I
    .locals 1

    .line 1
    sget v0, Lk0/xj;->A:I

    return v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lk0/xj;->I:I

    return v0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xj;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v3, Lk0/mt;->l:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v3, Lk0/mt;->l:I

    :goto_0
    const/16 v3, 0xe9

    const-string v4, "com.syu.canbus"

    if-eq v0, v3, :cond_1

    const/16 v3, 0xea

    if-eq v0, v3, :cond_1

    const/16 v3, 0xef

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->e:I

    .line 8
    iput v2, v0, Lk0/mt;->f:I

    .line 9
    iput v1, v0, Lk0/mt;->g:I

    .line 10
    iput v1, v0, Lk0/mt;->b:I

    .line 11
    iput v1, v0, Lk0/mt;->c:I

    .line 12
    iput v1, v0, Lk0/mt;->d:I

    .line 13
    iput v1, v0, Lk0/mt;->o:I

    goto :goto_1

    .line 14
    :pswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 15
    iput v2, v0, Lk0/mt;->e:I

    .line 16
    iput v2, v0, Lk0/mt;->f:I

    .line 17
    iput v1, v0, Lk0/mt;->g:I

    .line 18
    iput v1, v0, Lk0/mt;->b:I

    .line 19
    iput v1, v0, Lk0/mt;->c:I

    .line 20
    iput v1, v0, Lk0/mt;->d:I

    .line 21
    iput v1, v0, Lk0/mt;->o:I

    .line 22
    sget-object v0, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 23
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lk0/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lk0/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 27
    :cond_1
    :pswitch_2
    sget-object v0, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 28
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v3, Ll0/g0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v3, Ll0/g0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v3, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v3, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 33
    iput v2, v0, Lk0/mt;->e:I

    .line 34
    iput v2, v0, Lk0/mt;->f:I

    .line 35
    iput v1, v0, Lk0/mt;->g:I

    .line 36
    iput v1, v0, Lk0/mt;->b:I

    .line 37
    iput v1, v0, Lk0/mt;->c:I

    .line 38
    iput v1, v0, Lk0/mt;->d:I

    .line 39
    iput v1, v0, Lk0/mt;->o:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v0, v2

    const/16 v3, -0x5b

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_32

    const/16 v3, -0x5a

    const/16 v8, 0xff

    if-eq v2, v3, :cond_31

    const/16 v3, -0x52

    const/16 v10, 0x10

    const/4 v11, 0x7

    if-eq v2, v3, :cond_2f

    const/16 v3, -0x10

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x41

    const/4 v13, 0x4

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x11

    const/16 v14, 0x12

    if-eq v2, v3, :cond_1f

    if-eq v2, v14, :cond_1d

    const/16 v3, 0x21

    if-eq v2, v3, :cond_16

    const/16 v3, 0x22

    if-eq v2, v3, :cond_b

    const/16 v3, 0x31

    const/16 v9, 0xa

    if-eq v2, v3, :cond_9

    const/16 v3, 0x32

    if-eq v2, v3, :cond_2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_1

    const/16 v3, 0x79

    if-eq v2, v3, :cond_0

    :goto_0
    move-object v2, v1

    goto/16 :goto_12

    :cond_0
    const/16 v2, 0x78

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 2
    aget-byte v9, v0, v8

    shr-int/2addr v9, v11

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    .line 3
    aget-byte v9, v0, v8

    shr-int/lit8 v4, v9, 0x2

    and-int/lit8 v4, v4, 0x1f

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 4
    aget-byte v4, v0, v8

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v8, v0, v4

    shr-int/2addr v8, v13

    and-int/lit8 v8, v8, 0xf

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 6
    aget-byte v4, v0, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 7
    aget-byte v0, v0, v4

    shr-int/2addr v0, v6

    and-int/2addr v0, v7

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p2, 0x4

    .line 8
    aget-byte v2, v0, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x5

    .line 9
    aget-byte v3, v0, v3

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x6

    .line 10
    aget-byte v4, v0, v4

    and-int/2addr v4, v8

    add-int/lit8 v9, p2, 0x7

    .line 11
    aget-byte v9, v0, v9

    and-int/2addr v9, v8

    add-int/lit8 v10, p2, 0x8

    .line 12
    aget-byte v10, v0, v10

    and-int/2addr v10, v8

    add-int/lit8 v16, p2, 0x9

    .line 13
    aget-byte v5, v0, v16

    and-int/2addr v5, v8

    add-int/lit8 v16, p2, 0xa

    .line 14
    aget-byte v13, v0, v16

    and-int/2addr v13, v8

    add-int/lit8 v16, p2, 0xb

    .line 15
    aget-byte v15, v0, v16

    and-int/2addr v15, v8

    add-int/lit8 v16, p2, 0xc

    .line 16
    aget-byte v6, v0, v16

    and-int/2addr v6, v8

    add-int/lit8 v16, p2, 0xd

    .line 17
    aget-byte v11, v0, v16

    and-int/2addr v11, v8

    add-int/lit8 v16, p2, 0xe

    .line 18
    aget-byte v12, v0, v16

    and-int/2addr v12, v8

    add-int/lit8 v16, p2, 0xf

    .line 19
    aget-byte v7, v0, v16

    and-int/2addr v7, v8

    add-int/lit8 v16, p2, 0x10

    .line 20
    aget-byte v14, v0, v16

    and-int/2addr v14, v8

    add-int/lit8 v16, p2, 0x11

    .line 21
    aget-byte v1, v0, v16

    and-int/2addr v1, v8

    const/16 v16, 0x12

    add-int/lit8 v16, p2, 0x12

    .line 22
    aget-byte v0, v0, v16

    and-int/2addr v0, v8

    move/from16 v16, v0

    const/4 v8, 0x1

    new-array v0, v8, [I

    shr-int/lit8 v21, v2, 0x7

    and-int/lit8 v21, v21, 0x1

    const/16 v20, 0x8

    shl-int/lit8 v21, v21, 0x8

    shr-int/lit8 v22, v5, 0x5

    const/16 v19, 0x7

    and-int/lit8 v22, v22, 0x7

    or-int v21, v21, v22

    const/16 v18, 0x0

    aput v21, v0, v18

    const/16 v8, 0x6b

    .line 23
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    const/4 v8, 0x1

    new-array v0, v8, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x1

    const/16 v20, 0x8

    shl-int/lit8 v21, v21, 0x8

    shr-int/lit8 v22, v5, 0x3

    const/16 v17, 0x3

    and-int/lit8 v22, v22, 0x3

    or-int v21, v21, v22

    const/16 v18, 0x0

    aput v21, v0, v18

    const/16 v8, 0x6c

    .line 24
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    const/4 v8, 0x1

    new-array v0, v8, [I

    shr-int/lit8 v21, v2, 0x5

    and-int/lit8 v21, v21, 0x1

    const/16 v20, 0x8

    shl-int/lit8 v21, v21, 0x8

    shr-int/lit8 v22, v5, 0x2

    and-int/lit8 v22, v22, 0x1

    or-int v21, v21, v22

    const/16 v18, 0x0

    aput v21, v0, v18

    const/16 v8, 0x6d

    .line 25
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    const/4 v8, 0x1

    new-array v0, v8, [I

    shr-int/lit8 v21, v2, 0x4

    and-int/lit8 v21, v21, 0x1

    const/16 v20, 0x8

    shl-int/lit8 v21, v21, 0x8

    shr-int/lit8 v5, v5, 0x0

    const/16 v17, 0x3

    and-int/lit8 v5, v5, 0x3

    or-int v5, v21, v5

    aput v5, v0, v18

    const/16 v5, 0x6e

    .line 26
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6f

    new-array v5, v8, [I

    shr-int/lit8 v21, v2, 0x3

    and-int/lit8 v21, v21, 0x1

    shl-int/lit8 v21, v21, 0x8

    shr-int/lit8 v22, v13, 0x6

    const/16 v17, 0x3

    and-int/lit8 v22, v22, 0x3

    or-int v21, v21, v22

    const/16 v18, 0x0

    aput v21, v5, v18

    .line 27
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x70

    new-array v5, v8, [I

    shr-int/lit8 v21, v2, 0x2

    and-int/lit8 v21, v21, 0x1

    const/16 v20, 0x8

    shl-int/lit8 v21, v21, 0x8

    shr-int/lit8 v22, v13, 0x5

    and-int/lit8 v22, v22, 0x1

    or-int v21, v21, v22

    const/16 v18, 0x0

    aput v21, v5, v18

    .line 28
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x71

    new-array v5, v8, [I

    shr-int/lit8 v21, v2, 0x1

    and-int/lit8 v21, v21, 0x1

    const/16 v20, 0x8

    shl-int/lit8 v21, v21, 0x8

    shr-int/lit8 v22, v13, 0x4

    and-int/lit8 v22, v22, 0x1

    or-int v21, v21, v22

    const/16 v18, 0x0

    aput v21, v5, v18

    .line 29
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x72

    new-array v5, v8, [I

    shr-int/lit8 v2, v2, 0x0

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v21, v13, 0x3

    and-int/lit8 v21, v21, 0x1

    or-int v2, v2, v21

    aput v2, v5, v18

    .line 30
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x73

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v8

    const/16 v20, 0x8

    shl-int/lit8 v5, v5, 0x8

    shr-int/lit8 v21, v13, 0x2

    and-int/lit8 v21, v21, 0x1

    or-int v5, v5, v21

    const/16 v18, 0x0

    aput v5, v2, v18

    .line 31
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x74

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v8

    const/16 v20, 0x8

    shl-int/lit8 v5, v5, 0x8

    shr-int/lit8 v13, v13, 0x0

    const/16 v17, 0x3

    and-int/lit8 v13, v13, 0x3

    or-int/2addr v5, v13

    aput v5, v2, v18

    .line 32
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x75

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0x8

    shr-int/lit8 v13, v15, 0x5

    const/16 v19, 0x7

    and-int/lit8 v13, v13, 0x7

    or-int/2addr v5, v13

    const/4 v13, 0x0

    aput v5, v2, v13

    .line 33
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x76

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v8

    const/16 v13, 0x8

    shl-int/2addr v5, v13

    shr-int/lit8 v13, v15, 0x2

    const/16 v19, 0x7

    and-int/lit8 v13, v13, 0x7

    or-int/2addr v5, v13

    const/4 v13, 0x0

    aput v5, v2, v13

    .line 34
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x77

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v8

    const/16 v13, 0x8

    shl-int/2addr v5, v13

    shr-int/lit8 v13, v15, 0x1

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    const/4 v13, 0x0

    aput v5, v2, v13

    .line 35
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7d

    new-array v2, v8, [I

    shr-int/lit8 v5, v9, 0x3

    and-int/2addr v5, v8

    const/16 v20, 0x8

    shl-int/lit8 v5, v5, 0x8

    shr-int/2addr v15, v13

    and-int/2addr v15, v8

    or-int/2addr v5, v15

    aput v5, v2, v13

    .line 36
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7e

    new-array v2, v8, [I

    shr-int/lit8 v5, v4, 0x0

    and-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0x8

    shr-int/lit8 v13, v6, 0x7

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    const/4 v13, 0x0

    aput v5, v2, v13

    .line 37
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7f

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v8

    const/16 v13, 0x8

    shl-int/2addr v5, v13

    shr-int/lit8 v13, v6, 0x6

    and-int/2addr v13, v8

    or-int/2addr v13, v5

    const/4 v15, 0x0

    aput v13, v2, v15

    .line 38
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x80

    new-array v2, v8, [I

    shr-int/lit8 v13, v6, 0x5

    and-int/2addr v13, v8

    or-int/2addr v13, v5

    aput v13, v2, v15

    .line 39
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x81

    new-array v2, v8, [I

    shr-int/lit8 v13, v6, 0x4

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    aput v5, v2, v15

    .line 40
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x82

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v8

    const/16 v13, 0x8

    shl-int/2addr v5, v13

    shr-int/lit8 v15, v6, 0x3

    and-int/2addr v15, v8

    or-int/2addr v5, v15

    const/4 v15, 0x0

    aput v5, v2, v15

    .line 41
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x83

    new-array v2, v8, [I

    shr-int/2addr v3, v15

    and-int/2addr v3, v8

    shl-int/2addr v3, v13

    shr-int/lit8 v5, v6, 0x2

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    aput v3, v2, v15

    .line 42
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x84

    new-array v2, v8, [I

    shr-int/lit8 v3, v4, 0x7

    and-int/2addr v3, v8

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    shr-int/2addr v6, v15

    const/4 v13, 0x3

    and-int/2addr v6, v13

    or-int/2addr v3, v6

    aput v3, v2, v15

    .line 43
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x85

    new-array v2, v8, [I

    shr-int/lit8 v3, v4, 0x6

    and-int/2addr v3, v8

    shl-int/2addr v3, v5

    shr-int/lit8 v5, v11, 0x5

    const/4 v6, 0x7

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 44
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x86

    new-array v2, v8, [I

    shr-int/lit8 v3, v4, 0x5

    and-int/2addr v3, v8

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    shr-int/lit8 v5, v11, 0x4

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 45
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x87

    new-array v2, v8, [I

    shr-int/lit8 v3, v4, 0x4

    and-int/2addr v3, v8

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    shr-int/lit8 v5, v11, 0x3

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 46
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x88

    new-array v2, v8, [I

    shr-int/lit8 v3, v4, 0x3

    and-int/2addr v3, v8

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    shr-int/lit8 v5, v11, 0x1

    const/4 v6, 0x3

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 47
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x89

    new-array v2, v8, [I

    shr-int/lit8 v3, v9, 0x2

    and-int/2addr v3, v8

    const/16 v6, 0x8

    shl-int/2addr v3, v6

    shr-int/2addr v11, v5

    and-int/2addr v11, v8

    or-int/2addr v3, v11

    aput v3, v2, v5

    .line 48
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8a

    new-array v2, v8, [I

    shr-int/lit8 v3, v4, 0x2

    and-int/2addr v3, v8

    shl-int/2addr v3, v6

    shr-int/lit8 v5, v12, 0x7

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 49
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8b

    new-array v2, v8, [I

    shr-int/lit8 v3, v4, 0x1

    and-int/2addr v3, v8

    shl-int/2addr v3, v6

    shr-int/lit8 v4, v12, 0x5

    const/4 v6, 0x3

    and-int/2addr v4, v6

    or-int/2addr v4, v3

    aput v4, v2, v5

    .line 50
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8c

    new-array v2, v8, [I

    shr-int/lit8 v4, v12, 0x3

    and-int/2addr v4, v6

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 51
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8d

    new-array v2, v8, [I

    shr-int/lit8 v4, v12, 0x1

    and-int/2addr v4, v6

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 52
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8e

    new-array v2, v8, [I

    shr-int/lit8 v4, v12, 0x0

    and-int/2addr v4, v8

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 53
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8f

    new-array v2, v8, [I

    shr-int/lit8 v4, v7, 0x6

    const/4 v6, 0x3

    and-int/2addr v4, v6

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 54
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x90

    new-array v2, v8, [I

    shr-int/lit8 v4, v7, 0x4

    and-int/2addr v4, v6

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 55
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x91

    new-array v2, v8, [I

    shr-int/lit8 v4, v7, 0x3

    and-int/2addr v4, v8

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 56
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x92

    new-array v2, v8, [I

    shr-int/lit8 v4, v7, 0x2

    and-int/2addr v4, v8

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 57
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x93

    new-array v2, v8, [I

    shr-int/lit8 v4, v7, 0x0

    const/4 v6, 0x3

    and-int/2addr v4, v6

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 58
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x94

    new-array v2, v8, [I

    shr-int/lit8 v4, v14, 0x7

    and-int/2addr v4, v8

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 59
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x95

    new-array v2, v8, [I

    shr-int/lit8 v4, v14, 0x6

    and-int/2addr v4, v8

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 60
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x96

    new-array v2, v8, [I

    shr-int/lit8 v4, v14, 0x5

    and-int/2addr v4, v8

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 61
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x97

    new-array v2, v8, [I

    shr-int/lit8 v4, v14, 0x4

    and-int/2addr v4, v8

    or-int/lit16 v4, v4, 0x100

    aput v4, v2, v5

    .line 62
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x98

    new-array v2, v8, [I

    shr-int/lit8 v4, v9, 0x1

    and-int/2addr v4, v8

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    shr-int/lit8 v5, v14, 0x3

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 63
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x99

    new-array v2, v8, [I

    shr-int/lit8 v4, v9, 0x0

    and-int/2addr v4, v8

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    shr-int/lit8 v5, v14, 0x2

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 64
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9a

    new-array v2, v8, [I

    shr-int/lit8 v4, v10, 0x6

    and-int/2addr v4, v8

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    shr-int/lit8 v6, v14, 0x0

    const/4 v7, 0x3

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    aput v4, v2, v5

    .line 65
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9b

    new-array v2, v8, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    or-int/2addr v3, v4

    aput v3, v2, v5

    .line 66
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9c

    new-array v2, v8, [I

    shr-int/lit8 v3, v9, 0x7

    and-int/2addr v3, v8

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v8

    or-int/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 67
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9d

    new-array v2, v8, [I

    shr-int/lit8 v3, v9, 0x6

    and-int/2addr v3, v8

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    const/4 v5, 0x3

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 68
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9e

    new-array v2, v8, [I

    shr-int/lit8 v3, v9, 0x5

    and-int/2addr v3, v8

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    shr-int/lit8 v5, v1, 0x2

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 69
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9f

    new-array v2, v8, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v9, 0x4

    and-int/2addr v3, v8

    shl-int/2addr v3, v4

    shr-int/2addr v1, v5

    const/4 v6, 0x3

    and-int/2addr v1, v6

    or-int/2addr v1, v3

    aput v1, v2, v5

    .line 70
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa0

    new-array v1, v8, [I

    shr-int/lit8 v2, v10, 0x7

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    shr-int/lit8 v3, v16, 0x5

    const/4 v5, 0x7

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 71
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa1

    new-array v1, v8, [I

    const/4 v2, 0x5

    shr-int/lit8 v2, v10, 0x5

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    const/4 v4, 0x3

    shr-int/lit8 v5, v16, 0x3

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    aput v2, v1, v3

    .line 72
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    move-object/from16 v2, p0

    goto/16 :goto_12

    :cond_2
    move v1, v8

    move v8, v7

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x8

    .line 73
    aget-byte v3, v0, v3

    shl-int/2addr v3, v10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, v0, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xa

    aget-byte v0, v0, v4

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const/16 v0, 0xa2

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 74
    sget v1, Lk0/xj;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 75
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v0

    sget v3, Lk0/xj;->H:I

    sget v4, Lk0/xj;->C:I

    add-int/2addr v4, v3

    if-le v1, v4, :cond_3

    if-eqz v3, :cond_3

    const/16 v1, 0xaa

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 76
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    const/16 v1, 0xaa

    new-array v3, v2, [I

    aput v4, v3, v4

    .line 77
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/16 v1, 0xaa

    new-array v3, v2, [I

    aput v4, v3, v4

    .line 78
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    .line 79
    :goto_2
    sget v1, Lk0/xj;->D:I

    if-ne v1, v2, :cond_6

    .line 80
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v0

    sget v3, Lk0/xj;->J:I

    sget v4, Lk0/xj;->E:I

    add-int/2addr v4, v3

    if-le v1, v4, :cond_5

    if-eqz v3, :cond_5

    const/16 v1, 0xac

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 81
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    const/16 v1, 0xac

    new-array v3, v2, [I

    aput v4, v3, v4

    .line 82
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    const/16 v1, 0xac

    new-array v3, v2, [I

    aput v4, v3, v4

    .line 83
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    .line 84
    :goto_3
    sget v1, Lk0/xj;->F:I

    if-ne v1, v2, :cond_8

    .line 85
    sget-object v1, Lk0/nt;->g:[I

    aget v0, v1, v0

    sget v1, Lk0/xj;->K:I

    sget v3, Lk0/xj;->G:I

    add-int/2addr v3, v1

    if-le v0, v3, :cond_7

    if-eqz v1, :cond_7

    const/16 v0, 0xad

    new-array v1, v2, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 86
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    const/16 v0, 0xad

    new-array v1, v2, [I

    aput v3, v1, v3

    .line 87
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    const/16 v0, 0xad

    new-array v1, v2, [I

    aput v3, v1, v3

    .line 88
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :cond_9
    move v1, v8

    add-int/lit8 v2, p2, 0x2

    .line 89
    aget-byte v2, v0, v2

    and-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    .line 90
    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    add-int/lit8 v5, p2, 0x4

    .line 91
    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    add-int/lit8 v6, p2, 0x6

    .line 92
    aget-byte v6, v0, v6

    and-int/2addr v6, v1

    add-int/lit8 v7, p2, 0x7

    .line 93
    aget-byte v7, v0, v7

    and-int/2addr v7, v1

    const/4 v8, 0x1

    new-array v11, v8, [I

    shr-int/lit8 v12, v2, 0x6

    and-int/2addr v12, v8

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 94
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    new-array v9, v8, [I

    const/4 v11, 0x3

    shr-int/2addr v2, v11

    and-int/2addr v2, v8

    aput v2, v9, v13

    const/16 v2, 0xd

    .line 95
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v9, v3, 0x4

    and-int/2addr v9, v8

    aput v9, v2, v13

    const/16 v9, 0xc

    .line 96
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x24

    new-array v9, v8, [I

    shr-int/lit8 v11, v3, 0x3

    and-int/2addr v11, v8

    aput v11, v9, v13

    .line 97
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v9, v8

    aput v9, v2, v13

    const/16 v9, 0xb

    .line 98
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v3, v4

    and-int/2addr v3, v8

    aput v3, v2, v13

    const/16 v3, 0xe

    .line 99
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v13

    .line 100
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    shr-int/lit8 v4, v5, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    shr-int/lit8 v4, v5, 0x2

    const/4 v9, 0x3

    and-int/2addr v4, v9

    aput v4, v3, v13

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    shr-int/lit8 v4, v5, 0x0

    and-int/2addr v4, v9

    aput v4, v3, v13

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v6, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v13

    const/16 v3, 0x12

    .line 104
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    shr-int/lit8 v4, v6, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 105
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    shr-int/lit8 v4, v6, 0x0

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v13

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v8, [I

    shr-int/lit8 v4, v7, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v8, [I

    shr-int/lit8 v4, v7, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v8, [I

    shr-int/lit8 v4, v7, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 110
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v8, [I

    shr-int/lit8 v4, v7, 0x0

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v13

    .line 111
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 112
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x1b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 113
    aget-byte v4, v0, v4

    and-int/2addr v4, v1

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v8, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 114
    aget-byte v0, v0, v4

    and-int/2addr v0, v1

    aput v0, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x1b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 115
    aget-byte v4, v0, v4

    and-int/2addr v4, v1

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 116
    aget-byte v0, v0, v4

    and-int/2addr v0, v1

    aput v0, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v1, p2, 0x2

    .line 117
    aget-byte v1, v0, v1

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 118
    aget-byte v0, v0, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    if-eq v1, v4, :cond_c

    goto/16 :goto_1

    :cond_c
    move-object/from16 v2, p0

    .line 119
    iget v1, v2, Lk0/xj;->i:I

    if-eq v0, v1, :cond_34

    if-le v0, v1, :cond_e

    const/4 v1, 0x0

    .line 120
    :goto_4
    iget v3, v2, Lk0/xj;->i:I

    sub-int v3, v0, v3

    if-ge v1, v3, :cond_d

    const/16 v3, 0x1f

    const/4 v4, 0x0

    .line 121
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    const/16 v1, 0x1f

    const/4 v3, 0x1

    .line 122
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_e
    if-ge v0, v1, :cond_10

    const/4 v1, 0x0

    .line 123
    :goto_5
    iget v3, v2, Lk0/xj;->i:I

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_f

    const/16 v3, 0x1e

    const/4 v4, 0x0

    .line 124
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    const/16 v1, 0x1e

    const/4 v3, 0x1

    .line 125
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 126
    :cond_10
    :goto_6
    iput v0, v2, Lk0/xj;->i:I

    goto/16 :goto_12

    :cond_11
    move-object/from16 v2, p0

    .line 127
    iget v1, v2, Lk0/xj;->h:I

    if-eq v0, v1, :cond_34

    if-le v0, v1, :cond_13

    const/4 v1, 0x0

    .line 128
    :goto_7
    iget v3, v2, Lk0/xj;->h:I

    sub-int v3, v0, v3

    if-ge v1, v3, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x7

    .line 129
    invoke-static {v4, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    const/4 v4, 0x7

    const/4 v5, 0x1

    .line 130
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ge v0, v1, :cond_15

    move v1, v3

    .line 131
    :goto_8
    iget v4, v2, Lk0/xj;->h:I

    sub-int/2addr v4, v0

    if-ge v1, v4, :cond_14

    const/16 v4, 0x8

    .line 132
    invoke-static {v4, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_8

    :cond_14
    const/16 v4, 0x8

    .line 133
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    .line 134
    :cond_15
    :goto_9
    iput v0, v2, Lk0/xj;->h:I

    goto/16 :goto_12

    :cond_16
    move-object v2, v1

    move v1, v8

    add-int/lit8 v3, p2, 0x2

    .line 135
    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    iput v3, v2, Lk0/xj;->f:I

    const/4 v3, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 136
    aget-byte v0, v0, v4

    const/4 v3, 0x0

    .line 137
    :goto_a
    iget-object v4, v2, Lk0/xj;->g:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_18

    .line 138
    iget v5, v2, Lk0/xj;->f:I

    aget-object v6, v4, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v5, v6, :cond_17

    if-eqz v5, :cond_18

    .line 139
    iput v3, v2, Lk0/xj;->e:I

    goto :goto_b

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    :goto_b
    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 140
    array-length v0, v4

    if-ge v3, v0, :cond_34

    .line 141
    aget-object v0, v4, v3

    const/4 v5, 0x1

    aget v0, v0, v5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    aget-object v0, v4, v3

    aget v0, v0, v5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    aget-object v0, v4, v3

    aget v0, v0, v5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_19

    aget-object v0, v4, v3

    aget v0, v0, v5

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1a

    :cond_19
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    .line 142
    aget-object v0, v4, v3

    aget v0, v0, v5

    invoke-static {v0}, Lk0/xj;->b3(I)V

    goto/16 :goto_12

    .line 143
    :cond_1a
    aget-object v0, v4, v3

    aget v0, v0, v5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_1b
    const/4 v5, 0x1

    .line 144
    iget v0, v2, Lk0/xj;->e:I

    array-length v3, v4

    if-ge v0, v3, :cond_1c

    .line 145
    aget-object v0, v4, v0

    aget v0, v0, v5

    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    .line 146
    :cond_1c
    iput v1, v2, Lk0/xj;->e:I

    goto/16 :goto_12

    :cond_1d
    move-object v2, v1

    move v5, v7

    move v1, v13

    add-int/lit8 v3, p2, 0x4

    .line 147
    aget-byte v0, v0, v3

    const-string v1, "persist.syu.reversefrontdoor"

    const/4 v3, 0x0

    .line 148
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1e

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x7

    and-int/2addr v6, v5

    aput v6, v1, v3

    .line 149
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v5

    aput v6, v1, v3

    .line 150
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1e
    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v5

    aput v6, v1, v3

    .line 151
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x7

    and-int/2addr v6, v5

    aput v6, v1, v3

    .line 152
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_c
    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x5

    and-int/2addr v6, v5

    aput v6, v1, v3

    const/4 v6, 0x3

    .line 153
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x4

    and-int/2addr v6, v5

    aput v6, v1, v3

    const/4 v6, 0x4

    .line 154
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x3

    and-int/2addr v6, v5

    aput v6, v1, v3

    const/4 v6, 0x5

    .line 155
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, v1, v3

    .line 156
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_1f
    move-object v2, v1

    move v1, v8

    add-int/lit8 v3, p2, 0x4

    .line 157
    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    iput v3, v2, Lk0/xj;->c:I

    const/4 v3, 0x0

    .line 158
    :goto_d
    iget-object v4, v2, Lk0/xj;->d:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_21

    .line 159
    iget v5, v2, Lk0/xj;->c:I

    aget-object v6, v4, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v5, v6, :cond_20

    if-eqz v5, :cond_21

    .line 160
    iput v3, v2, Lk0/xj;->b:I

    goto :goto_e

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 161
    :cond_21
    :goto_e
    iget v5, v2, Lk0/xj;->c:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_25

    if-eqz v5, :cond_23

    add-int/lit8 v5, p2, 0x5

    .line 162
    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_23

    .line 163
    array-length v1, v4

    if-ge v3, v1, :cond_22

    .line 164
    aget-object v1, v4, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    :cond_22
    const/4 v4, 0x1

    goto :goto_10

    .line 165
    :cond_23
    iget v3, v2, Lk0/xj;->b:I

    if-eq v3, v1, :cond_24

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    if-nez v5, :cond_24

    .line 166
    aget-object v3, v4, v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_24
    const/4 v4, 0x1

    .line 167
    :goto_f
    iput v1, v2, Lk0/xj;->b:I

    goto :goto_10

    :cond_25
    const/4 v4, 0x1

    add-int/lit8 v3, p2, 0x5

    .line 168
    aget-byte v3, v0, v3

    and-int/2addr v1, v3

    if-ne v1, v4, :cond_29

    .line 169
    sget v1, Lk0/nt;->a:I

    const v3, 0xe901bb

    if-ne v1, v3, :cond_28

    .line 170
    sget v1, Lh0/c;->E:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_27

    const/4 v3, 0x4

    if-eq v1, v3, :cond_27

    const/4 v3, 0x5

    if-eq v1, v3, :cond_27

    .line 171
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0x12

    const/4 v3, 0x0

    .line 172
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    const/4 v4, 0x1

    .line 173
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_26
    const/16 v1, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 174
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 175
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_27
    const/16 v1, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 176
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 177
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_28
    const/16 v1, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 178
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 179
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    :cond_29
    :goto_10
    add-int/lit8 v1, p2, 0x9

    .line 180
    aget-byte v1, v0, v1

    const/16 v3, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v0, v0, v3

    const/16 v3, 0x21c

    invoke-static {v1, v0, v4, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_12

    :cond_2a
    move-object v2, v1

    move v1, v8

    add-int/lit8 v3, p2, 0x2

    .line 181
    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    invoke-static {v3}, Lk0/xj;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 182
    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    invoke-static {v3}, Lk0/xj;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    add-int/lit8 v3, p2, 0x4

    .line 183
    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    invoke-static {v3}, Lk0/xj;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    add-int/lit8 v3, p2, 0x5

    .line 184
    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    invoke-static {v3}, Lk0/xj;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->U2(I)V

    add-int/lit8 v3, p2, 0x6

    .line 185
    aget-byte v4, v0, v3

    and-int/2addr v4, v1

    add-int/lit8 v5, p2, 0x7

    .line 186
    aget-byte v6, v0, v5

    and-int/2addr v6, v1

    add-int/lit8 v7, p2, 0x8

    .line 187
    aget-byte v8, v0, v7

    and-int/2addr v8, v1

    add-int/lit8 v9, p2, 0x9

    .line 188
    aget-byte v10, v0, v9

    and-int/2addr v10, v1

    if-nez v4, :cond_2b

    if-nez v6, :cond_2b

    if-nez v8, :cond_2b

    if-nez v10, :cond_2b

    const/4 v11, 0x0

    .line 189
    invoke-static {v11}, Lu0/d;->C2(I)V

    goto :goto_11

    .line 190
    :cond_2b
    sget v11, Ll0/c0;->g:I

    if-ne v11, v4, :cond_2c

    sget v11, Ll0/c0;->h:I

    if-ne v11, v6, :cond_2c

    sget v11, Ll0/c0;->i:I

    if-ne v11, v8, :cond_2c

    sget v11, Ll0/c0;->j:I

    if-eq v11, v10, :cond_2d

    .line 191
    :cond_2c
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_2d

    const/4 v11, 0x1

    .line 192
    invoke-static {v11}, Lu0/d;->C2(I)V

    const/4 v11, 0x4

    .line 193
    sput v11, Ll0/c0;->k:I

    .line 194
    sget-object v11, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v11}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 195
    :cond_2d
    :goto_11
    sput v4, Ll0/c0;->g:I

    .line 196
    sput v6, Ll0/c0;->h:I

    .line 197
    sput v8, Ll0/c0;->i:I

    .line 198
    sput v10, Ll0/c0;->j:I

    .line 199
    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    invoke-static {v3}, Lk0/xj;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 200
    aget-byte v3, v0, v5

    and-int/2addr v3, v1

    invoke-static {v3}, Lk0/xj;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    .line 201
    aget-byte v3, v0, v7

    and-int/2addr v3, v1

    invoke-static {v3}, Lk0/xj;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 202
    aget-byte v0, v0, v9

    and-int/2addr v0, v1

    invoke-static {v0}, Lk0/xj;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_12

    :cond_2e
    move-object v2, v1

    .line 203
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v1, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_2f
    move-object v2, v1

    move v1, v8

    .line 204
    sget v3, Lk0/nt;->a:I

    const v5, 0xb01bb

    if-eq v3, v5, :cond_30

    const v5, 0xe01bb

    if-eq v3, v5, :cond_30

    const v5, 0xf01bb

    if-eq v3, v5, :cond_30

    goto/16 :goto_12

    :cond_30
    add-int/lit8 v3, p2, 0x7

    .line 205
    aget-byte v3, v0, v3

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    const v6, 0xff00

    and-int/2addr v3, v6

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v0, v7

    and-int/2addr v7, v1

    or-int/2addr v3, v7

    add-int/lit8 v7, p2, 0x9

    .line 206
    aget-byte v7, v0, v7

    shl-int/2addr v7, v5

    and-int/2addr v7, v6

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v0, v8

    and-int/2addr v8, v1

    or-int/2addr v7, v8

    add-int/lit8 v8, p2, 0xb

    .line 207
    aget-byte v8, v0, v8

    shl-int/2addr v8, v5

    and-int/2addr v8, v6

    add-int/lit8 v9, p2, 0xc

    aget-byte v9, v0, v9

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0xd

    .line 208
    aget-byte v9, v0, v9

    shl-int/2addr v9, v5

    and-int/2addr v9, v6

    add-int/lit8 v11, p2, 0xe

    aget-byte v11, v0, v11

    and-int/2addr v11, v1

    or-int/2addr v9, v11

    add-int/lit8 v11, p2, 0xf

    .line 209
    aget-byte v11, v0, v11

    shl-int/lit8 v5, v11, 0x8

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x10

    aget-byte v6, v0, v6

    and-int/2addr v1, v6

    or-int/2addr v1, v5

    const/16 v5, 0x63

    const/4 v6, 0x1

    new-array v11, v6, [I

    add-int/lit8 v12, p2, 0x5

    .line 210
    aget-byte v12, v0, v12

    const/4 v13, 0x0

    aput v12, v11, v13

    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x64

    new-array v11, v6, [I

    add-int/lit8 v12, p2, 0x6

    .line 211
    aget-byte v14, v0, v12

    const/4 v15, 0x5

    shr-int/2addr v14, v15

    const/4 v15, 0x7

    and-int/2addr v14, v15

    aput v14, v11, v13

    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x65

    new-array v11, v6, [I

    .line 212
    aget-byte v0, v0, v12

    shr-int/2addr v0, v4

    and-int/2addr v0, v15

    aput v0, v11, v13

    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v4, v6, [I

    shl-int/2addr v3, v10

    or-int/2addr v3, v7

    aput v3, v4, v13

    .line 213
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v3, v6, [I

    shl-int/lit8 v4, v8, 0x10

    or-int/2addr v4, v9

    aput v4, v3, v13

    .line 214
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v3, v6, [I

    aput v1, v3, v13

    .line 215
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_31
    move-object v2, v1

    move v13, v6

    move v6, v7

    move v1, v8

    const/16 v3, 0xb3

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x2

    .line 216
    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    aput v5, v4, v13

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb4

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x3

    .line 217
    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    aput v5, v4, v13

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb5

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x4

    .line 218
    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    aput v5, v4, v13

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb6

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x5

    .line 219
    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    aput v5, v4, v13

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb7

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x7

    .line 220
    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    aput v5, v4, v13

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb8

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x9

    .line 221
    aget-byte v0, v0, v5

    and-int/2addr v0, v1

    aput v0, v4, v13

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_32
    move-object v2, v1

    .line 222
    sget v1, Lk0/nt;->a:I

    const v3, 0xb01bb

    if-eq v1, v3, :cond_33

    const v3, 0xe01bb

    if-eq v1, v3, :cond_33

    const v3, 0xf01bb

    if-eq v1, v3, :cond_33

    goto :goto_12

    .line 223
    :cond_33
    :try_start_0
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x5

    const/4 v5, 0x5

    add-int/lit8 v5, p3, -0x5

    const-string v6, "GB2312"

    invoke-direct {v1, v0, v3, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v3, 0x69

    const/4 v5, 0x1

    new-array v5, v5, [I

    add-int/lit8 v4, p2, 0x2

    .line 224
    aget-byte v0, v0, v4

    const/4 v4, 0x0

    aput v0, v5, v4

    invoke-static {v3, v5, v1}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_34
    :goto_12
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xj;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/xj;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Ll0/g0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v1, Ll0/g0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb9

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
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0x84

    const/16 v3, 0x83

    const/4 v4, 0x6

    const/16 v5, 0xd

    const/16 v6, 0xe3

    const/4 v7, 0x5

    const/16 v8, 0xa

    const/16 v9, 0xef

    const/16 v10, 0x10

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    if-eqz v1, :cond_12

    .line 1
    array-length v2, v1

    if-lt v2, v13, :cond_12

    new-array v2, v7, [I

    aput v6, v2, v14

    aput v13, v2, v15

    const/16 v3, 0xad

    aput v3, v2, v13

    .line 2
    aget v3, v1, v14

    aput v3, v2, v12

    aget v1, v1, v15

    aput v1, v2, v11

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz v1, :cond_12

    .line 3
    array-length v2, v1

    if-lt v2, v13, :cond_12

    new-array v2, v7, [I

    aput v6, v2, v14

    aput v13, v2, v15

    const/16 v3, 0x9a

    aput v3, v2, v13

    .line 4
    aget v3, v1, v14

    aput v3, v2, v12

    aget v1, v1, v15

    aput v1, v2, v11

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 5
    :pswitch_3
    aget v2, v1, v14

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 6
    :pswitch_4
    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lk0/xj;->d3(I)V

    goto/16 :goto_1

    .line 7
    :pswitch_5
    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lk0/xj;->e3(I)V

    goto/16 :goto_1

    .line 8
    :pswitch_6
    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lk0/xj;->i3(I)V

    goto/16 :goto_1

    .line 9
    :pswitch_7
    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lk0/xj;->j3(I)V

    goto/16 :goto_1

    .line 10
    :pswitch_8
    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lk0/xj;->g3(I)V

    goto/16 :goto_1

    .line 11
    :pswitch_9
    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lk0/xj;->f3(I)V

    goto/16 :goto_1

    .line 12
    :pswitch_a
    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lk0/xj;->h3(I)V

    goto/16 :goto_1

    .line 13
    :cond_0
    aget v1, v1, v15

    const/16 v2, 0xa2

    const/16 v5, 0x2710

    if-eq v1, v15, :cond_5

    if-eq v1, v13, :cond_3

    if-eq v1, v12, :cond_1

    goto/16 :goto_1

    .line 14
    :cond_1
    invoke-virtual {v0, v5}, Lk0/xj;->d3(I)V

    .line 15
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    sput v1, Lk0/xj;->K:I

    .line 16
    iget-object v1, v0, Lk0/xj;->n:Lo1/g0;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v14}, Lo1/g0;->b(II)I

    move-result v1

    sget v3, Lk0/xj;->K:I

    if-eq v1, v3, :cond_2

    .line 17
    iget-object v1, v0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {v1, v2, v3}, Lo1/g0;->g(II)V

    :cond_2
    const/16 v1, 0xb1

    new-array v2, v15, [I

    .line 18
    sget v3, Lk0/xj;->K:I

    aput v3, v2, v14

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    .line 19
    :cond_3
    invoke-virtual {v0, v5}, Lk0/xj;->i3(I)V

    .line 20
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    sput v1, Lk0/xj;->J:I

    .line 21
    iget-object v1, v0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {v1, v8, v14}, Lo1/g0;->b(II)I

    move-result v1

    sget v2, Lk0/xj;->J:I

    if-eq v1, v2, :cond_4

    .line 22
    iget-object v1, v0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {v1, v8, v2}, Lo1/g0;->g(II)V

    :cond_4
    const/16 v1, 0xb0

    new-array v2, v15, [I

    .line 23
    sget v3, Lk0/xj;->J:I

    aput v3, v2, v14

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    .line 24
    :cond_5
    invoke-virtual {v0, v4}, Lk0/xj;->f3(I)V

    .line 25
    invoke-virtual {v0, v5}, Lk0/xj;->g3(I)V

    .line 26
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    sput v1, Lk0/xj;->H:I

    .line 27
    iget-object v1, v0, Lk0/xj;->n:Lo1/g0;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v14}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/xj;->H:I

    if-eq v1, v4, :cond_6

    .line 28
    iget-object v1, v0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {v1, v2, v4}, Lo1/g0;->g(II)V

    :cond_6
    const/16 v1, 0xae

    new-array v4, v15, [I

    .line 29
    sget v5, Lk0/xj;->H:I

    aput v5, v4, v14

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    .line 30
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 32
    iget v4, v1, Landroid/text/format/Time;->year:I

    add-int/lit16 v4, v4, -0x7d0

    int-to-byte v4, v4

    .line 33
    iget v5, v1, Landroid/text/format/Time;->month:I

    add-int/2addr v5, v15

    int-to-byte v5, v5

    .line 34
    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    int-to-byte v1, v1

    shl-int/2addr v4, v10

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    shl-int/lit8 v2, v5, 0x8

    const v5, 0xff00

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 35
    sput v1, Lk0/xj;->I:I

    .line 36
    iget-object v1, v0, Lk0/xj;->n:Lo1/g0;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v14}, Lo1/g0;->b(II)I

    move-result v1

    sget v3, Lk0/xj;->I:I

    if-eq v1, v3, :cond_7

    .line 37
    iget-object v1, v0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {v1, v2, v3}, Lo1/g0;->g(II)V

    :cond_7
    const/16 v1, 0xaf

    new-array v2, v15, [I

    .line 38
    sget v3, Lk0/xj;->I:I

    aput v3, v2, v14

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    .line 39
    :pswitch_b
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 40
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_c
    if-eqz v1, :cond_12

    .line 41
    array-length v2, v1

    if-lt v2, v13, :cond_12

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v6, v2, v14

    aput v11, v2, v15

    const/16 v3, 0x7e

    aput v3, v2, v13

    aput v8, v2, v12

    aput v14, v2, v11

    .line 42
    aget v3, v1, v14

    aput v3, v2, v7

    aget v1, v1, v15

    aput v1, v2, v4

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_d
    if-eqz v1, :cond_12

    .line 43
    array-length v2, v1

    if-lt v2, v13, :cond_12

    new-array v2, v7, [I

    aput v6, v2, v14

    aput v13, v2, v15

    const/16 v3, 0xf2

    aput v3, v2, v13

    .line 44
    aget v3, v1, v14

    aput v3, v2, v12

    aget v1, v1, v15

    aput v1, v2, v11

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_e
    if-eqz v1, :cond_12

    .line 45
    array-length v2, v1

    if-lez v2, :cond_12

    .line 46
    sget v2, Lk0/nt;->c:I

    if-eq v2, v5, :cond_8

    if-eq v2, v9, :cond_8

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 47
    :cond_8
    :pswitch_f
    aget v1, v1, v14

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    move v15, v1

    .line 48
    :goto_0
    invoke-virtual {v0, v15}, Lk0/xj;->y3(I)V

    goto :goto_1

    .line 49
    :pswitch_10
    sget v1, Lk0/nt;->c:I

    if-eq v1, v4, :cond_b

    if-eq v1, v8, :cond_a

    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_b

    goto :goto_1

    :cond_a
    const/16 v1, 0x85

    .line 50
    invoke-virtual {v0, v1}, Lk0/xj;->x3(I)V

    goto :goto_1

    .line 51
    :cond_b
    invoke-virtual {v0, v2}, Lk0/xj;->x3(I)V

    goto :goto_1

    .line 52
    :pswitch_11
    sget v1, Lk0/nt;->c:I

    if-eq v1, v5, :cond_e

    if-eq v1, v10, :cond_d

    if-eq v1, v9, :cond_c

    packed-switch v1, :pswitch_data_3

    goto :goto_1

    .line 53
    :cond_c
    :pswitch_12
    invoke-virtual {v0, v3}, Lk0/xj;->x3(I)V

    goto :goto_1

    .line 54
    :cond_d
    :pswitch_13
    invoke-virtual {v0, v2}, Lk0/xj;->x3(I)V

    goto :goto_1

    :cond_e
    :pswitch_14
    const/16 v1, 0x82

    .line 55
    invoke-virtual {v0, v1}, Lk0/xj;->x3(I)V

    goto :goto_1

    .line 56
    :pswitch_15
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x81

    if-eq v1, v5, :cond_11

    if-eq v1, v10, :cond_10

    if-eq v1, v9, :cond_f

    packed-switch v1, :pswitch_data_4

    goto :goto_1

    .line 57
    :cond_f
    :pswitch_16
    invoke-virtual {v0, v2}, Lk0/xj;->x3(I)V

    goto :goto_1

    .line 58
    :cond_10
    :pswitch_17
    invoke-virtual {v0, v3}, Lk0/xj;->x3(I)V

    goto :goto_1

    .line 59
    :cond_11
    :pswitch_18
    invoke-virtual {v0, v2}, Lk0/xj;->x3(I)V

    :cond_12
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_12
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public final d3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/xj;->G:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa6

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    const/4 v0, 0x7

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xj;->G:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/xj;->F:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa9

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xj;->F:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final f3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/xj;->B:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xa4

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/xj;->B:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final g3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/xj;->C:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa3

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    const/4 v0, 0x3

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xj;->C:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final h3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/xj;->A:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xa7

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xj;->A:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final i3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/xj;->E:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa5

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    const/4 v0, 0x5

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xj;->E:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final j3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/xj;->D:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa8

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xj;->D:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xj;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final k3(III)Z
    .locals 5

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p2, p2, 0xff

    const/4 v4, 0x1

    if-le v2, v0, :cond_1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v3, v2

    add-int/2addr v1, p3

    if-le v3, v1, :cond_0

    return v4

    :cond_0
    if-ne v3, v1, :cond_3

    if-le p2, p1, :cond_3

    return v4

    :cond_1
    if-ne v2, v0, :cond_3

    add-int/2addr v1, p3

    if-le v3, v1, :cond_2

    return v4

    :cond_2
    if-ne v3, v1, :cond_3

    if-le p2, p1, :cond_3

    return v4

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final x3(I)V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0xd

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v4, -0x6f

    aput v4, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput v2, v0, p1

    const/4 p1, 0x5

    aput v2, v0, p1

    const/4 p1, 0x6

    aput v2, v0, p1

    const/4 p1, 0x7

    aput v2, v0, p1

    const/16 p1, 0x8

    aput v2, v0, p1

    const/16 p1, 0x9

    aput v2, v0, p1

    const/16 p1, 0xa

    aput v2, v0, p1

    const/16 p1, 0xb

    aput v2, v0, p1

    const/16 p1, 0xc

    aput v2, v0, p1

    aput v2, v0, v3

    const/16 p1, 0xe

    aput v2, v0, p1

    const/16 p1, 0xf

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public y3(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-static {p1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object p1, Ly0/g;->d:Lo1/y;

    sget-object v0, Ll0/g0;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object p1, Ly0/g;->e:Lo1/y;

    sget-object v0, Ll0/g0;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object p1, Lw0/e;->a:Lo1/y;

    sget-object v0, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object p1, Lw0/e;->e:Lo1/y;

    sget-object v0, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-static {p1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object p1, Ly0/g;->d:Lo1/y;

    sget-object v0, Ll0/g0;->g:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object p1, Ly0/g;->e:Lo1/y;

    sget-object v0, Ll0/g0;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object p1, Lw0/e;->a:Lo1/y;

    sget-object v0, Ll0/g0;->d:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object p1, Lw0/e;->e:Lo1/y;

    sget-object v0, Ll0/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :goto_0
    return-void
.end method
