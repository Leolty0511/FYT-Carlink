.class public Lk0/ej;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static v:I

.field public static w:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public final e:I

.field public final f:I

.field public g:Lo1/g0;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:I

.field public q:Z

.field public r:Ljava/lang/Runnable;

.field public s:B

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ej;->c:I

    const/4 v1, 0x2

    new-array v2, v1, [[I

    new-array v3, v1, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v2, v0

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iput-object v2, p0, Lk0/ej;->d:[[I

    .line 4
    iput v4, p0, Lk0/ej;->e:I

    .line 5
    iput v1, p0, Lk0/ej;->f:I

    .line 6
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/ej;->g:Lo1/g0;

    .line 7
    iput v0, p0, Lk0/ej;->h:I

    .line 8
    iput v0, p0, Lk0/ej;->i:I

    .line 9
    iput v0, p0, Lk0/ej;->j:I

    .line 10
    iput v0, p0, Lk0/ej;->k:I

    .line 11
    new-instance v1, Lk0/ej$a;

    invoke-direct {v1, p0}, Lk0/ej$a;-><init>(Lk0/ej;)V

    iput-object v1, p0, Lk0/ej;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/ej$b;

    invoke-direct {v1, p0}, Lk0/ej$b;-><init>(Lk0/ej;)V

    iput-object v1, p0, Lk0/ej;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/ej$c;

    invoke-direct {v1, p0}, Lk0/ej$c;-><init>(Lk0/ej;)V

    iput-object v1, p0, Lk0/ej;->n:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lk0/ej$d;

    invoke-direct {v1, p0}, Lk0/ej$d;-><init>(Lk0/ej;)V

    iput-object v1, p0, Lk0/ej;->o:Ljava/lang/Runnable;

    .line 15
    iput v0, p0, Lk0/ej;->p:I

    .line 16
    iput-boolean v0, p0, Lk0/ej;->q:Z

    .line 17
    new-instance v0, Lk0/ej$e;

    invoke-direct {v0, p0}, Lk0/ej$e;-><init>(Lk0/ej;)V

    iput-object v0, p0, Lk0/ej;->r:Ljava/lang/Runnable;

    const/4 v0, 0x5

    .line 18
    iput-byte v0, p0, Lk0/ej;->s:B

    .line 19
    new-instance v0, Lk0/ej$f;

    invoke-direct {v0, p0}, Lk0/ej$f;-><init>(Lk0/ej;)V

    iput-object v0, p0, Lk0/ej;->t:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lk0/ej$g;

    invoke-direct {v0, p0}, Lk0/ej$g;-><init>(Lk0/ej;)V

    iput-object v0, p0, Lk0/ej;->u:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x18
        0x4
    .end array-data
.end method

.method public static synthetic a3(Lk0/ej;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ej;->u:Ljava/lang/Runnable;

    return-object p0
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->j:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->l:I

    .line 8
    iget-object v0, p0, Lk0/ej;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 9
    iget-object v0, p0, Lk0/ej;->g:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ej;->b3(I)V

    .line 10
    iget-object v0, p0, Lk0/ej;->g:Lo1/g0;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ej;->c3(I)V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ej;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v2, p0, Lk0/ej;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/ej;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v2, p0, Lk0/ej;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->L:Lo1/y;

    iget-object v2, p0, Lk0/ej;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/ej;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, -0x5f

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/16 p3, 0x8

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    add-int/lit8 v0, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    aput v0, p3, v6

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    add-int/lit8 p2, p2, 0xa

    .line 4
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, p3, v6

    const/4 p1, 0x7

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    .line 5
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 6
    aget-byte v0, p1, p3

    if-eq v0, v7, :cond_0

    aget-byte v0, p1, p3

    if-eq v0, v5, :cond_0

    aget-byte p3, p1, p3

    if-eq p3, v3, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    iget p3, p0, Lk0/ej;->h:I

    add-int/2addr p2, v3

    aget-byte v0, p1, p2

    if-eq p3, v0, :cond_c

    .line 8
    aget-byte p1, p1, p2

    iput p1, p0, Lk0/ej;->h:I

    const/16 p2, 0xd

    const/4 p3, 0x0

    if-ne p1, v7, :cond_1

    .line 9
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    new-array v0, v7, [I

    aput v7, v0, v6

    invoke-static {p1, p2, v0, p3, p3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 10
    :cond_1
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    new-array v0, v7, [I

    aput v6, v0, v6

    invoke-static {p1, p2, v0, p3, p3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    const/16 v0, 0x10

    if-eq p3, v0, :cond_b

    const/16 v0, 0x12

    const/4 v1, 0x4

    if-eq p3, v0, :cond_9

    const/16 v0, 0x17

    if-eq p3, v0, :cond_4

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_3

    goto/16 :goto_3

    :cond_3
    add-int/2addr p2, v3

    .line 12
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    .line 13
    iput p1, p0, Lk0/ej;->i:I

    const/16 p2, 0x9

    new-array p3, v7, [I

    aput p1, p3, v6

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    if-ne p1, v5, :cond_c

    .line 15
    sget-object p1, La/b;->Q:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 16
    sget-object p1, La/b;->R:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    add-int/lit8 p3, p2, 0x3

    .line 17
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 19
    iput p2, p0, Lk0/ej;->c:I

    move p2, v6

    .line 20
    :goto_0
    iget-object p3, p0, Lk0/ej;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 21
    iget v0, p0, Lk0/ej;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v6

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 22
    iput p2, p0, Lk0/ej;->b:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    and-int/2addr p1, v4

    if-ne p1, v7, :cond_7

    .line 23
    array-length p1, p3

    if-ge p2, p1, :cond_c

    .line 24
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_3

    :cond_7
    if-nez p1, :cond_c

    .line 25
    iget p1, p0, Lk0/ej;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v4, :cond_8

    .line 26
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 27
    :cond_8
    iput v4, p0, Lk0/ej;->b:I

    goto :goto_3

    :cond_9
    add-int/2addr p2, v3

    .line 28
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    const-string p2, "persist.syu.reversefrontdoor"

    .line 29
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 30
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 31
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 32
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 33
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 34
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 35
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v7

    aput p3, p2, v6

    const/4 p3, 0x5

    .line 36
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 37
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array p3, v7, [I

    add-int/2addr p2, v3

    .line 38
    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v7

    aput p1, p3, v6

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    :cond_c
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ej;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ej;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ej;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/ej;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ej;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/ej;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->L:Lo1/y;

    iget-object v1, p0, Lk0/ej;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ej;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xe

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

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    .line 2
    iget p1, p0, Lk0/ej;->i:I

    if-ne p1, v3, :cond_5

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p4, p1, v2

    const/16 p4, 0x6b

    aput p4, p1, v4

    const/4 p4, 0x6

    aput p4, p1, v3

    aput v3, p1, v1

    .line 3
    aget v5, p2, v2

    aput v5, p1, p3

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v3

    aput p3, p1, p4

    const/4 p3, 0x7

    aget p2, p2, v1

    aput p2, p1, p3

    const/16 p2, 0x8

    aput v2, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 4
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x69

    aput p4, p1, v4

    aput v3, p1, v3

    .line 5
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 6
    array-length p1, p2

    if-lez p1, :cond_5

    .line 7
    aget p1, p2, v2

    const/16 v5, 0x17

    if-ne p1, v5, :cond_3

    .line 8
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ej;->b3(I)V

    goto :goto_0

    .line 9
    :cond_3
    aget p1, p2, v2

    const/16 v5, 0x16

    if-ne p1, v5, :cond_4

    .line 10
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ej;->c3(I)V

    goto :goto_0

    :cond_4
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x6a

    aput p4, p1, v4

    aput v3, p1, v3

    .line 11
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final b3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xa

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ej;->v:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0x6a

    aput v3, v1, v0

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x17

    aput v4, v1, v3

    const/4 v3, 0x4

    aput p1, v1, v3

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/ej;->g:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ej;->v:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/ej;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final c3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xb

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ej;->w:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0x6a

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v3, 0x3

    const/16 v4, 0x16

    aput v4, v1, v3

    const/4 v3, 0x4

    aput p1, v1, v3

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/ej;->g:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ej;->w:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/ej;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
