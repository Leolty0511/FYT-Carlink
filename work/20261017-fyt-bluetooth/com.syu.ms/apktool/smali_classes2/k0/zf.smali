.class public Lk0/zf;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:I

.field public static m:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Lo1/g0;

.field public final i:I

.field public final j:I

.field public k:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/zf;->c:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
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

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v6, 0x5

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v6, 0x6

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v6, 0x7

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v6, 0x8

    aput-object v3, v1, v6

    iput-object v1, p0, Lk0/zf;->d:[[I

    .line 4
    iput v0, p0, Lk0/zf;->f:I

    new-array v1, v5, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_9

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/zf;->g:[[I

    .line 6
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    invoke-direct {v0, v1, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/zf;->h:Lo1/g0;

    .line 7
    iput v4, p0, Lk0/zf;->i:I

    .line 8
    iput v2, p0, Lk0/zf;->j:I

    .line 9
    new-instance v0, Lk0/zf$a;

    invoke-direct {v0, p0}, Lk0/zf$a;-><init>(Lk0/zf;)V

    iput-object v0, p0, Lk0/zf;->k:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x24
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x25
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_b
    .array-data 4
        0x5
        0x19
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 8

    if-eqz p1, :cond_13

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x21

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v0, v2, :cond_11

    const/16 v2, 0x22

    const/16 v5, 0xb

    if-eq v0, v2, :cond_f

    const/16 v2, 0x29

    const/16 v6, 0xd

    const/16 v7, 0xc

    if-eq v0, v2, :cond_d

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_b

    const/16 v2, 0x44

    const/4 v6, 0x5

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    aget p1, p1, v4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x6

    .line 4
    invoke-virtual {p0, p1}, Lk0/zf;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x7

    .line 5
    invoke-virtual {p0, p1}, Lk0/zf;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    aget p1, p1, v4

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    .line 7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_13

    .line 8
    invoke-virtual {p0, v0}, Lk0/zf;->a3(I)V

    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v4, :cond_13

    .line 10
    invoke-virtual {p0, v0}, Lk0/zf;->a3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_2
    aget p1, p1, v4

    const/16 v0, 0x10

    if-eqz p1, :cond_4

    .line 12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_13

    .line 13
    invoke-virtual {p0, v6}, Lk0/zf;->a3(I)V

    goto/16 :goto_0

    .line 14
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v4, :cond_13

    .line 15
    invoke-virtual {p0, v6}, Lk0/zf;->a3(I)V

    goto/16 :goto_0

    .line 16
    :cond_5
    aget v0, p1, v4

    if-ne v0, v3, :cond_6

    new-array p1, v6, [I

    .line 17
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 18
    :cond_6
    aget v0, p1, v4

    const/16 v2, 0x9

    if-ne v0, v2, :cond_7

    new-array p1, v6, [I

    .line 19
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 20
    :cond_7
    aget v0, p1, v4

    if-ne v0, v4, :cond_8

    new-array p1, v6, [I

    .line 21
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 22
    :cond_8
    aget v0, p1, v4

    if-ne v0, v1, :cond_9

    new-array p1, v6, [I

    .line 23
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 24
    :cond_9
    aget v0, p1, v4

    if-ne v0, v5, :cond_a

    new-array p1, v6, [I

    .line 25
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 26
    :cond_a
    aget p1, p1, v4

    if-ne p1, v7, :cond_13

    new-array p1, v6, [I

    .line 27
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 28
    :cond_b
    aget p1, p1, v4

    if-eqz p1, :cond_c

    .line 29
    invoke-virtual {p0, v7}, Lk0/zf;->a3(I)V

    goto :goto_0

    .line 30
    :cond_c
    invoke-virtual {p0, v6}, Lk0/zf;->a3(I)V

    goto :goto_0

    .line 31
    :cond_d
    aget p1, p1, v4

    if-eqz p1, :cond_e

    .line 32
    invoke-virtual {p0, v7}, Lk0/zf;->a3(I)V

    goto :goto_0

    .line 33
    :cond_e
    invoke-virtual {p0, v6}, Lk0/zf;->a3(I)V

    goto :goto_0

    .line 34
    :cond_f
    aget p1, p1, v4

    const/16 v0, 0x8

    if-eqz p1, :cond_10

    .line 35
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_13

    .line 36
    invoke-virtual {p0, v0}, Lk0/zf;->a3(I)V

    goto :goto_0

    .line 37
    :cond_10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v4, :cond_13

    .line 38
    invoke-virtual {p0, v0}, Lk0/zf;->a3(I)V

    goto :goto_0

    .line 39
    :cond_11
    aget p1, p1, v4

    if-eqz p1, :cond_12

    .line 40
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_13

    .line 41
    invoke-virtual {p0, v3}, Lk0/zf;->a3(I)V

    goto :goto_0

    .line 42
    :cond_12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v4, :cond_13

    .line 43
    invoke-virtual {p0, v3}, Lk0/zf;->a3(I)V

    :cond_13
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x76
        0x2
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x76
        0x2
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x76
        0x2
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x76
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x76
        0x2
        0x2
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x76
        0x2
        0x2
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/zf;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->h:I

    .line 13
    iput v1, v0, Lk0/mt;->p:I

    .line 14
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0xd6

    if-ne v0, v3, :cond_0

    .line 15
    iget-object v0, p0, Lk0/zf;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 16
    iget-object v0, p0, Lk0/zf;->h:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/zf;->c3(I)V

    .line 17
    iget-object v0, p0, Lk0/zf;->h:Lo1/g0;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/zf;->b3(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

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
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x24

    const/16 v4, 0x12

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_12

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x4

    if-eq v2, v6, :cond_a

    const/4 v4, 0x2

    if-eq v2, v11, :cond_9

    const/16 v10, 0x22

    if-eq v2, v10, :cond_8

    if-eq v2, v3, :cond_5

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x26

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 4
    iput v2, v0, Lk0/zf;->f:I

    move v2, v8

    .line 5
    :goto_0
    iget-object v3, v0, Lk0/zf;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 6
    iget v4, v0, Lk0/zf;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_1

    if-eqz v4, :cond_2

    .line 7
    iput v2, v0, Lk0/zf;->e:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_19

    .line 8
    array-length v1, v3

    if-ge v2, v1, :cond_19

    .line 9
    iget v1, v0, Lk0/zf;->e:I

    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 10
    iget-object v1, v0, Lk0/zf;->g:[[I

    iget v2, v0, Lk0/zf;->e:I

    aget-object v1, v1, v2

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const v3, 0x8000

    const/16 v4, 0x1e00

    invoke-static {v2, v1, v3, v9, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_8

    .line 12
    :cond_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 14
    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    new-array v3, v9, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v9

    aput v7, v3, v8

    .line 15
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v9

    aput v7, v3, v8

    .line 16
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v3, v9, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v9

    aput v7, v3, v8

    .line 17
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v9

    aput v7, v3, v8

    .line 18
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 19
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 20
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v9

    aput v2, v3, v8

    .line 21
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    .line 22
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xd6

    if-ne v2, v3, :cond_19

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v1, v1, v2

    shr-int/2addr v1, v11

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_7

    .line 24
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    .line 25
    :cond_7
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 27
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 28
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 29
    aget-byte v1, v1, v5

    and-int/2addr v2, v7

    .line 30
    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 31
    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 32
    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    and-int/2addr v1, v7

    .line 33
    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_9
    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v7, p2, 0x2

    .line 34
    aget-byte v11, v1, v7

    shr-int/lit8 v5, v11, 0x5

    and-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    .line 35
    aget-byte v5, v1, v7

    shr-int/2addr v5, v12

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    .line 36
    aget-byte v5, v1, v7

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    .line 37
    aget-byte v5, v1, v7

    shr-int/lit8 v4, v5, 0x2

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    .line 38
    aget-byte v4, v1, v7

    shr-int/2addr v4, v9

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    .line 39
    aget-byte v4, v1, v7

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 40
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    .line 42
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    add-int/lit8 v13, p2, 0x4

    .line 43
    aget-byte v13, v1, v13

    and-int/2addr v7, v13

    const/16 v13, 0x15

    new-array v14, v9, [I

    and-int/lit8 v15, v2, 0xf

    aput v15, v14, v8

    .line 44
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x10

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 45
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xc

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 46
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xb

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 47
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xa

    new-array v14, v9, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v9

    aput v2, v14, v8

    .line 48
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    and-int/2addr v3, v2

    if-eq v3, v6, :cond_f

    if-eq v3, v12, :cond_e

    if-eq v3, v5, :cond_d

    if-eq v3, v10, :cond_c

    const/16 v5, 0x8

    if-eq v3, v5, :cond_b

    move v5, v8

    move v6, v5

    :goto_3
    move v10, v6

    goto :goto_4

    :cond_b
    move v6, v8

    move v5, v9

    move v10, v5

    goto :goto_4

    :cond_c
    move v6, v8

    move v10, v6

    move v5, v9

    goto :goto_4

    :cond_d
    move v5, v8

    move v10, v5

    move v6, v9

    goto :goto_4

    :cond_e
    move v5, v8

    move v6, v9

    goto :goto_3

    :cond_f
    move v5, v8

    move v6, v5

    move v10, v9

    :goto_4
    new-array v13, v9, [I

    aput v5, v13, v8

    .line 49
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v5, v9, [I

    aput v6, v5, v8

    .line 50
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v5, v9, [I

    aput v10, v5, v8

    .line 51
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4d

    new-array v5, v9, [I

    aput v3, v5, v8

    .line 52
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1c

    const/16 v4, 0x1b

    if-eq v7, v9, :cond_11

    if-eq v7, v2, :cond_10

    new-array v5, v9, [I

    aput v7, v5, v8

    .line 53
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    aput v7, v4, v8

    .line 54
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v5, v9, [I

    const/4 v6, -0x3

    aput v6, v5, v8

    .line 55
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    aput v6, v4, v8

    .line 56
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    new-array v5, v9, [I

    const/4 v6, -0x2

    aput v6, v5, v8

    .line 57
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    aput v6, v4, v8

    .line 58
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v3, 0x1d

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 59
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v2

    aput v6, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1e

    new-array v4, v9, [I

    .line 60
    aget-byte v1, v1, v5

    shr-int/2addr v1, v8

    and-int/2addr v1, v2

    aput v1, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v2, v1, v2

    add-int/lit8 v10, p2, 0x3

    .line 62
    aget-byte v1, v1, v10

    and-int/2addr v2, v7

    .line 63
    iput v2, v0, Lk0/zf;->c:I

    move v2, v8

    .line 64
    :goto_6
    iget-object v10, v0, Lk0/zf;->d:[[I

    array-length v11, v10

    if-ge v2, v11, :cond_14

    .line 65
    iget v11, v0, Lk0/zf;->c:I

    aget-object v12, v10, v2

    aget v12, v12, v8

    if-ne v11, v12, :cond_13

    if-eqz v11, :cond_14

    .line 66
    iput v2, v0, Lk0/zf;->b:I

    goto :goto_7

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 67
    :cond_14
    :goto_7
    iget v11, v0, Lk0/zf;->c:I

    if-eq v11, v3, :cond_17

    and-int/2addr v1, v7

    if-eqz v1, :cond_15

    .line 68
    array-length v1, v10

    if-ge v2, v1, :cond_19

    .line 69
    aget-object v1, v10, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 70
    :cond_15
    iget v1, v0, Lk0/zf;->b:I

    array-length v2, v10

    if-ge v1, v2, :cond_16

    if-eq v1, v7, :cond_16

    .line 71
    aget-object v1, v10, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 72
    :cond_16
    iput v7, v0, Lk0/zf;->b:I

    goto :goto_8

    :cond_17
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_19

    .line 73
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_18

    if-eq v1, v5, :cond_18

    .line 74
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_18
    const/16 v1, 0x1a

    .line 76
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 77
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    :cond_19
    :goto_8
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/zf;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/zf;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6c

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_8

    .line 1
    array-length p1, p2

    if-lez p1, :cond_8

    .line 2
    aget p1, p2, v2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v4, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v4, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v4, [I

    .line 5
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, v4, [I

    .line 6
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v4, [I

    .line 7
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array p1, v4, [I

    .line 9
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array p1, v4, [I

    .line 10
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array p1, v4, [I

    .line 11
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array p1, v4, [I

    .line 12
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array p1, v4, [I

    .line 13
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array p1, v4, [I

    .line 14
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array p1, v4, [I

    .line 15
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    new-array p1, v4, [I

    .line 16
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_8

    .line 17
    array-length p1, p2

    if-lez p1, :cond_8

    .line 18
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_2

    new-array p1, v4, [I

    .line 19
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v4, [I

    .line 20
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_8

    .line 21
    array-length p1, p2

    if-lez p1, :cond_8

    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v3, p1, v1

    .line 22
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_8

    .line 23
    array-length p1, p2

    if-lez p1, :cond_8

    new-array p1, v4, [I

    aput v0, p1, v2

    const/16 v0, 0x71

    aput v0, p1, v3

    aput v1, p1, v1

    .line 24
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_8

    .line 25
    array-length p1, p2

    if-lez p1, :cond_8

    .line 26
    aget p1, p2, v2

    const/16 v5, 0xff

    if-ne p1, v5, :cond_6

    .line 27
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/zf;->c3(I)V

    goto :goto_0

    .line 28
    :cond_6
    aget p1, p2, v2

    const/16 v5, 0xfe

    if-ne p1, v5, :cond_7

    .line 29
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/zf;->b3(I)V

    goto :goto_0

    :cond_7
    new-array p1, v4, [I

    aput v0, p1, v2

    const/16 v0, 0x83

    aput v0, p1, v3

    aput v1, p1, v1

    .line 30
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    :array_0
    .array-data 4
        0xe3
        -0x75
        0x2
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x75
        0x2
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x75
        0x2
        0x4
        0x6
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x75
        0x2
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x75
        0x2
        0x4
        0x5
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x75
        0x2
        0x4
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x75
        0x2
        0x4
        0x8
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x75
        0x2
        0x4
        0x7
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x75
        0x2
        0x4
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x75
        0x2
        0x4
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x75
        0x2
        0x3
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x75
        0x2
        0x3
        0x5
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x75
        0x2
        0x3
        0x4
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x75
        0x2
        0x3
        0x2
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x75
        0x2
        0x6
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x75
        0x2
        0x6
        0x0
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

    const/16 v5, 0x73

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x32

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

.method public final b3(I)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/zf;->m:I

    const/4 v2, 0x5

    new-array v3, v2, [I

    const/16 v4, 0xe3

    aput v4, v3, v1

    const/16 v4, 0x8b

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v4, 0x2

    aput v4, v3, v4

    const/4 v6, 0x3

    aput v2, v3, v6

    aput p1, v3, v0

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    const/16 p1, 0x6b

    new-array v0, v5, [I

    .line 3
    sget v2, Lk0/zf;->m:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/zf;->h:Lo1/g0;

    invoke-virtual {p1, v4, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/zf;->m:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/zf;->h:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final c3(I)V
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
    sput p1, Lk0/zf;->l:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v0

    const/16 v3, 0x8b

    aput v3, v2, v1

    const/4 v3, 0x2

    aput v3, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    aput p1, v2, v3

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    const/16 p1, 0x6a

    new-array v2, v1, [I

    .line 3
    sget v3, Lk0/zf;->l:I

    aput v3, v2, v0

    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/zf;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/zf;->l:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/zf;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
