.class public Lk0/li;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static C:I = 0x0

.field public static D:I = 0x3

.field public static E:I = 0x3


# instance fields
.field public final A:I

.field public final B:I

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Lo1/g0;

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/li;->c:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

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

    iput-object v2, p0, Lk0/li;->d:[[I

    .line 4
    iput v0, p0, Lk0/li;->f:I

    const/16 v2, 0x12

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_a

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0x11

    aput-object v1, v2, v4

    iput-object v2, p0, Lk0/li;->g:[[I

    .line 6
    iput-boolean v0, p0, Lk0/li;->h:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lk0/li;->i:I

    .line 8
    iput v1, p0, Lk0/li;->j:I

    .line 9
    iput v1, p0, Lk0/li;->k:I

    .line 10
    new-instance v2, Lk0/li$a;

    invoke-direct {v2, p0}, Lk0/li$a;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->l:Ljava/lang/Runnable;

    .line 11
    iput v0, p0, Lk0/li;->m:I

    .line 12
    new-instance v2, Lk0/li$b;

    invoke-direct {v2, p0}, Lk0/li$b;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v2, Lk0/li$c;

    invoke-direct {v2, p0}, Lk0/li$c;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v2, Lk0/li$d;

    invoke-direct {v2, p0}, Lk0/li$d;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Lk0/li$e;

    invoke-direct {v2, p0}, Lk0/li$e;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->q:Ljava/lang/Runnable;

    .line 16
    new-instance v2, Lk0/li$f;

    invoke-direct {v2, p0}, Lk0/li$f;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v2, Lk0/li$g;

    invoke-direct {v2, p0}, Lk0/li$g;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->s:Ljava/lang/Runnable;

    .line 18
    new-instance v2, Lk0/li$h;

    invoke-direct {v2, p0}, Lk0/li$h;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->t:Ljava/lang/Runnable;

    .line 19
    new-instance v2, Lk0/li$i;

    invoke-direct {v2, p0}, Lk0/li$i;-><init>(Lk0/li;)V

    iput-object v2, p0, Lk0/li;->u:Ljava/lang/Runnable;

    .line 20
    iput v1, p0, Lk0/li;->v:I

    .line 21
    iput-boolean v0, p0, Lk0/li;->w:Z

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lk0/li;->x:Ljava/lang/String;

    .line 23
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/li;->y:Lo1/g0;

    .line 24
    iput v5, p0, Lk0/li;->z:I

    .line 25
    iput v3, p0, Lk0/li;->A:I

    .line 26
    iput v6, p0, Lk0/li;->B:I

    return-void

    nop

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x4b
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x4a
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x4a
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x16
    .end array-data

    :array_e
    .array-data 4
        0x5
        0x36
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x7
        0x4c
    .end array-data

    :array_11
    .array-data 4
        0x8
        0x35
    .end array-data

    :array_12
    .array-data 4
        0x9
        0x4a
    .end array-data

    :array_13
    .array-data 4
        0xa
        0x36
    .end array-data

    :array_14
    .array-data 4
        0xb
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0xd
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0xe
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0xf
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x10
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_1b
    .array-data 4
        0x12
        0x1a
    .end array-data
.end method

.method public static synthetic e3(Lk0/li;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/li;->i:I

    return p0
.end method

.method public static synthetic f3(Lk0/li;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/li;->i:I

    return p1
.end method

.method public static synthetic g3(Lk0/li;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/li;->j:I

    return p0
.end method

.method public static synthetic h3(Lk0/li;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/li;->v:I

    return p0
.end method

.method public static synthetic i3(Lk0/li;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/li;->v:I

    return p1
.end method

.method public static synthetic j3(Lk0/li;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/li;->j:I

    return p1
.end method

.method public static synthetic k3(Lk0/li;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/li;->x:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l3(Lk0/li;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/li;->x:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m3(Lk0/li;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/li;->C3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic n3(Lk0/li;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/li;->w:Z

    return p0
.end method

.method public static synthetic o3(Lk0/li;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/li;->w:Z

    return p1
.end method

.method public static synthetic p3(Lk0/li;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/li;->k:I

    return p0
.end method

.method public static synthetic q3(Lk0/li;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/li;->k:I

    return p1
.end method

.method public static synthetic r3(Lk0/li;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/li;->y:Lo1/g0;

    return-object p0
.end method

.method public static synthetic s3(Lk0/li;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/li;->B3(I)V

    return-void
.end method

.method public static synthetic t3(Lk0/li;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/li;->z3(I)V

    return-void
.end method

.method public static synthetic u3(Lk0/li;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/li;->A3(I)V

    return-void
.end method

.method public static synthetic v3(Lk0/li;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/li;->b3()V

    return-void
.end method

.method public static synthetic w3(Lk0/li;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/li;->d3()V

    return-void
.end method

.method public static synthetic x3(Lk0/li;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/li;->y3(BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/li;->E:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x70

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/16 v1, 0x22

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/li;->E:I

    aput v0, p1, v2

    const/16 v0, 0xb2

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/li;->y:Lo1/g0;

    invoke-virtual {p1, v4, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/li;->E:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/li;->y:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final B3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/li;->C:I

    const/16 v2, 0x8e

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/li;->y:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/li;->C:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/li;->y:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final C3(ILjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x3

    int-to-byte p1, p1

    .line 6
    aput p1, v1, v3

    const/4 p1, 0x4

    .line 7
    aput v5, v1, p1

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v2, v4

    .line 9
    aget-char v3, v0, v4

    int-to-byte v3, v3

    aput v3, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 4

    if-eqz p1, :cond_b

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v3

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p1}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v2}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 11
    invoke-virtual {p0, p1}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v3

    const/16 v0, 0xc

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_b

    const/16 p1, 0x22

    .line 14
    invoke-virtual {p0, p1}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_b

    const/16 p1, 0x23

    .line 16
    invoke-virtual {p0, p1}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v3

    const/16 v0, 0x14

    const/16 v1, 0x10

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 19
    invoke-virtual {p0, v0}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 21
    invoke-virtual {p0, v0}, Lk0/li;->a3(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v3

    const/16 v0, 0x13

    const/16 v1, 0x41

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 24
    invoke-virtual {p0, v0}, Lk0/li;->a3(I)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 26
    invoke-virtual {p0, v0}, Lk0/li;->a3(I)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v3

    const/16 v0, 0x15

    const/16 v1, 0xd

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 29
    invoke-virtual {p0, v0}, Lk0/li;->a3(I)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 31
    invoke-virtual {p0, v0}, Lk0/li;->a3(I)V

    goto :goto_0

    .line 32
    :pswitch_8
    aget p1, p1, v3

    const/16 v0, 0x17

    const/16 v1, 0xb

    if-eqz p1, :cond_9

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 34
    invoke-virtual {p0, v0}, Lk0/li;->a3(I)V

    goto :goto_0

    .line 35
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 36
    invoke-virtual {p0, v0}, Lk0/li;->a3(I)V

    goto :goto_0

    .line 37
    :pswitch_9
    aget p1, p1, v3

    if-eqz p1, :cond_a

    .line 38
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_b

    .line 39
    invoke-virtual {p0, v3}, Lk0/li;->a3(I)V

    goto :goto_0

    .line 40
    :cond_a
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_b

    .line 41
    invoke-virtual {p0, v3}, Lk0/li;->a3(I)V

    :cond_b
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

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->b:I

    .line 7
    iput v2, v0, Lk0/mt;->c:I

    .line 8
    iput v2, v0, Lk0/mt;->d:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    iput v2, v0, Lk0/mt;->h:I

    .line 11
    iput v2, v0, Lk0/mt;->q:I

    .line 12
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 13
    :sswitch_0
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 14
    :sswitch_1
    iput v1, v0, Lk0/mt;->q:I

    .line 15
    :goto_0
    iget-object v0, p0, Lk0/li;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/li;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lk0/li;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/li;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/li;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/li;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/li;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/li;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/li;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/li;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/li;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/li;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5201b7 -> :sswitch_1
        0x5301b7 -> :sswitch_1
        0x5801b7 -> :sswitch_1
        0x5901b7 -> :sswitch_1
        0x8301b7 -> :sswitch_0
        0x8401b7 -> :sswitch_0
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
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x29

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v3, :cond_20

    const/16 v3, 0x7d

    const/16 v6, 0x64

    const v7, 0xff00

    const/16 v8, 0x8

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/16 v11, 0xff

    const/4 v12, 0x0

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_15

    const/16 v3, 0x30

    if-eq v2, v3, :cond_14

    const/16 v3, 0xb

    const/16 v13, 0x71

    const/16 v14, 0x70

    const/4 v15, 0x5

    if-eq v2, v14, :cond_13

    const/16 v6, 0x10

    if-eq v2, v13, :cond_12

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 4
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 5
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 6
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 7
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 8
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 9
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 10
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v5

    aput v1, v2, v12

    .line 11
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v6, v1, v4

    and-int/2addr v6, v11

    add-int/lit8 v7, p2, 0x4

    .line 14
    aget-byte v8, v1, v7

    and-int/2addr v8, v11

    add-int/lit8 v10, p2, 0x5

    .line 15
    aget-byte v13, v1, v10

    and-int/2addr v13, v11

    if-nez v3, :cond_1

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    if-nez v13, :cond_1

    .line 16
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v12, Ll0/c0;->g:I

    if-ne v12, v3, :cond_2

    sget v12, Ll0/c0;->h:I

    if-ne v12, v6, :cond_2

    sget v12, Ll0/c0;->i:I

    if-ne v12, v8, :cond_2

    sget v12, Ll0/c0;->j:I

    if-eq v12, v13, :cond_3

    .line 18
    :cond_2
    sget v12, Lu0/b;->o:I

    if-nez v12, :cond_3

    .line 19
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 20
    sput v9, Ll0/c0;->k:I

    .line 21
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 23
    sput v6, Ll0/c0;->h:I

    .line 24
    sput v8, Ll0/c0;->i:I

    .line 25
    sput v13, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v4

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v7

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v10

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    add-int/lit8 v4, p2, 0x3

    .line 35
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    add-int/lit8 v7, p2, 0x4

    .line 36
    aget-byte v8, v1, v7

    and-int/2addr v8, v11

    add-int/lit8 v9, p2, 0x5

    .line 37
    aget-byte v10, v1, v9

    and-int/2addr v10, v11

    add-int/lit8 v13, p2, 0x6

    .line 38
    aget-byte v13, v1, v13

    and-int/2addr v13, v11

    add-int/lit8 v14, p2, 0x7

    .line 39
    aget-byte v14, v1, v14

    and-int/2addr v14, v11

    new-array v15, v5, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v12

    const/16 v11, 0xa

    .line 40
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    new-array v15, v5, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v12

    .line 41
    invoke-static {v3, v15}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v15, v5, [I

    shr-int/lit8 v17, v2, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v12

    .line 42
    invoke-static {v3, v15}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v5

    aput v15, v3, v12

    .line 43
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v6, v5, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v5

    aput v15, v6, v12

    .line 44
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v6, v5, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v5

    aput v15, v6, v12

    .line 45
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v5

    aput v2, v3, v12

    const/16 v2, 0xf

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v6, v5, [I

    shr-int/lit8 v15, v4, 0x7

    and-int/2addr v15, v5

    aput v15, v6, v12

    .line 47
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v6, v5, [I

    shr-int/lit8 v15, v4, 0x6

    and-int/2addr v15, v5

    aput v15, v6, v12

    .line 48
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v6, v5, [I

    shr-int/lit8 v15, v4, 0x5

    and-int/2addr v15, v5

    aput v15, v6, v12

    .line 49
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v6, v5, [I

    and-int/2addr v2, v4

    aput v2, v6, v12

    .line 50
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 51
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    aget-byte v2, v1, v9

    const/16 v3, 0xff

    and-int/lit16 v8, v2, 0xff

    .line 53
    aget-byte v1, v1, v7

    and-int/lit16 v10, v1, 0xff

    :cond_4
    const/16 v1, 0x7f

    const/16 v2, 0x1b

    if-nez v8, :cond_5

    new-array v3, v5, [I

    const/4 v4, -0x2

    aput v4, v3, v12

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    if-ne v8, v1, :cond_6

    new-array v3, v5, [I

    const/4 v4, -0x3

    aput v4, v3, v12

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    const/16 v3, 0x1f

    if-lt v8, v3, :cond_7

    const/16 v3, 0x40

    if-gt v8, v3, :cond_7

    new-array v3, v5, [I

    aput v8, v3, v12

    .line 56
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v3, v5, [I

    const/4 v4, -0x1

    aput v4, v3, v12

    .line 57
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x1c

    if-nez v10, :cond_8

    new-array v1, v5, [I

    const/4 v3, -0x2

    aput v3, v1, v12

    .line 58
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    if-ne v10, v1, :cond_9

    new-array v1, v5, [I

    const/4 v3, -0x3

    aput v3, v1, v12

    .line 59
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    const/16 v1, 0x1f

    if-lt v10, v1, :cond_a

    const/16 v1, 0x40

    if-gt v10, v1, :cond_a

    new-array v1, v5, [I

    aput v10, v1, v12

    .line 60
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v1, v5, [I

    const/4 v3, -0x1

    aput v3, v1, v12

    .line 61
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v1, 0x41

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x4

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 62
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 63
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 64
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v14, 0x80

    if-eqz v1, :cond_b

    rsub-int v1, v14, 0x100

    mul-int/2addr v1, v11

    rsub-int v1, v1, 0x3e8

    goto :goto_4

    :cond_b
    const/16 v1, 0x3e8

    .line 65
    :goto_4
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 67
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 68
    iput v2, v0, Lk0/li;->c:I

    move v2, v12

    .line 69
    :goto_5
    iget-object v3, v0, Lk0/li;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 70
    iget v4, v0, Lk0/li;->c:I

    aget-object v6, v3, v2

    aget v6, v6, v12

    if-ne v4, v6, :cond_c

    if-eqz v4, :cond_d

    .line 71
    iput v2, v0, Lk0/li;->b:I

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 72
    :cond_d
    :goto_6
    iget v4, v0, Lk0/li;->c:I

    const/16 v6, 0x16

    if-eq v4, v6, :cond_11

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_e

    .line 73
    array-length v1, v3

    if-ge v2, v1, :cond_23

    .line 74
    aget-object v1, v3, v2

    aget v1, v1, v5

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 75
    :cond_e
    iget v1, v0, Lk0/li;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    const/16 v2, 0xff

    if-eq v1, v2, :cond_10

    .line 76
    aget-object v1, v3, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_f
    const/16 v2, 0xff

    .line 77
    :cond_10
    :goto_7
    iput v2, v0, Lk0/li;->b:I

    goto/16 :goto_c

    :cond_11
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v5, :cond_23

    new-array v1, v9, [I

    .line 78
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_c

    :cond_12
    const/16 v2, 0x73

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 79
    aget-byte v4, v1, v4

    shl-int/2addr v4, v8

    and-int/2addr v4, v7

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, v1, v9

    const/16 v10, 0xff

    and-int/2addr v9, v10

    or-int/2addr v4, v9

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 80
    aget-byte v4, v1, v4

    shl-int/2addr v4, v8

    and-int/2addr v4, v7

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    const/16 v10, 0xff

    and-int/2addr v9, v10

    or-int/2addr v4, v9

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 81
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_13
    const/16 v2, 0x67

    new-array v11, v5, [I

    add-int/lit8 v17, p2, 0x2

    .line 82
    aget-byte v18, v1, v17

    shr-int/lit8 v18, v18, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v12

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v11, v5, [I

    .line 83
    aget-byte v18, v1, v17

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v12

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v11, v5, [I

    .line 84
    aget-byte v18, v1, v17

    shr-int/lit8 v18, v18, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v12

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v11, v5, [I

    .line 85
    aget-byte v18, v1, v17

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v12

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v11, v5, [I

    .line 86
    aget-byte v18, v1, v17

    shr-int/lit8 v4, v18, 0x3

    and-int/2addr v4, v5

    aput v4, v11, v12

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 87
    aget-byte v4, v1, v17

    shr-int/2addr v4, v10

    and-int/2addr v4, v5

    aput v4, v2, v12

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 88
    aget-byte v4, v1, v17

    shr-int/2addr v4, v5

    and-int/2addr v4, v5

    aput v4, v2, v12

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v5, [I

    .line 89
    aget-byte v6, v1, v17

    shr-int/2addr v6, v12

    and-int/2addr v6, v5

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x4

    .line 90
    aget-byte v6, v1, v6

    shl-int/2addr v6, v8

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v1, v10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v6, v10

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x6

    .line 91
    aget-byte v6, v1, v6

    shl-int/2addr v6, v8

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v6, v10

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x8

    .line 92
    aget-byte v6, v1, v6

    shl-int/2addr v6, v8

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x7

    aget-byte v10, v1, v10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v6, v10

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0xa

    .line 93
    aget-byte v6, v1, v6

    shl-int/2addr v6, v8

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x9

    aget-byte v7, v1, v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v5, [I

    add-int/lit8 v3, p2, 0xb

    .line 94
    aget-byte v6, v1, v3

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v5

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v5, [I

    .line 95
    aget-byte v6, v1, v3

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 96
    aget-byte v4, v1, v3

    shr-int/2addr v4, v15

    and-int/2addr v4, v5

    aput v4, v2, v12

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v5, [I

    .line 97
    aget-byte v1, v1, v3

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    aput v1, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 98
    :cond_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 99
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 100
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 101
    iput v2, v0, Lk0/li;->f:I

    move v2, v12

    .line 102
    :goto_8
    iget-object v3, v0, Lk0/li;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_17

    .line 103
    iget v4, v0, Lk0/li;->f:I

    aget-object v6, v3, v2

    aget v6, v6, v12

    if-ne v4, v6, :cond_16

    if-eqz v4, :cond_17

    .line 104
    iput v2, v0, Lk0/li;->e:I

    goto :goto_9

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    :goto_9
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_18

    .line 105
    array-length v1, v3

    if-ge v2, v1, :cond_23

    .line 106
    aget-object v1, v3, v2

    aget v1, v1, v5

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 107
    :cond_18
    iget v1, v0, Lk0/li;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_19

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1a

    .line 108
    aget-object v1, v3, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_19
    const/16 v2, 0xff

    .line 109
    :cond_1a
    :goto_a
    iput v2, v0, Lk0/li;->e:I

    goto/16 :goto_c

    :cond_1b
    move v2, v11

    add-int/lit8 v3, p2, 0x2

    .line 110
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    if-eq v3, v5, :cond_1e

    if-eq v3, v4, :cond_1d

    if-eq v3, v8, :cond_1c

    goto/16 :goto_c

    :cond_1c
    add-int/lit8 v2, p2, 0x3

    .line 111
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 112
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 113
    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    .line 114
    iput-boolean v5, v0, Lk0/li;->h:Z

    goto/16 :goto_c

    :cond_1d
    add-int/lit8 v2, p2, 0x4

    .line 115
    aget-byte v2, v1, v2

    shl-int/2addr v2, v8

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/2addr v1, v6

    const/16 v2, 0x407

    new-array v3, v5, [I

    aput v1, v3, v12

    .line 116
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 117
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v10, [I

    aput v5, v4, v12

    aput v1, v4, v5

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_c

    :cond_1e
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 118
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    add-int/lit8 v2, p2, 0x3

    .line 119
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    invoke-static {v3, v1, v12}, Ll0/c0;->b(III)V

    goto :goto_c

    :cond_1f
    add-int/lit8 v2, p2, 0x3

    .line 120
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    invoke-static {v3, v1, v12}, Ll0/c0;->a(III)V

    goto :goto_c

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 121
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 122
    aget-byte v1, v1, v3

    .line 123
    iget-boolean v3, v0, Lk0/li;->h:Z

    if-nez v3, :cond_23

    .line 124
    sget v3, Lk0/nt;->a:I

    const v4, 0x4b01b7

    if-eq v3, v4, :cond_22

    const v4, 0xab01b7

    if-ne v3, v4, :cond_21

    goto :goto_b

    :cond_21
    const/16 v3, 0x1640

    .line 125
    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_c

    :cond_22
    :goto_b
    const/16 v3, 0x18da

    .line 126
    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    :cond_23
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/li;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/li;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/li;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/li;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/li;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/li;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/li;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/li;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/li;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/li;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/li;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/li;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/li;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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
    .locals 6

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    const/16 v5, 0x3eb

    if-eq p1, v5, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, v4

    const/16 v5, 0x22

    if-ne p1, v5, :cond_1

    .line 2
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/li;->A3(I)V

    goto :goto_0

    .line 3
    :cond_1
    aget p1, p2, v4

    const/16 v5, 0x23

    if-ne p1, v5, :cond_2

    .line 4
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/li;->z3(I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    aput p3, p1, v4

    const/16 p3, -0x70

    aput p3, p1, v3

    aput v2, p1, v2

    .line 5
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    .line 6
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, p4, [I

    aput p3, p1, v4

    const/16 p3, -0x7d

    aput p3, p1, v3

    aput v2, p1, v2

    .line 7
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    .line 8
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v0, [I

    .line 9
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, p4, [I

    aput p3, p1, v4

    const/16 p3, -0x20

    aput p3, p1, v3

    aput v2, p1, v2

    .line 10
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x20

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()V
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
    invoke-virtual {p0, v1}, Lk0/li;->c3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v9, 0x9

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v9, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 4
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 5
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto/16 :goto_1

    .line 7
    :cond_1
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v10

    .line 8
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 9
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 10
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v6

    .line 11
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto :goto_1

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

    aput v5, v1, v8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 15
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto :goto_1

    .line 17
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 18
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 19
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v12, 0x2

    aput v12, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    if-nez v12, :cond_7

    const/16 v12, 0x11

    aput v12, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    const/16 v12, 0x12

    aput v12, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v10, v5, 0xff

    aput v10, v1, v7

    shr-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    .line 20
    rem-int/2addr v11, v8

    add-int/2addr v11, v2

    aput v11, v1, v6

    aput v3, v1, v4

    aput v3, v1, v9

    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 22
    :cond_9
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3([I)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x30

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    aput v4, p1, v7

    .line 4
    aput v4, p1, v1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    .line 5
    aput v0, p1, v7

    .line 6
    aput v6, p1, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v7

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_2
    aput v1, p1, v7

    .line 10
    aput v2, p1, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v7

    .line 12
    aput v2, p1, v1

    goto :goto_0

    .line 13
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 14
    aput v7, p1, v7

    .line 15
    aput v6, p1, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    if-ne v0, v7, :cond_2

    .line 16
    aput v2, p1, v7

    .line 17
    aput v6, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v2, p1, v7

    .line 19
    aput v6, p1, v1

    goto :goto_0

    .line 20
    :pswitch_5
    aput v3, p1, v7

    .line 21
    aput v6, p1, v1

    goto :goto_0

    .line 22
    :pswitch_6
    aput v3, p1, v7

    .line 23
    aput v4, p1, v1

    goto :goto_0

    .line 24
    :pswitch_7
    aput v5, p1, v7

    .line 25
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

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
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d3()V
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

    const/16 v4, 0x24

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

.method public final y3(BLjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_1

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    shl-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    add-int/2addr v7, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p2, v1, 0xff

    add-int/lit8 p2, p2, 0x5

    .line 6
    new-array p2, p2, [I

    const/16 v0, -0x1d

    .line 7
    aput v0, p2, v3

    .line 8
    aput p1, p2, v5

    const/4 p1, 0x2

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    .line 9
    aput v0, p2, p1

    const/4 p1, 0x3

    const/16 v0, 0x11

    .line 10
    aput v0, p2, p1

    const/4 p1, 0x4

    :goto_1
    if-ge v3, v1, :cond_2

    add-int v0, p1, v3

    .line 11
    aget-byte v4, v2, v3

    aput v4, p2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public final z3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/li;->D:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x70

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v4, 0x3

    const/16 v5, 0x23

    aput v5, v0, v4

    const/4 v4, 0x4

    aput p1, v0, v4

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/li;->D:I

    aput v0, p1, v2

    const/16 v0, 0xb1

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/li;->y:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/li;->D:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/li;->y:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
