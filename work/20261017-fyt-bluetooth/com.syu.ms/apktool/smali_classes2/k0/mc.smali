.class public Lk0/mc;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:[I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/mc;->c:I

    const/16 v1, 0x8

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

    iput-object v1, p0, Lk0/mc;->d:[[I

    .line 4
    new-instance v1, Lk0/mc$a;

    invoke-direct {v1, p0}, Lk0/mc$a;-><init>(Lk0/mc;)V

    iput-object v1, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/mc$b;

    invoke-direct {v1, p0}, Lk0/mc$b;-><init>(Lk0/mc;)V

    iput-object v1, p0, Lk0/mc;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/mc$c;

    invoke-direct {v1, p0}, Lk0/mc$c;-><init>(Lk0/mc;)V

    iput-object v1, p0, Lk0/mc;->g:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lk0/mc;->h:I

    .line 8
    iput-boolean v0, p0, Lk0/mc;->i:Z

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lk0/mc;->j:Ljava/lang/String;

    new-array v1, v2, [I

    .line 10
    fill-array-data v1, :array_8

    iput-object v1, p0, Lk0/mc;->k:[I

    .line 11
    iput v0, p0, Lk0/mc;->l:I

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
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xc
    .end array-data

    :array_8
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic e3(Lk0/mc;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/mc;->h:I

    return p0
.end method

.method public static synthetic f3(Lk0/mc;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/mc;->h:I

    return p1
.end method

.method public static synthetic g3(Lk0/mc;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/mc;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h3(Lk0/mc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/mc;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic i3(Lk0/mc;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/mc;->l3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic j3(Lk0/mc;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/mc;->i:Z

    return p0
.end method

.method public static synthetic k3(Lk0/mc;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/mc;->i:Z

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 6

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/16 v4, 0x26

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v5

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lk0/mc;->d3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Lk0/mc;->d3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v5

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1}, Lk0/mc;->d3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 8
    invoke-virtual {p0, p1}, Lk0/mc;->d3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const/16 p1, 0x14

    .line 10
    invoke-virtual {p0, p1}, Lk0/mc;->d3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 11
    invoke-virtual {p0, p1}, Lk0/mc;->d3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v5

    const/16 v1, 0x23

    if-ne v0, v5, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 14
    invoke-virtual {p0, v1}, Lk0/mc;->d3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v5

    if-nez p1, :cond_9

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v5, :cond_9

    .line 17
    invoke-virtual {p0, v1}, Lk0/mc;->d3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v5

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_9

    .line 20
    invoke-virtual {p0, v0}, Lk0/mc;->d3(I)V

    goto :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v5, :cond_9

    .line 22
    invoke-virtual {p0, v0}, Lk0/mc;->d3(I)V

    goto :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v5

    const/16 v0, 0xf

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_9

    .line 25
    invoke-virtual {p0, v4}, Lk0/mc;->d3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v5, :cond_9

    .line 27
    invoke-virtual {p0, v4}, Lk0/mc;->d3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v5

    const/16 v0, 0xd

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_9

    .line 30
    invoke-virtual {p0, v1}, Lk0/mc;->d3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v5, :cond_9

    .line 32
    invoke-virtual {p0, v1}, Lk0/mc;->d3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v5

    const/16 v0, 0x10

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_9

    .line 35
    invoke-virtual {p0, v0}, Lk0/mc;->d3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v5, :cond_9

    .line 37
    invoke-virtual {p0, v0}, Lk0/mc;->d3(I)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    const/16 v2, 0x8

    new-array v2, v2, [I

    .line 6
    fill-array-data v2, :array_0

    iput-object v2, v0, Lk0/mt;->m:[I

    .line 7
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/mc;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/mc;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/mc;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/mc;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_12

    const/16 v3, 0x41

    const-string v8, "persist.syu.reversefrontdoor"

    const/16 v9, 0x10

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v2, v3, :cond_d

    const/16 v3, 0x55

    if-eq v2, v3, :cond_2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x3138

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_c

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v1, v1, v2

    const/16 v2, 0x6b

    new-array v3, v6, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 4
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    .line 5
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_2
    add-int/lit8 v2, p2, 0x3

    .line 6
    aget-byte v1, v1, v2

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 7
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 8
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 9
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 10
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    .line 11
    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 12
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 13
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 14
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 15
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 16
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 19
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 20
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    .line 21
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 25
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    .line 26
    :cond_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v3, v1, v2

    add-int/lit8 v8, p2, 0x3

    .line 28
    aget-byte v10, v1, v8

    add-int/lit8 v13, p2, 0x4

    .line 29
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x5

    .line 30
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x6

    .line 31
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x7

    .line 32
    aget-byte v7, v1, v16

    const-string v12, "persist.fyt.reversetemp"

    .line 33
    invoke-static {v12, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 34
    aget-byte v3, v1, v8

    .line 35
    aget-byte v10, v1, v2

    :cond_3
    and-int/lit16 v1, v3, 0xff

    const/16 v2, 0x1b

    if-eq v1, v9, :cond_5

    const/16 v3, 0x50

    if-eq v1, v3, :cond_4

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v1, v6, [I

    const/4 v3, -0x3

    aput v3, v1, v5

    .line 37
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v1, v6, [I

    const/4 v3, -0x2

    aput v3, v1, v5

    .line 38
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v1, v10, 0xff

    const/16 v2, 0x1c

    if-eq v1, v9, :cond_7

    const/16 v3, 0x50

    if-eq v1, v3, :cond_6

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v1, v6, [I

    const/4 v3, -0x3

    aput v3, v1, v5

    .line 40
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v1, v6, [I

    const/4 v3, -0x2

    aput v3, v1, v5

    .line 41
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit8 v1, v13, 0xf

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v5

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v13, 0x4

    const/16 v2, 0xf

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_5
    move v3, v6

    goto :goto_3

    :pswitch_6
    move v3, v5

    move v8, v3

    move v9, v6

    goto :goto_5

    :pswitch_7
    move v8, v5

    move v3, v6

    move v9, v3

    goto :goto_5

    :pswitch_8
    move v3, v5

    move v8, v6

    goto :goto_4

    :pswitch_9
    move v3, v5

    move v9, v3

    move v8, v6

    goto :goto_5

    :pswitch_a
    move v9, v5

    move v3, v6

    move v8, v3

    goto :goto_5

    :pswitch_b
    move v8, v5

    move v9, v8

    move v3, v6

    goto :goto_5

    :goto_2
    move v3, v5

    :goto_3
    move v8, v3

    :goto_4
    move v9, v8

    :goto_5
    const/16 v10, 0x13

    new-array v11, v6, [I

    aput v3, v11, v5

    .line 43
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v10, v6, [I

    aput v8, v10, v5

    .line 44
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v8, v6, [I

    aput v9, v8, v5

    .line 45
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v8, v6, [I

    aput v1, v8, v5

    .line 46
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v3, v6, [I

    and-int/lit8 v8, v14, 0x3

    aput v8, v3, v5

    .line 47
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v3, v6, [I

    shr-int/lit8 v8, v14, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v5

    .line 48
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v3, v6, [I

    const/4 v4, 0x2

    shr-int/lit8 v8, v14, 0x2

    and-int/lit8 v4, v8, 0x1

    aput v4, v3, v5

    .line 49
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    and-int/lit8 v3, v15, 0x1

    aput v3, v1, v5

    const/16 v3, 0xd

    .line 50
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v3, v15, 0x1

    and-int/2addr v3, v6

    aput v3, v1, v5

    const/16 v3, 0xb

    .line 51
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v3, v15, 0x2

    and-int/2addr v3, v6

    aput v3, v1, v5

    const/16 v3, 0xe

    .line 52
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 53
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0xc

    const/4 v4, 0x2

    if-ge v1, v4, :cond_9

    new-array v1, v6, [I

    shr-int/lit8 v4, v15, 0x3

    and-int/2addr v4, v6

    if-nez v4, :cond_8

    move v4, v5

    goto :goto_6

    :cond_8
    move v4, v6

    :goto_6
    aput v4, v1, v5

    .line 54
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_9
    new-array v1, v6, [I

    shr-int/lit8 v4, v7, 0x1

    and-int/2addr v4, v6

    if-nez v4, :cond_a

    move v4, v6

    goto :goto_7

    :cond_a
    move v4, v5

    :goto_7
    aput v4, v1, v5

    .line 55
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v1, 0x35

    new-array v3, v6, [I

    shr-int/lit8 v4, v15, 0x4

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 56
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x26

    new-array v3, v6, [I

    shr-int/lit8 v4, v15, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 57
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v3, v15, 0x7

    and-int/2addr v3, v6

    aput v3, v1, v5

    .line 58
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 59
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    and-int/lit16 v1, v7, 0xff

    const/16 v2, 0x28

    if-ge v1, v2, :cond_b

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0xa

    rsub-int v5, v2, 0x3e8

    goto :goto_9

    :cond_b
    if-lt v1, v2, :cond_c

    const/16 v3, 0xc8

    if-gt v1, v3, :cond_c

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v5, v1, 0x3e8

    .line 60
    :cond_c
    :goto_9
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v2, v1, v2

    if-eq v2, v6, :cond_10

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f

    if-eq v2, v4, :cond_e

    goto/16 :goto_c

    :cond_e
    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v1, v1, v2

    const/16 v2, 0x63

    new-array v3, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v6

    aput v1, v3, v5

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_f
    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 65
    aget-byte v7, v1, v4

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    add-int/lit8 v10, p2, 0x4

    aget-byte v11, v1, v10

    shl-int/2addr v11, v5

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v7, v11

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v6, [I

    .line 66
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v7, v1, v10

    shl-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 67
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    shl-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    div-int/2addr v4, v9

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 68
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    shl-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 69
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v7, p2, 0xa

    aget-byte v7, v1, v7

    shl-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 70
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const/high16 v7, 0xff0000

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xc

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v8

    or-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xd

    aget-byte v7, v1, v7

    shl-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    const/16 v4, 0xe

    add-int/lit8 v4, p2, 0xe

    .line 71
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_10
    add-int/lit8 v2, p2, 0x3

    .line 72
    aget-byte v1, v1, v2

    const/16 v2, 0x65

    new-array v3, v6, [I

    shr-int/lit8 v7, v1, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    shr-int/lit8 v7, v1, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    shr-int/lit8 v7, v1, 0x5

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 75
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 76
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 77
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 78
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    .line 79
    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 80
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v2, v5

    const/4 v1, 0x2

    .line 81
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_11
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 82
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v2, v5

    const/4 v1, 0x2

    .line 83
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    .line 84
    :cond_12
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    add-int/lit8 v2, p2, 0x2

    .line 85
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 86
    aget-byte v1, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 87
    iput v2, v0, Lk0/mc;->c:I

    move v2, v5

    .line 88
    :goto_a
    iget-object v3, v0, Lk0/mc;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_14

    .line 89
    iget v4, v0, Lk0/mc;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_13

    if-eqz v4, :cond_14

    .line 90
    iput v2, v0, Lk0/mc;->b:I

    goto :goto_b

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    :goto_b
    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_15

    .line 91
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 92
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 93
    :cond_15
    array-length v1, v3

    if-gt v2, v1, :cond_16

    .line 94
    iget v1, v0, Lk0/mc;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    :cond_16
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/mc;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/mc;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/mc;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/mc;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/mc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/mc;->e:Ljava/lang/Runnable;

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
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x4

    const/16 v4, 0xe3

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x5

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v8, :cond_1

    if-eq v1, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array v1, v9, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 3
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0, v2, v6}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v9, [I

    aput v4, v1, v7

    const/16 v4, 0xc6

    aput v4, v1, v6

    aput v8, v1, v8

    aput v7, v1, v5

    .line 5
    aget v2, v2, v7

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v1, v9, [I

    .line 6
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    new-array v10, v1, [I

    aput v4, v10, v7

    const/16 v11, 0x33

    aput v11, v10, v6

    aput v9, v10, v8

    .line 7
    aget v12, v2, v7

    aput v12, v10, v5

    iget-object v12, v0, Lk0/mc;->k:[I

    iget v13, v0, Lk0/mc;->l:I

    rem-int/2addr v13, v8

    aget v12, v12, v13

    aput v12, v10, v3

    const/16 v12, 0x25

    aput v12, v10, v9

    const/4 v13, 0x6

    const/16 v14, 0x26

    aput v14, v10, v13

    const/4 v15, 0x7

    const/16 v16, 0xaa

    aput v16, v10, v15

    invoke-static {v10}, Lz/k;->s([I)V

    new-array v10, v1, [I

    aput v4, v10, v7

    aput v11, v10, v6

    aput v9, v10, v8

    .line 8
    aget v17, v2, v7

    aput v17, v10, v5

    iget-object v5, v0, Lk0/mc;->k:[I

    iget v6, v0, Lk0/mc;->l:I

    rem-int/2addr v6, v8

    aget v5, v5, v6

    aput v5, v10, v3

    aput v12, v10, v9

    aput v14, v10, v13

    aput v16, v10, v15

    invoke-static {v10}, Lz/k;->s([I)V

    new-array v1, v1, [I

    aput v4, v1, v7

    const/4 v4, 0x1

    aput v11, v1, v4

    aput v9, v1, v8

    .line 9
    aget v2, v2, v7

    const/4 v4, 0x3

    aput v2, v1, v4

    iget-object v2, v0, Lk0/mc;->k:[I

    iget v4, v0, Lk0/mc;->l:I

    rem-int/2addr v4, v8

    aget v2, v2, v4

    aput v2, v1, v3

    aput v12, v1, v9

    aput v14, v1, v13

    aput v16, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    .line 10
    iget v1, v0, Lk0/mc;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/mc;->l:I

    .line 11
    rem-int/2addr v1, v8

    iput v1, v0, Lk0/mc;->l:I

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x1
    .end array-data
.end method

.method public a3()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lk0/mc;->b3()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_6

    const/16 v11, 0xc3

    const/16 v12, 0x9

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_d

    if-eq v0, v7, :cond_1

    if-eq v0, v12, :cond_1

    new-array v0, v7, [I

    .line 3
    fill-array-data v0, :array_0

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_0
    if-ge v10, v7, :cond_0

    add-int/lit8 v2, v10, 0x1

    .line 4
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_1
    new-array v0, v7, [I

    aput v11, v0, v10

    aput v6, v0, v9

    .line 6
    sget v9, Lu0/b;->s3:I

    and-int/lit16 v11, v9, 0xff

    aput v11, v0, v8

    shr-int/lit8 v8, v9, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v4

    .line 7
    sget v4, Lu0/b;->r3:I

    and-int/lit16 v8, v4, 0xff

    aput v8, v0, v5

    shr-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v2

    .line 8
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v6

    .line 9
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_1
    if-ge v10, v7, :cond_2

    add-int/lit8 v2, v10, 0x1

    .line 10
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_3
    new-array v0, v7, [I

    aput v11, v0, v10

    aput v6, v0, v9

    .line 12
    sget v9, Ln0/j4;->b:I

    if-ne v9, v7, :cond_4

    .line 13
    sget v9, Lo0/e;->C:I

    aput v9, v0, v4

    .line 14
    sget v4, Lo0/e;->B:I

    aput v4, v0, v8

    goto :goto_2

    .line 15
    :cond_4
    sget v9, Lo0/e;->C:I

    aput v9, v0, v8

    .line 16
    sget v8, Lo0/e;->B:I

    aput v8, v0, v4

    :goto_2
    aput v10, v0, v5

    aput v10, v0, v2

    .line 17
    sget v2, Lo0/e;->r:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v6

    .line 18
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_3
    if-ge v10, v7, :cond_5

    add-int/lit8 v2, v10, 0x1

    .line 19
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_3

    .line 20
    :cond_5
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_6

    :cond_6
    new-array v0, v6, [I

    const/16 v11, 0xc2

    aput v11, v0, v10

    aput v5, v0, v9

    .line 21
    sget v11, Lw0/d;->i:I

    .line 22
    sget v12, Lw0/d;->j:I

    and-int/lit16 v12, v12, 0xff

    .line 23
    sget v13, Lw0/d;->h:I

    const/high16 v14, 0x10000

    if-ne v13, v14, :cond_7

    aput v9, v0, v8

    goto :goto_4

    :cond_7
    const v14, 0x10001

    if-ne v13, v14, :cond_8

    aput v8, v0, v8

    goto :goto_4

    :cond_8
    const v14, 0x10002

    if-ne v13, v14, :cond_9

    aput v4, v0, v8

    goto :goto_4

    :cond_9
    if-nez v13, :cond_a

    const/16 v13, 0x11

    aput v13, v0, v8

    goto :goto_4

    :cond_a
    if-ne v13, v9, :cond_b

    const/16 v13, 0x12

    aput v13, v0, v8

    :cond_b
    :goto_4
    and-int/lit16 v8, v11, 0xff

    aput v8, v0, v4

    shr-int/lit8 v4, v11, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v5

    .line 24
    rem-int/2addr v12, v6

    add-int/2addr v12, v9

    aput v12, v0, v2

    new-array v1, v1, [I

    aput v3, v1, v10

    :goto_5
    if-ge v10, v6, :cond_c

    add-int/lit8 v2, v10, 0x1

    .line 25
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_5

    .line 26
    :cond_c
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_d
    :goto_6
    return-void

    :array_0
    .array-data 4
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

.method public b3()V
    .locals 9

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x30

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0xc

    goto :goto_2

    :pswitch_1
    move v1, v7

    goto :goto_1

    .line 2
    :pswitch_2
    sget v0, Ln0/j4;->b:I

    const/16 v8, 0x20

    if-ne v0, v8, :cond_0

    move v1, v3

    :cond_0
    const/16 v8, 0x11

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x6

    const/16 v8, 0x12

    goto :goto_2

    :pswitch_4
    move v1, v4

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x7

    goto :goto_2

    .line 3
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v7

    .line 4
    :goto_0
    sget v0, Ln0/j4;->b:I

    if-ne v0, v3, :cond_4

    const/16 v8, 0x21

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    goto :goto_2

    :pswitch_7
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_8
    const/16 v8, 0x40

    move v1, v2

    goto :goto_2

    :pswitch_9
    move v1, v6

    :goto_1
    move v8, v1

    goto :goto_2

    :pswitch_a
    move v1, v7

    :goto_2
    new-array v0, v2, [I

    const/16 v2, 0xe3

    aput v2, v0, v7

    const/16 v2, 0xc0

    aput v2, v0, v6

    aput v5, v0, v5

    aput v1, v0, v4

    const/4 v1, 0x4

    aput v8, v0, v1

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

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
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c3()V
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

    const/16 v6, 0x1e

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

.method public final d3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0, p1, p1}, Lk0/mc;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public final l3(ILjava/lang/String;)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, 0x7

    const/4 v5, 0x2

    aput v3, v2, v5

    const/4 v3, 0x3

    int-to-byte p1, p1

    aput p1, v2, v3

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xb

    if-ge p1, v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    move p2, v4

    :goto_1
    const/4 v6, 0x6

    if-ge p2, v6, :cond_2

    add-int/lit8 v6, p2, 0x4

    const/16 v7, 0xff

    .line 3
    aput v7, v2, v6

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, p1, 0x1

    .line 4
    div-int/2addr p2, v5

    if-ge v4, p2, :cond_a

    const/16 p2, 0xf

    mul-int/lit8 v6, v4, 0x2

    .line 5
    aget-char v7, v0, v6

    const/16 v8, 0xc

    const/16 v9, 0x2b

    const/16 v10, 0x23

    const/16 v11, 0x2a

    if-ne v7, v11, :cond_3

    move v7, v1

    goto :goto_3

    .line 6
    :cond_3
    aget-char v7, v0, v6

    if-ne v7, v10, :cond_4

    move v7, v3

    goto :goto_3

    .line 7
    :cond_4
    aget-char v7, v0, v6

    if-ne v7, v9, :cond_5

    move v7, v8

    goto :goto_3

    .line 8
    :cond_5
    aget-char v7, v0, v6

    add-int/lit8 v7, v7, -0x30

    :goto_3
    add-int/lit8 v6, v6, 0x1

    if-ge v6, p1, :cond_9

    .line 9
    aget-char p2, v0, v6

    if-ne p2, v11, :cond_6

    move p2, v1

    goto :goto_4

    .line 10
    :cond_6
    aget-char p2, v0, v6

    if-ne p2, v10, :cond_7

    move p2, v3

    goto :goto_4

    .line 11
    :cond_7
    aget-char p2, v0, v6

    if-ne p2, v9, :cond_8

    move p2, v8

    goto :goto_4

    .line 12
    :cond_8
    aget-char p2, v0, v6

    add-int/lit8 p2, p2, -0x30

    :cond_9
    :goto_4
    const/4 v6, 0x4

    add-int v8, v6, v4

    shl-int/lit8 v6, v7, 0x4

    or-int/2addr p2, v6

    .line 13
    aput p2, v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 14
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
