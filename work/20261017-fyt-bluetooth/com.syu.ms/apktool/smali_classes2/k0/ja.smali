.class public Lk0/ja;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/ja$j;
    }
.end annotation


# static fields
.field public static I:[I


# instance fields
.field public A:B

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:J

.field public G:I

.field public H:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Z

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:F

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Lk0/ja$j;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/ja;->I:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x2
        0x3
        0x4
        0x5
        0x8
        0x9
        0x6
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ja;->c:I

    const/16 v1, 0xff

    .line 3
    iput v1, p0, Lk0/ja;->d:I

    const/16 v2, 0x11

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4
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

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x5

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v6, 0x6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v6, 0x7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v6, 0x8

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v6, 0x9

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v6, 0xa

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v6, 0xb

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v6, 0xc

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v6, 0xd

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v6, 0xe

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v6, 0xf

    aput-object v4, v2, v6

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v2, v4

    iput-object v2, p0, Lk0/ja;->e:[[I

    .line 5
    iput-boolean v0, p0, Lk0/ja;->f:Z

    .line 6
    iput v0, p0, Lk0/ja;->g:I

    .line 7
    new-instance v2, Lk0/ja$a;

    invoke-direct {v2, p0}, Lk0/ja$a;-><init>(Lk0/ja;)V

    iput-object v2, p0, Lk0/ja;->h:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lk0/ja;->i:F

    .line 9
    iput v1, p0, Lk0/ja;->j:I

    .line 10
    iput v1, p0, Lk0/ja;->k:I

    .line 11
    new-instance v2, Lk0/ja$b;

    invoke-direct {v2, p0}, Lk0/ja$b;-><init>(Lk0/ja;)V

    iput-object v2, p0, Lk0/ja;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v2, Lk0/ja$c;

    invoke-direct {v2, p0}, Lk0/ja$c;-><init>(Lk0/ja;)V

    iput-object v2, p0, Lk0/ja;->m:Ljava/lang/Runnable;

    const-string v2, ""

    .line 13
    iput-object v2, p0, Lk0/ja;->o:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Lk0/ja;->p:Ljava/lang/String;

    .line 15
    iput v0, p0, Lk0/ja;->q:I

    .line 16
    iput v0, p0, Lk0/ja;->r:I

    .line 17
    iput v0, p0, Lk0/ja;->s:I

    .line 18
    iput v0, p0, Lk0/ja;->t:I

    .line 19
    iput v0, p0, Lk0/ja;->u:I

    .line 20
    iput v0, p0, Lk0/ja;->v:I

    .line 21
    iput v0, p0, Lk0/ja;->w:I

    .line 22
    iput v0, p0, Lk0/ja;->x:I

    .line 23
    iput v1, p0, Lk0/ja;->y:I

    .line 24
    new-instance v0, Lk0/ja$d;

    invoke-direct {v0, p0}, Lk0/ja$d;-><init>(Lk0/ja;)V

    iput-object v0, p0, Lk0/ja;->z:Ljava/lang/Runnable;

    .line 25
    iput-byte v5, p0, Lk0/ja;->A:B

    .line 26
    new-instance v0, Lk0/ja$e;

    invoke-direct {v0, p0}, Lk0/ja$e;-><init>(Lk0/ja;)V

    iput-object v0, p0, Lk0/ja;->B:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lk0/ja$f;

    invoke-direct {v0, p0}, Lk0/ja$f;-><init>(Lk0/ja;)V

    iput-object v0, p0, Lk0/ja;->C:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Lk0/ja$g;

    invoke-direct {v0, p0}, Lk0/ja$g;-><init>(Lk0/ja;)V

    iput-object v0, p0, Lk0/ja;->D:Ljava/lang/Runnable;

    .line 29
    new-instance v0, Lk0/ja$h;

    invoke-direct {v0, p0}, Lk0/ja$h;-><init>(Lk0/ja;)V

    iput-object v0, p0, Lk0/ja;->E:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lk0/ja;->F:J

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lk0/ja;->G:I

    .line 32
    new-instance v0, Lk0/ja$i;

    invoke-direct {v0, p0}, Lk0/ja$i;-><init>(Lk0/ja;)V

    iput-object v0, p0, Lk0/ja;->H:Ljava/lang/Runnable;

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xd
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_a
    .array-data 4
        0x10
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x11
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x12
        0x19
    .end array-data

    :array_d
    .array-data 4
        0x13
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x15
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x16
        0x8
    .end array-data
.end method

.method public static synthetic d3(Lk0/ja;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/ja;->i:F

    return p0
.end method

.method public static synthetic e3(Lk0/ja;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ja;->F:J

    return-wide v0
.end method

.method public static synthetic f3(Lk0/ja;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ja;->F:J

    return-wide p1
.end method

.method public static synthetic g3(Lk0/ja;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/ja;->i:F

    return p1
.end method

.method public static synthetic h3(Lk0/ja;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ja;->G:I

    return p0
.end method

.method public static synthetic i3(Lk0/ja;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ja;->G:I

    return p1
.end method

.method public static synthetic j3(Lk0/ja;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ja;->k:I

    return p0
.end method

.method public static synthetic k3(Lk0/ja;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ja;->k:I

    return p1
.end method

.method public static synthetic l3(Lk0/ja;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ja;->j:I

    return p0
.end method

.method public static synthetic m3(Lk0/ja;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ja;->j:I

    return p1
.end method

.method public static synthetic n3(Lk0/ja;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ja;->t3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic o3(Lk0/ja;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ja;->c3(I)V

    return-void
.end method

.method public static synthetic p3(Lk0/ja;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ja;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic q3(Lk0/ja;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ja;->C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic r3(Lk0/ja;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ja;->b3(I)V

    return-void
.end method

.method public static synthetic s3(Lk0/ja;[IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/ja;->u3([IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 11

    if-eqz p1, :cond_1f

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0x21

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x22

    const/16 v6, 0xb

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x29

    const/4 v7, 0x3

    if-eq v2, v3, :cond_19

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_17

    const/16 v3, 0x43

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eq v2, v3, :cond_12

    const/16 v3, 0x44

    const/16 v10, 0xc

    if-eq v2, v3, :cond_6

    const/16 v3, 0x10

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    sget-object v0, Lk0/nt;->g:[I

    const/16 v2, 0x15

    aget v0, v0, v2

    .line 4
    aget p1, p1, v5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v5}, Lk0/ja;->a3(II)V

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, v5, v5}, Lk0/ja;->a3(II)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    aget p1, p1, v5

    if-eqz p1, :cond_3

    .line 8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-nez p1, :cond_1f

    .line 9
    invoke-virtual {p0, v5, v1}, Lk0/ja;->a3(II)V

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-ne p1, v5, :cond_1f

    .line 11
    invoke-virtual {p0, v5, v1}, Lk0/ja;->a3(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    aget p1, p1, v5

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_1f

    .line 14
    invoke-virtual {p0, v9, v5}, Lk0/ja;->a3(II)V

    goto/16 :goto_0

    .line 15
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v5, :cond_1f

    .line 16
    invoke-virtual {p0, v9, v5}, Lk0/ja;->a3(II)V

    goto/16 :goto_0

    .line 17
    :pswitch_3
    aget p1, p1, v5

    const/16 v1, 0x41

    if-eqz p1, :cond_5

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_1f

    .line 19
    invoke-virtual {p0, v3, v0}, Lk0/ja;->a3(II)V

    goto/16 :goto_0

    .line 20
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v5, :cond_1f

    .line 21
    invoke-virtual {p0, v3, v0}, Lk0/ja;->a3(II)V

    goto/16 :goto_0

    .line 22
    :cond_6
    aget v0, p1, v5

    const/4 v2, 0x6

    if-ne v0, v4, :cond_7

    new-array p1, v2, [I

    .line 23
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 24
    :cond_7
    aget v0, p1, v5

    const/16 v3, 0x9

    if-ne v0, v3, :cond_8

    new-array p1, v2, [I

    .line 25
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 26
    :cond_8
    aget v0, p1, v5

    const/4 v3, 0x7

    if-ne v0, v5, :cond_9

    new-array p1, v3, [I

    .line 27
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 28
    :cond_9
    aget v0, p1, v5

    if-ne v0, v1, :cond_a

    new-array p1, v3, [I

    .line 29
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 30
    :cond_a
    aget v0, p1, v5

    if-ne v0, v7, :cond_b

    new-array p1, v3, [I

    .line 31
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 32
    :cond_b
    aget v0, p1, v5

    if-ne v0, v9, :cond_c

    new-array p1, v3, [I

    .line 33
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 34
    :cond_c
    aget v0, p1, v5

    if-ne v0, v8, :cond_d

    new-array p1, v3, [I

    .line 35
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 36
    :cond_d
    aget v0, p1, v5

    if-ne v0, v2, :cond_e

    new-array p1, v3, [I

    .line 37
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 38
    :cond_e
    aget v0, p1, v5

    if-ne v0, v3, :cond_f

    new-array p1, v3, [I

    .line 39
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 40
    :cond_f
    aget v0, p1, v5

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    new-array p1, v3, [I

    .line 41
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 42
    :cond_10
    aget v0, p1, v5

    if-ne v0, v6, :cond_11

    new-array p1, v3, [I

    .line 43
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 44
    :cond_11
    aget p1, p1, v5

    if-ne p1, v10, :cond_1f

    new-array p1, v3, [I

    .line 45
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 46
    :cond_12
    aget p1, p1, v5

    if-eq p1, v1, :cond_16

    if-eq p1, v7, :cond_15

    if-eq p1, v9, :cond_14

    if-eq p1, v8, :cond_13

    goto/16 :goto_0

    :cond_13
    new-array p1, v9, [I

    .line 47
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_14
    new-array p1, v9, [I

    .line 48
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_15
    new-array p1, v9, [I

    .line 49
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_16
    new-array p1, v9, [I

    .line 50
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 51
    :cond_17
    aget p1, p1, v5

    if-eqz p1, :cond_18

    .line 52
    invoke-virtual {p0, v1, v7}, Lk0/ja;->a3(II)V

    goto :goto_0

    .line 53
    :cond_18
    invoke-virtual {p0, v5, v7}, Lk0/ja;->a3(II)V

    goto :goto_0

    .line 54
    :cond_19
    aget p1, p1, v5

    if-eqz p1, :cond_1a

    .line 55
    invoke-virtual {p0, v1, v7}, Lk0/ja;->a3(II)V

    goto :goto_0

    .line 56
    :cond_1a
    invoke-virtual {p0, v5, v7}, Lk0/ja;->a3(II)V

    goto :goto_0

    .line 57
    :cond_1b
    aget p1, p1, v5

    if-eqz p1, :cond_1c

    .line 58
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-nez p1, :cond_1f

    .line 59
    invoke-virtual {p0, v1, v0}, Lk0/ja;->a3(II)V

    goto :goto_0

    .line 60
    :cond_1c
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-ne p1, v5, :cond_1f

    .line 61
    invoke-virtual {p0, v1, v0}, Lk0/ja;->a3(II)V

    goto :goto_0

    .line 62
    :cond_1d
    aget p1, p1, v5

    const/16 v1, 0x80

    if-eqz p1, :cond_1e

    .line 63
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_1f

    .line 64
    invoke-virtual {p0, v1, v0}, Lk0/ja;->a3(II)V

    goto :goto_0

    .line 65
    :cond_1e
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v5, :cond_1f

    .line 66
    invoke-virtual {p0, v1, v0}, Lk0/ja;->a3(II)V

    :cond_1f
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0xb
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0xb
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0xb
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0xb
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0xb
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xc8
        0x1
        0x3
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xc8
        0x1
        0x2
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xc8
        0x1
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0xc8
        0x1
        0x0
    .end array-data
.end method

.method public S2()V
    .locals 6

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/ja;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/ja;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    sget v0, Lk0/nt;->c:I

    const-string v2, "com.syu.canbus"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v5, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v1, v0, Lk0/mt;->e:I

    .line 7
    iput v1, v0, Lk0/mt;->f:I

    .line 8
    iput v3, v0, Lk0/mt;->g:I

    .line 9
    iput v3, v0, Lk0/mt;->i:I

    goto/16 :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v1, v0, Lk0/mt;->e:I

    .line 12
    iput v1, v0, Lk0/mt;->f:I

    .line 13
    iput v3, v0, Lk0/mt;->g:I

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    .line 17
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, v0, Lk0/mt;->m:[I

    .line 18
    new-instance v0, Lk0/ja$j;

    invoke-direct {v0, p0, v5}, Lk0/ja$j;-><init>(Lk0/ja;Lk0/ja$a;)V

    iput-object v0, p0, Lk0/ja;->n:Lk0/ja$j;

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    iget-object v3, p0, Lk0/ja;->n:Lk0/ja$j;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/ja;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/ja;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/ja;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/ja;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 27
    iput v1, v0, Lk0/mt;->e:I

    .line 28
    iput v1, v0, Lk0/mt;->f:I

    .line 29
    iput v3, v0, Lk0/mt;->g:I

    .line 30
    iput v3, v0, Lk0/mt;->i:I

    .line 31
    :goto_1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ja;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    iget-object v0, p0, Lk0/ja;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 33
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/ja;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 34
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/ja;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/ja;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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
        0x44
        0x43
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xc

    const/16 v4, 0xa

    const/16 v5, 0x8

    const/16 v6, 0x12

    const/4 v7, 0x5

    const/4 v8, 0x7

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v10, :cond_1e

    const/16 v13, 0x7f

    if-eq v2, v9, :cond_d

    const/4 v3, 0x6

    const/4 v6, 0x4

    if-eq v2, v6, :cond_c

    if-eq v2, v3, :cond_a

    if-eq v2, v8, :cond_9

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_3

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    if-eq v2, v13, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 3
    :cond_1
    sget v2, Lk0/nt;->c:I

    if-ne v2, v9, :cond_2e

    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v12, :cond_2

    .line 5
    invoke-static {v12}, Lk0/qt;->a(I)V

    goto/16 :goto_d

    .line 6
    :cond_2
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_d

    :cond_3
    add-int/lit8 v2, p2, 0x3

    .line 7
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    if-ne v1, v12, :cond_4

    goto :goto_0

    :cond_4
    move v11, v12

    :goto_0
    const/16 v1, 0x1520

    invoke-static {v2, v3, v11, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_d

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x3

    .line 9
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v8, p2, 0x4

    .line 10
    aget-byte v9, v1, v8

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v7, p2, 0x5

    .line 11
    aget-byte v10, v1, v7

    and-int/lit16 v10, v10, 0xff

    if-nez v3, :cond_6

    if-nez v5, :cond_6

    if-nez v9, :cond_6

    if-nez v10, :cond_6

    .line 12
    invoke-static {v11}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 13
    :cond_6
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_7

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_7

    sget v11, Ll0/c0;->i:I

    if-ne v11, v9, :cond_7

    sget v11, Ll0/c0;->j:I

    if-eq v11, v10, :cond_8

    .line 14
    :cond_7
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_8

    .line 15
    invoke-static {v12}, Lu0/d;->C2(I)V

    .line 16
    sput v6, Ll0/c0;->k:I

    .line 17
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 18
    :cond_8
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 19
    sput v5, Ll0/c0;->h:I

    .line 20
    sput v9, Ll0/c0;->i:I

    .line 21
    sput v10, Ll0/c0;->j:I

    .line 22
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->h1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 23
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->h1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 24
    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->h1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 25
    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->h1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->h1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 27
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->h1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 28
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->h1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 29
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->h1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_d

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 31
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 32
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 33
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 34
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 35
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 36
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 37
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 38
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v12

    aput v1, v2, v11

    .line 39
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_c
    add-int/lit8 v2, p2, 0x3

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x4

    .line 41
    aget-byte v4, v1, v4

    const/16 v7, 0x64

    new-array v13, v12, [I

    and-int/lit8 v14, v2, 0x1

    aput v14, v13, v11

    .line 42
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x63

    new-array v13, v12, [I

    shr-int/lit8 v14, v2, 0x1

    and-int/2addr v14, v12

    aput v14, v13, v11

    .line 43
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x65

    new-array v13, v12, [I

    shr-int/lit8 v14, v2, 0x2

    and-int/2addr v14, v12

    aput v14, v13, v11

    .line 44
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x66

    new-array v13, v12, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v12

    aput v14, v13, v11

    .line 45
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x67

    new-array v13, v12, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v12

    aput v14, v13, v11

    .line 46
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x68

    new-array v13, v12, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v12

    aput v14, v13, v11

    .line 47
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x69

    new-array v13, v12, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v12

    aput v2, v13, v11

    .line 48
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v7, v12, [I

    shr-int/lit8 v13, v4, 0x7

    and-int/2addr v13, v12

    aput v13, v7, v11

    .line 49
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v7, v12, [I

    and-int/lit8 v4, v4, 0xf

    aput v4, v7, v11

    .line 50
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v12, [I

    add-int/lit8 v7, p2, 0x5

    .line 51
    aget-byte v13, v1, v7

    shr-int/2addr v13, v8

    and-int/2addr v13, v12

    aput v13, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v12, [I

    .line 52
    aget-byte v13, v1, v7

    shr-int/lit8 v3, v13, 0x6

    and-int/2addr v3, v12

    aput v3, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v12, [I

    .line 53
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 54
    aget-byte v7, v1, v4

    shr-int/2addr v7, v8

    and-int/2addr v7, v12

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v12, [I

    .line 55
    aget-byte v7, v1, v4

    shr-int/lit8 v6, v7, 0x4

    and-int/2addr v6, v8

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v12, [I

    .line 56
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v9

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 57
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 58
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 60
    aget-byte v5, v1, v5

    new-array v7, v12, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v12

    aput v14, v7, v11

    .line 61
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v7, v12, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v12

    aput v14, v7, v11

    .line 62
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v4, v12, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v12

    if-ne v7, v12, :cond_e

    move v7, v11

    goto :goto_3

    :cond_e
    move v7, v12

    :goto_3
    aput v7, v4, v11

    .line 63
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v4, v12, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v12

    aput v7, v4, v11

    .line 64
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v12

    aput v4, v3, v11

    const/16 v4, 0xe

    .line 65
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v7, v12, [I

    shr-int/lit8 v14, v2, 0x1

    and-int/2addr v14, v12

    aput v14, v7, v11

    .line 66
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v12

    aput v2, v3, v11

    const/16 v2, 0x10

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    shr-int/lit8 v7, v5, 0x7

    and-int/2addr v7, v12

    aput v7, v3, v11

    .line 68
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v6, v12, [I

    shr-int/lit8 v7, v5, 0x6

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 69
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v6, v12, [I

    shr-int/lit8 v7, v5, 0x5

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 70
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v6, v12, [I

    and-int/lit8 v5, v5, 0xf

    aput v5, v6, v11

    .line 71
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x4

    .line 72
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    const/4 v6, -0x1

    const/4 v7, -0x3

    const/4 v14, -0x2

    const/16 v15, 0x1b

    if-eqz v5, :cond_13

    if-eq v5, v4, :cond_12

    if-eq v5, v13, :cond_11

    .line 73
    sget v8, Lk0/nt;->c:I

    if-eq v8, v10, :cond_10

    if-ne v8, v9, :cond_f

    goto :goto_4

    :cond_f
    new-array v8, v12, [I

    add-int/2addr v5, v2

    aput v5, v8, v11

    .line 74
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    :goto_4
    new-array v8, v12, [I

    aput v5, v8, v11

    .line 75
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    new-array v5, v12, [I

    aput v6, v5, v11

    .line 76
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_12
    new-array v5, v12, [I

    aput v7, v5, v11

    .line 77
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_13
    new-array v5, v12, [I

    aput v14, v5, v11

    .line 78
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    .line 79
    :goto_5
    sget v5, Lk0/nt;->a:I

    const v8, 0x10133

    const/16 v15, 0x1c

    if-ne v5, v8, :cond_17

    .line 80
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_16

    if-eq v3, v4, :cond_15

    if-eq v3, v13, :cond_14

    new-array v4, v12, [I

    add-int/2addr v3, v2

    aput v3, v4, v11

    .line 81
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_14
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 82
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_15
    new-array v2, v12, [I

    aput v7, v2, v11

    .line 83
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    new-array v2, v12, [I

    aput v14, v2, v11

    .line 84
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_17
    add-int/lit8 v3, p2, 0x5

    .line 85
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_1c

    if-eq v3, v4, :cond_1b

    if-eq v3, v13, :cond_1a

    .line 86
    sget v4, Lk0/nt;->c:I

    if-eq v4, v10, :cond_19

    if-ne v4, v9, :cond_18

    goto :goto_6

    :cond_18
    new-array v4, v12, [I

    add-int/2addr v3, v2

    aput v3, v4, v11

    .line 87
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_19
    :goto_6
    new-array v2, v12, [I

    aput v3, v2, v11

    .line 88
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1a
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 89
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1b
    new-array v2, v12, [I

    aput v7, v2, v11

    .line 90
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1c
    new-array v2, v12, [I

    aput v14, v2, v11

    .line 91
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    .line 92
    :goto_7
    sget v2, Lk0/nt;->c:I

    if-eq v2, v10, :cond_1d

    if-ne v2, v9, :cond_2e

    :cond_1d
    const/16 v2, 0x35

    new-array v3, v12, [I

    const/4 v4, 0x7

    add-int/lit8 v5, p2, 0x7

    .line 93
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 94
    :cond_1e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2e

    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v2, v1, v2

    add-int/lit8 v8, p2, 0x3

    .line 96
    aget-byte v1, v1, v8

    and-int/lit16 v2, v2, 0xff

    .line 97
    iput v2, v0, Lk0/ja;->c:I

    move v2, v11

    .line 98
    :goto_8
    iget-object v8, v0, Lk0/ja;->e:[[I

    array-length v13, v8

    if-ge v2, v13, :cond_21

    .line 99
    iget v13, v0, Lk0/ja;->c:I

    aget-object v14, v8, v2

    aget v14, v14, v11

    if-ne v13, v14, :cond_20

    if-eqz v13, :cond_1f

    .line 100
    iput v2, v0, Lk0/ja;->b:I

    .line 101
    :cond_1f
    iput v13, v0, Lk0/ja;->d:I

    goto :goto_9

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 102
    :cond_21
    :goto_9
    iget v13, v0, Lk0/ja;->d:I

    const/16 v14, 0x19

    if-ne v13, v6, :cond_24

    iget v13, v0, Lk0/ja;->c:I

    if-nez v13, :cond_24

    .line 103
    iget-boolean v1, v0, Lk0/ja;->f:Z

    if-nez v1, :cond_23

    .line 104
    sget v1, Lu0/b;->j:I

    if-ne v1, v12, :cond_22

    .line 105
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    .line 106
    invoke-static {v14, v12}, Ll0/b0;->l0(II)V

    goto :goto_a

    .line 107
    :cond_22
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    .line 108
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    goto :goto_a

    .line 109
    :cond_23
    iput-boolean v11, v0, Lk0/ja;->f:Z

    .line 110
    :goto_a
    iget v1, v0, Lk0/ja;->c:I

    iput v1, v0, Lk0/ja;->d:I

    goto/16 :goto_d

    .line 111
    :cond_24
    iget v3, v0, Lk0/ja;->c:I

    if-eq v3, v4, :cond_2c

    if-eq v3, v6, :cond_2a

    const/16 v4, 0x15

    if-eq v3, v4, :cond_28

    const/16 v4, 0x16

    if-eq v3, v4, :cond_26

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_25

    .line 112
    array-length v1, v8

    if-ge v2, v1, :cond_2e

    .line 113
    aget-object v1, v8, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_d

    .line 114
    :cond_25
    array-length v1, v8

    if-gt v2, v1, :cond_2e

    .line 115
    iget v1, v0, Lk0/ja;->b:I

    aget-object v1, v8, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_26
    move v2, v11

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_27

    .line 116
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 117
    :cond_27
    invoke-static {v5, v12}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_28
    move v2, v11

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_29

    const/4 v3, 0x7

    .line 118
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    const/4 v3, 0x7

    .line 119
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    goto :goto_d

    .line 120
    :cond_2a
    iget v2, v0, Lk0/ja;->g:I

    if-eq v2, v1, :cond_2e

    .line 121
    iput v1, v0, Lk0/ja;->g:I

    if-ne v1, v12, :cond_2b

    .line 122
    iput-boolean v11, v0, Lk0/ja;->f:Z

    goto :goto_d

    :cond_2b
    if-ne v1, v10, :cond_2e

    .line 123
    iput-boolean v12, v0, Lk0/ja;->f:Z

    .line 124
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    .line 125
    invoke-static {v14, v12}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_2c
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v12, :cond_2e

    .line 126
    sget v1, Lh0/c;->E:I

    if-eq v1, v9, :cond_2d

    if-eq v1, v7, :cond_2d

    .line 127
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    .line 128
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_2d
    const/16 v1, 0x1a

    .line 129
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 130
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    :cond_2e
    :goto_d
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ja;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ja;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/ja;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/ja;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ja;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/ja;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ja;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/ja;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/ja;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/ja;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ja;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/ja;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x74

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
    .locals 5

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    const/16 p4, 0x3ed

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v0, [I

    aput p3, p1, v3

    const/16 p3, -0x38

    aput p3, p1, v4

    aput v4, p1, v2

    .line 2
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-le p1, v4, :cond_3

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, -0x39

    aput p3, p1, v4

    const/4 p3, 0x6

    aput p3, p1, v2

    .line 4
    aget v3, p2, v3

    aput v3, p1, v1

    aget v3, p2, v4

    aput v3, p1, v0

    aget v2, p2, v2

    aput v2, p1, p4

    aget v1, p2, v1

    aput v1, p1, p3

    const/4 p3, 0x7

    aget v0, p2, v0

    aput v0, p1, p3

    const/16 p3, 0x8

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-le p1, v4, :cond_3

    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, -0x3a

    aput p3, p1, v4

    aput v2, p1, v2

    .line 6
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, -0x39

    const/16 v3, 0xe3

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput p1, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput p1, p2, v1

    aput v11, p2, v0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput p1, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput p1, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput p1, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput p1, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x32

    .line 7
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final b3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc6

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    if-nez p1, :cond_0

    move v2, v3

    :cond_0
    const/4 p1, 0x4

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/ja;->v:I

    if-lez v0, :cond_1

    sget-object v1, Lk0/ja;->I:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lk0/ja;->r:I

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x94

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x5

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 3
    aget v0, v1, v0

    aput v0, v3, v4

    const/4 v0, 0x4

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v0

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v5

    const/4 v0, 0x6

    and-int/lit16 v1, v2, 0xff

    aput v1, v3, v0

    const/4 v0, 0x7

    aput p1, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t3(BLjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, "Windows-936"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x24

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 p1, 0x21

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x3

    aput v1, v0, p1

    .line 2
    array-length p1, p2

    const/16 v1, 0x1e

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    move p1, v2

    :goto_1
    if-ge p1, v1, :cond_2

    add-int/lit8 v3, p1, 0x4

    .line 3
    aget-byte v4, p2, p1

    aput v4, v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x4

    .line 4
    aput v2, v0, v1

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final u3([IILjava/lang/String;)V
    .locals 5

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    const-string v0, "Windows-936"

    .line 1
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 2
    array-length v0, p3

    const/16 v1, 0x1a

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p3

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    add-int v3, v2, p2

    .line 3
    aget-byte v4, p3, v2

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v1, p2

    .line 4
    aput v0, p1, v1

    return-void
.end method
