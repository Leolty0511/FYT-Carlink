.class public Lk0/np;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/np;->c:I

    const/4 v1, 0x7

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

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/np;->d:[[I

    .line 4
    iput v0, p0, Lk0/np;->e:I

    .line 5
    new-instance v0, Lk0/np$a;

    invoke-direct {v0, p0}, Lk0/np$a;-><init>(Lk0/np;)V

    iput-object v0, p0, Lk0/np;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/np$b;

    invoke-direct {v0, p0}, Lk0/np$b;-><init>(Lk0/np;)V

    iput-object v0, p0, Lk0/np;->g:Ljava/lang/Runnable;

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
        0x5
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x2

    .line 9
    iput v2, v0, Lk0/mt;->h:I

    goto :goto_0

    .line 10
    :cond_0
    iput v2, v0, Lk0/mt;->h:I

    .line 11
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/np;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    const/4 v6, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_3

    const/16 p3, 0x30

    if-eq v0, p3, :cond_2

    const/16 p3, 0x31

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/2addr p2, v6

    .line 2
    aget-byte p1, p1, p2

    if-eqz p1, :cond_1

    .line 3
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-static {v4}, Lk0/qt;->a(I)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 p3, p2, 0x3

    .line 5
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x1545

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_3

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    add-int/2addr p2, v6

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const-string p2, "persist.syu.reversefrontdoor"

    .line 8
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 9
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 10
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 11
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 12
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 13
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x4

    .line 14
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 15
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 16
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 19
    iput p2, p0, Lk0/np;->c:I

    move p2, v4

    .line 20
    :goto_1
    iget-object p3, p0, Lk0/np;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_8

    .line 21
    iget v0, p0, Lk0/np;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_7

    if-eqz v0, :cond_8

    .line 22
    iput p2, p0, Lk0/np;->b:I

    goto :goto_2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_9

    .line 23
    array-length p1, p3

    if-ge p2, p1, :cond_b

    .line 24
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_9
    if-nez p1, :cond_b

    .line 25
    iget p1, p0, Lk0/np;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v3, :cond_a

    .line 26
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 27
    :cond_a
    iput v3, p0, Lk0/np;->b:I

    :cond_b
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/np;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/np;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x7

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
    .locals 11

    const/16 p3, 0x3eb

    const/4 p4, 0x4

    const/4 v0, 0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x405

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2
    aget p3, p2, v0

    mul-int/lit16 p3, p3, 0x500

    invoke-static {}, La/f;->w()I

    move-result v1

    div-int/2addr p3, v1

    .line 3
    aget v1, p2, p1

    mul-int/lit16 v1, v1, 0x2d0

    invoke-static {}, La/f;->i()I

    move-result v2

    div-int/2addr v1, v2

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " touch_x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "touch_y =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ObjApp.getHeight()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/f;->i()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    aget v3, p2, v2

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/16 v7, 0xa4

    const/16 v8, 0xe3

    const/4 v9, 0x5

    const/16 v10, 0x8

    if-nez v3, :cond_1

    new-array p2, v10, [I

    aput v8, p2, v2

    aput v7, p2, v0

    aput v9, p2, p1

    aput v0, p2, v6

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p4

    and-int/lit16 p1, p3, 0xff

    aput p1, p2, v9

    shr-int/lit8 p1, v1, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v5

    and-int/lit16 p1, v1, 0xff

    aput p1, p2, v4

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_1
    aget p2, p2, v2

    if-ne p2, v0, :cond_4

    new-array p2, v10, [I

    aput v8, p2, v2

    aput v7, p2, v0

    aput v9, p2, p1

    aput v2, p2, v6

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p4

    and-int/lit16 p1, p3, 0xff

    aput p1, p2, v9

    shr-int/lit8 p1, v1, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v5

    and-int/lit16 p1, v1, 0xff

    aput p1, p2, v4

    .line 8
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 9
    array-length p1, p2

    if-lez p1, :cond_4

    .line 10
    sget p1, Lu0/b;->o:I

    if-ne p1, v0, :cond_3

    new-array p1, p4, [I

    .line 11
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    .line 12
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x5b
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x5b
        0x1
        0x1
    .end array-data
.end method
