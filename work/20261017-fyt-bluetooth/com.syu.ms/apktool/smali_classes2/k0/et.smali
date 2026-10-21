.class public Lk0/et;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public A:[[B

.field public B:[B

.field public C:I

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:J

.field public G:J

.field public H:I

.field public I:I

.field public J:I

.field public b:B

.field public c:B

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:B

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Landroid/media/SoundPool;

.field public u:I

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:I

.field public y:Ljava/lang/Runnable;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->l:I

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lk0/et;->v:I

    .line 8
    new-instance v0, Lk0/et$a;

    invoke-direct {v0, p0}, Lk0/et$a;-><init>(Lk0/et;)V

    iput-object v0, p0, Lk0/et;->w:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/et$b;

    invoke-direct {v0, p0}, Lk0/et$b;-><init>(Lk0/et;)V

    iput-object v0, p0, Lk0/et;->y:Ljava/lang/Runnable;

    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v3, 0x7

    new-array v4, v3, [B

    .line 10
    fill-array-data v4, :array_0

    aput-object v4, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iput-object v0, p0, Lk0/et;->A:[[B

    new-array v0, v2, [B

    .line 11
    fill-array-data v0, :array_4

    iput-object v0, p0, Lk0/et;->B:[B

    .line 12
    new-instance v0, Lk0/et$c;

    invoke-direct {v0, p0}, Lk0/et$c;-><init>(Lk0/et;)V

    iput-object v0, p0, Lk0/et;->D:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/et$d;

    invoke-direct {v0, p0}, Lk0/et$d;-><init>(Lk0/et;)V

    iput-object v0, p0, Lk0/et;->E:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static synthetic a3(Lk0/et;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/et;->o3()V

    return-void
.end method

.method public static synthetic b3(Lk0/et;BB)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/et;->l3(BB)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk0/et;->m3()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/16 v3, 0x44

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput v2, v1, v2

    const/16 v3, 0x45

    .line 3
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput v0, v1, v2

    const/16 v2, 0x46

    .line 4
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    sget v1, Ly0/f;->L:I

    iput v1, p0, Lk0/et;->x:I

    .line 6
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lk0/et;->t:Landroid/media/SoundPool;

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    const v3, 0x7f030057

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 8
    iget-object v1, p0, Lk0/et;->t:Landroid/media/SoundPool;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    const v3, 0x7f030058

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 9
    sget-object v1, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/et;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/2addr p2, v4

    .line 2
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/et;->b:B

    const/16 p1, 0x44

    new-array p2, v9, [I

    aput v9, p2, v8

    .line 3
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x42

    new-array p2, v9, [I

    .line 4
    iget-byte p3, p0, Lk0/et;->b:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x43

    new-array p2, v9, [I

    .line 5
    iget-byte p3, p0, Lk0/et;->b:B

    and-int/2addr p3, v7

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :pswitch_1
    new-array p3, v9, [I

    add-int/lit8 v0, p2, 0x2

    .line 6
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    aput p1, p3, v8

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    .line 7
    :pswitch_2
    invoke-static {p1, p2, p3}, Lo1/b0;->h([BII)V

    const/16 p3, 0x46

    new-array v0, v9, [I

    aput v9, v0, v8

    .line 8
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x2

    .line 9
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/et;->b:B

    add-int/lit8 v0, p2, 0x3

    .line 10
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/et;->c:B

    add-int/lit8 v7, p2, 0x4

    .line 11
    aget-byte v7, p1, v7

    iput-byte v7, p0, Lk0/et;->d:B

    add-int/lit8 v7, p2, 0x5

    .line 12
    aget-byte v7, p1, v7

    iput-byte v7, p0, Lk0/et;->e:B

    add-int/lit8 v7, p2, 0x6

    .line 13
    aget-byte v7, p1, v7

    iput-byte v7, p0, Lk0/et;->f:B

    add-int/lit8 v7, p2, 0x7

    .line 14
    aget-byte v7, p1, v7

    iput-byte v7, p0, Lk0/et;->g:B

    add-int/lit8 v7, p2, 0x8

    .line 15
    aget-byte v7, p1, v7

    iput-byte v7, p0, Lk0/et;->h:B

    add-int/lit8 p2, p2, 0x9

    .line 16
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/et;->i:B

    .line 17
    invoke-virtual {p0, p3, v0}, Lk0/et;->h3(BB)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    iput-boolean v9, p0, Lk0/et;->z:Z

    const-string p1, "\u65b0\u7684\u8b66\u62a5\u4fe1\u606f\uff0c\u9700\u8981\u63d0\u9192"

    .line 19
    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/et;->E:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    :cond_0
    iget-byte p1, p0, Lk0/et;->b:B

    and-int/lit8 p2, p1, 0xf

    iput p2, p0, Lk0/et;->m:I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v2

    .line 22
    iput p3, p0, Lk0/et;->n:I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v9

    .line 23
    iput p3, p0, Lk0/et;->o:I

    if-le p2, v6, :cond_1

    return-void

    .line 24
    :cond_1
    iget-object p3, p0, Lk0/et;->A:[[B

    aget-object v0, p3, p2

    aput-byte p1, v0, v8

    .line 25
    aget-object p1, p3, p2

    iget-byte v0, p0, Lk0/et;->c:B

    aput-byte v0, p1, v9

    .line 26
    aget-object p1, p3, p2

    iget-byte v0, p0, Lk0/et;->d:B

    aput-byte v0, p1, v4

    .line 27
    aget-object p1, p3, p2

    iget-byte v0, p0, Lk0/et;->e:B

    aput-byte v0, p1, v6

    .line 28
    aget-object p1, p3, p2

    iget-byte v0, p0, Lk0/et;->f:B

    aput-byte v0, p1, v5

    .line 29
    aget-object p1, p3, p2

    iget-byte v0, p0, Lk0/et;->g:B

    aput-byte v0, p1, v3

    .line 30
    aget-object p1, p3, p2

    iget-byte v0, p0, Lk0/et;->h:B

    aput-byte v0, p1, v1

    .line 31
    aget-object p1, p3, p2

    invoke-virtual {p0, p1, v8}, Lk0/et;->p3([BZ)Z

    goto/16 :goto_1

    :pswitch_3
    const/16 p3, 0x45

    new-array v0, v9, [I

    aput v9, v0, v8

    .line 32
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x2

    .line 33
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/et;->b:B

    add-int/2addr p2, v6

    .line 34
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/et;->c:B

    .line 35
    iget p1, p0, Lk0/et;->s:I

    shr-int/lit8 p2, p3, 0x4

    and-int/2addr p2, v7

    if-eq p1, p2, :cond_3

    shr-int/lit8 p1, p3, 0x4

    and-int/2addr p1, v7

    if-eq p1, v6, :cond_2

    shr-int/lit8 p1, p3, 0x4

    and-int/2addr p1, v7

    if-ne p1, v5, :cond_3

    .line 36
    :cond_2
    iput v8, p0, Lk0/et;->u:I

    .line 37
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/et;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    :cond_3
    iget-byte p1, p0, Lk0/et;->b:B

    shr-int/2addr p1, v5

    and-int/2addr p1, v7

    iput p1, p0, Lk0/et;->s:I

    .line 39
    iget p1, p0, Lk0/et;->v:I

    iget-byte p2, p0, Lk0/et;->c:B

    and-int/2addr p2, v7

    if-eq p1, p2, :cond_4

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", \u6807\u5fd7\u8b66\u544a\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, p0, Lk0/et;->c:B

    and-int/2addr p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 41
    iget-byte p1, p0, Lk0/et;->c:B

    and-int/2addr p1, v7

    iput p1, p0, Lk0/et;->v:I

    :cond_4
    const/16 p1, 0x3f

    new-array p2, v9, [I

    .line 42
    iget-byte p3, p0, Lk0/et;->b:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x40

    new-array p2, v9, [I

    .line 43
    iget-byte p3, p0, Lk0/et;->c:B

    and-int/2addr p3, v7

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 44
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/et;->b:B

    add-int/lit8 v0, p2, 0x3

    .line 45
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/et;->c:B

    add-int/lit8 v0, p2, 0x4

    .line 46
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/et;->d:B

    add-int/lit8 v0, p2, 0x5

    .line 47
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/et;->e:B

    add-int/lit8 v0, p2, 0x6

    .line 48
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/et;->f:B

    add-int/lit8 v0, p2, 0x7

    .line 49
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/et;->g:B

    add-int/lit8 v0, p2, 0x8

    .line 50
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/et;->h:B

    add-int/lit8 p2, p2, 0x9

    .line 51
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/et;->i:B

    const/16 p1, 0xc

    new-array p2, v9, [I

    shr-int/2addr p3, v1

    and-int/2addr p3, v9

    aput p3, p2, v8

    .line 52
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 53
    iput v8, p0, Lk0/et;->j:I

    iput v8, p0, Lk0/et;->k:I

    iput v8, p0, Lk0/et;->l:I

    .line 54
    iget-byte p1, p0, Lk0/et;->b:B

    shr-int/lit8 p2, p1, 0x3

    and-int/2addr p2, v2

    if-eqz p2, :cond_8

    if-eq p2, v9, :cond_7

    if-eq p2, v4, :cond_6

    if-eq p2, v6, :cond_5

    goto :goto_0

    .line 55
    :cond_5
    iput v9, p0, Lk0/et;->l:I

    .line 56
    iput v9, p0, Lk0/et;->j:I

    goto :goto_0

    .line 57
    :cond_6
    iput v9, p0, Lk0/et;->l:I

    goto :goto_0

    .line 58
    :cond_7
    iput v9, p0, Lk0/et;->k:I

    .line 59
    iput v9, p0, Lk0/et;->l:I

    goto :goto_0

    .line 60
    :cond_8
    iput v9, p0, Lk0/et;->k:I

    :goto_0
    const/16 p2, 0xd

    new-array p3, v9, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v9

    aput p1, p3, v8

    .line 61
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array p2, v9, [I

    .line 62
    iget-byte p3, p0, Lk0/et;->b:B

    shr-int/2addr p3, v6

    and-int/2addr p3, v6

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x12

    new-array p2, v9, [I

    .line 63
    iget p3, p0, Lk0/et;->j:I

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x10

    new-array p2, v9, [I

    .line 64
    iget p3, p0, Lk0/et;->k:I

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x11

    new-array p2, v9, [I

    .line 65
    iget p3, p0, Lk0/et;->l:I

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x18

    new-array p2, v9, [I

    .line 66
    iget-byte p3, p0, Lk0/et;->b:B

    shr-int/2addr p3, v4

    and-int/2addr p3, v9

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xe

    new-array p2, v9, [I

    .line 67
    iget-byte p3, p0, Lk0/et;->b:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v9

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v9, [I

    .line 68
    iget-byte p2, p0, Lk0/et;->e:B

    shr-int/2addr p2, v3

    and-int/2addr p2, v9

    aput p2, p1, v8

    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x16

    new-array p2, v9, [I

    .line 69
    iget-byte p3, p0, Lk0/et;->e:B

    and-int/2addr p3, v7

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x15

    new-array p2, v9, [I

    .line 70
    iget-byte p3, p0, Lk0/et;->f:B

    and-int/2addr p3, v7

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xb

    new-array p2, v9, [I

    .line 71
    iget-byte p3, p0, Lk0/et;->g:B

    shr-int/2addr p3, v6

    and-int/2addr p3, v9

    aput p3, p2, v8

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/et;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/et;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x49

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
    .locals 8

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cmdcode:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo1/b0;->i(Ljava/lang/String;)V

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, p4, :cond_0

    goto/16 :goto_3

    :cond_0
    move p1, v2

    .line 2
    :goto_0
    iget-object p2, p0, Lk0/et;->A:[[B

    array-length p3, p2

    if-gt p1, p3, :cond_8

    .line 3
    aget-object p2, p2, p1

    aget-byte p2, p2, v2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 4
    invoke-virtual {p0}, Lk0/et;->m3()V

    goto/16 :goto_3

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_UPDATE_TPMS "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ui"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p2, p0, Lk0/et;->A:[[B

    aget-object p2, p2, p1

    invoke-virtual {p0, p2, v3}, Lk0/et;->p3([BZ)Z

    const-wide/16 p2, 0x1f4

    .line 7
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "\u6253\u5f00360\u5168\u666f"

    .line 9
    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v3}, Lk0/et;->n3(I)V

    goto/16 :goto_3

    .line 11
    :cond_3
    invoke-virtual {p0, p2, v0}, Lk0/et;->f3([II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 12
    aget p1, p2, v2

    iput p1, p0, Lk0/et;->J:I

    .line 13
    aget p1, p2, v3

    mul-int/lit16 p1, p1, 0x320

    div-int/lit16 p1, p1, 0x400

    iput p1, p0, Lk0/et;->H:I

    .line 14
    aget p1, p2, v1

    mul-int/lit16 p1, p1, 0x1e0

    div-int/lit16 p1, p1, 0x258

    iput p1, p0, Lk0/et;->I:I

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u53d1\u9001\u5750\u6807 x\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " y:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " \u89e6\u6478\u72b6\u6001\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 16
    aget p1, p2, v2

    iget p3, p0, Lk0/et;->H:I

    iget p4, p0, Lk0/et;->I:I

    invoke-virtual {p0, p1, p3, p4}, Lk0/et;->c3(III)V

    .line 17
    aget p1, p2, v3

    const/16 p3, 0x1fe

    if-lt p1, p3, :cond_8

    aget p1, p2, v3

    const/16 p3, 0x244

    if-gt p1, p3, :cond_8

    aget p1, p2, v1

    const/16 p4, 0x212

    if-lt p1, p4, :cond_8

    aget p1, p2, v1

    if-gt p1, p3, :cond_8

    .line 18
    invoke-virtual {p0, v2}, Lk0/et;->n3(I)V

    goto/16 :goto_3

    .line 19
    :cond_4
    invoke-virtual {p0, p2, v3}, Lk0/et;->f3([II)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x91

    aput p3, p1, v3

    aput v3, p1, v1

    .line 20
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 21
    :cond_5
    invoke-virtual {p0, p2, v1}, Lk0/et;->f3([II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    aget p1, p2, v3

    if-ne p1, v3, :cond_6

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lk0/et;->F:J

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6309\u4e0b\u65f6\u95f4\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lk0/et;->F:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_6
    aget p1, p2, v3

    if-nez p1, :cond_7

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lk0/et;->G:J

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------\u62ac\u8d77\u65f6\u95f4\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lk0/et;->G:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " \u95f4\u9694\u65f6\u95f4\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lk0/et;->G:J

    iget-wide v6, p0, Lk0/et;->F:J

    sub-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 28
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001\u7a7a\u8c03\u547d\u4ee4\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", \u89e6\u6478\u72b6\u6001\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, 0x81

    aput p3, p1, v3

    aput v1, p1, v1

    .line 29
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final c3(III)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x82

    aput v3, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x6

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    shl-int/2addr p1, v1

    aput p1, v0, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x5

    aput p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    aput p1, v0, v3

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput p1, v0, p2

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x8

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public d3()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e3(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g3(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final h3(BB)Z
    .locals 6

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    and-int/lit8 v0, p1, 0x3

    .line 1
    iget-object v1, p0, Lk0/et;->A:[[B

    aget-object v3, v1, v0

    iput-object v3, p0, Lk0/et;->B:[B

    .line 2
    aget-object v4, v1, v0

    aget-byte v4, v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    aget-byte v4, v3, v2

    if-ne p1, v4, :cond_2

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    if-eq p2, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 3
    :cond_2
    :goto_0
    aget-object v0, v1, v0

    aget-byte v0, v0, v2

    if-ne v0, v5, :cond_3

    const-string v0, "-----------\u7b2c\u4e00\u6b21\u8d4b\u503c"

    .line 4
    invoke-static {v0}, Lo1/b0;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "------------\u72b6\u6001\u53d1\u751f\u6539\u53d8"

    .line 5
    invoke-static {v0}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-virtual {p0, p1, p2}, Lk0/et;->l3(BB)Z

    move-result p1

    return p1
.end method

.method public final i3(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j3(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final k3(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final l3(BB)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7cfb\u7edf\u72b6\u6001\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x7

    invoke-virtual {p0, p1}, Lk0/et;->i3(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \u7535\u6c60\u7535\u91cf\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lk0/et;->e3(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " \u6e29\u5ea6\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Lk0/et;->j3(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " \u80ce\u538b\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, p2, 0x2

    and-int/lit8 v3, v3, 0x3

    .line 2
    invoke-virtual {p0, v3}, Lk0/et;->k3(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " \u662f\u5426\u6f0f\u6c14\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, p2}, Lk0/et;->g3(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lk0/et;->i3(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lk0/et;->e3(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Lk0/et;->j3(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Lk0/et;->k3(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lk0/et;->g3(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final m3()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    const/16 v4, 0x34

    .line 1
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput v3, v1, v2

    const/16 v4, 0x35

    .line 2
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput v3, v1, v2

    const/16 v4, 0x3e

    .line 3
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v0, [I

    aput v3, v0, v2

    const/16 v1, 0x47

    .line 4
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    return-void
.end method

.method public n3(I)V
    .locals 1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x79
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x78
    .end array-data
.end method

.method public final o3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk0/et;->d3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.canbus.lianyun.ActivityTpms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "=====================\u8df3\u8f6c\u80ce\u538b\u754c\u9762"

    .line 2
    invoke-static {v0}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.syu.canbus"

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lo1/u;->e(Landroid/content/Intent;)I

    .line 6
    iget v0, p0, Lk0/et;->C:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 7
    iput v1, p0, Lk0/et;->C:I

    goto :goto_0

    .line 8
    :cond_0
    iput v2, p0, Lk0/et;->C:I

    :goto_0
    const/16 v0, 0x48

    new-array v1, v1, [I

    .line 9
    iget v3, p0, Lk0/et;->C:I

    aput v3, v1, v2

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1
    const-string v0, "\u5df2\u7ecf\u5728\u80ce\u538b\u754c\u9762"

    .line 10
    invoke-static {v0}, Lo1/b0;->i(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final p3([BZ)Z
    .locals 10

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lk0/et;->m:I

    const/4 v0, 0x1

    .line 3
    aget-byte v1, p1, v0

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    const/4 v3, 0x3

    and-int/2addr v1, v3

    iput v1, p0, Lk0/et;->q:I

    .line 4
    aget-byte v1, p1, v0

    const/4 v4, 0x2

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    iput v1, p0, Lk0/et;->r:I

    .line 5
    aget-byte v1, p1, v0

    const/4 v5, 0x6

    shr-int/2addr v1, v5

    and-int/2addr v1, v3

    iput v1, p0, Lk0/et;->p:I

    const/16 v1, 0x47

    new-array v6, v0, [I

    .line 6
    aget-byte v7, p1, p2

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v6, p2

    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    .line 7
    iget v1, p0, Lk0/et;->n:I

    if-eq v1, v0, :cond_2

    if-eq v1, v4, :cond_2

    iget v1, p0, Lk0/et;->o:I

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x34

    new-array v6, v0, [I

    .line 8
    iget v7, p0, Lk0/et;->m:I

    shl-int/lit8 v7, v7, 0x18

    iget v8, p0, Lk0/et;->q:I

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v2

    const/4 v9, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xf0

    shr-int/2addr v9, v2

    or-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v6, p2

    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v6, v0, [I

    .line 9
    iget v7, p0, Lk0/et;->m:I

    shl-int/lit8 v7, v7, 0x18

    iget v8, p0, Lk0/et;->r:I

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v2, v3, 0x4

    or-int/2addr v2, v4

    or-int/2addr v2, v7

    aput v2, v6, p2

    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3e

    new-array v2, v0, [I

    .line 10
    iget v3, p0, Lk0/et;->m:I

    shl-int/lit8 v3, v3, 0x18

    iget v4, p0, Lk0/et;->p:I

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v3

    aput p1, v2, p2

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    return v0

    :cond_2
    :goto_0
    return p2
.end method
