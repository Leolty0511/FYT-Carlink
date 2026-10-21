.class public Lo0/a;
.super Lo0/h;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo0/h;-><init>()V

    .line 2
    new-instance v0, Lo0/a$a;

    invoke-direct {v0, p0}, Lo0/a$a;-><init>(Lo0/a;)V

    iput-object v0, p0, Lo0/a;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lo0/a$b;

    invoke-direct {v0, p0}, Lo0/a$b;-><init>(Lo0/a;)V

    iput-object v0, p0, Lo0/a;->b:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lo0/a$c;

    invoke-direct {v0, p0}, Lo0/a$c;-><init>(Lo0/a;)V

    iput-object v0, p0, Lo0/a;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lo0/a$d;

    invoke-direct {v0, p0}, Lo0/a$d;-><init>(Lo0/a;)V

    iput-object v0, p0, Lo0/a;->d:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lo0/a$e;

    invoke-direct {v0, p0}, Lo0/a$e;-><init>(Lo0/a;)V

    iput-object v0, p0, Lo0/a;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 2

    .line 1
    sget v0, Lo0/e;->E:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x60

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {v1, v0}, Lz/k;->n(II)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {v1, v0}, Lz/k;->n(II)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-static {v1, v0}, Lz/k;->n(II)V

    :goto_0
    return-void
.end method

.method public B()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x2e

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public C(II)V
    .locals 5

    .line 1
    div-int/lit8 v0, p1, 0x64

    int-to-byte v0, v0

    .line 2
    rem-int/lit8 p1, p1, 0x64

    int-to-byte p1, p1

    .line 3
    div-int/lit8 v1, p2, 0x64

    int-to-byte v1, v1

    .line 4
    rem-int/lit8 p2, p2, 0x64

    int-to-byte p2, p2

    const/16 v2, 0x8

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    const/16 v3, 0x55

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    aput-byte v0, v2, v3

    const/4 v3, 0x4

    aput-byte p1, v2, v3

    const/4 v3, 0x5

    aput-byte v1, v2, v3

    const/4 v3, 0x6

    aput-byte p2, v2, v3

    rsub-int v0, v0, 0xab

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    int-to-byte p1, v0

    const/4 p2, 0x7

    aput-byte p1, v2, p2

    .line 5
    sget-object p1, Lz/a;->c:Lo1/e0;

    invoke-virtual {p1, v2}, Lo1/e0;->i([B)V

    return-void
.end method

.method public D(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lo0/e;->K:I

    .line 2
    invoke-static {v0}, Lo0/g;->S(I)V

    add-int/lit8 p1, p1, 0x1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x70

    and-int/lit16 p1, p1, 0xff

    .line 3
    invoke-static {v0, p1}, Lz/k;->n(II)V

    return-void
.end method

.method public E()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x61

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c([BII)V
    .locals 7

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v0, :cond_b

    const/16 v2, 0x50

    if-eq p3, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 p3, p2, 0x1

    .line 2
    aget-byte v2, p1, p3

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    aget-byte p3, p1, p3

    const/4 v2, 0x3

    const/16 v6, -0x7b

    if-eq p3, v5, :cond_4

    if-eq p3, v4, :cond_3

    if-eq p3, v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    sget p3, Lo0/e;->i:I

    if-eqz p3, :cond_5

    move p3, v0

    goto :goto_1

    .line 5
    :cond_3
    sget p3, Lo0/e;->j:I

    if-eqz p3, :cond_5

    move p3, v2

    goto :goto_1

    .line 6
    :cond_4
    sget p3, Lo0/e;->h:I

    if-eqz p3, :cond_5

    move p3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move p3, v6

    :goto_1
    if-eq p3, v6, :cond_6

    .line 7
    sget v0, Lo0/e;->G:I

    if-eqz v0, :cond_e

    if-eq v0, p3, :cond_e

    return-void

    .line 8
    :cond_6
    sget p1, Lo0/e;->G:I

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_2

    .line 9
    :cond_7
    sget p1, Lo0/e;->j:I

    if-eqz p1, :cond_a

    .line 10
    sget p1, Lo0/e;->G:I

    invoke-virtual {p0, p1}, Lo0/a;->z(I)V

    goto :goto_2

    .line 11
    :cond_8
    sget p1, Lo0/e;->i:I

    if-eqz p1, :cond_a

    .line 12
    sget p1, Lo0/e;->G:I

    invoke-virtual {p0, p1}, Lo0/a;->z(I)V

    goto :goto_2

    .line 13
    :cond_9
    sget p1, Lo0/e;->h:I

    if-eqz p1, :cond_a

    .line 14
    sget p1, Lo0/e;->G:I

    invoke-virtual {p0, p1}, Lo0/a;->z(I)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    add-int/lit8 p3, p2, 0x1

    .line 15
    aget-byte p3, p1, p3

    const/16 v2, 0x5b

    if-eq p3, v2, :cond_c

    goto :goto_4

    .line 16
    :cond_c
    sget p3, Lo0/e;->H:I

    if-ne p3, v1, :cond_e

    sget p3, Lo0/e;->h:I

    if-eqz p3, :cond_e

    .line 17
    sget p3, Lo0/e;->I:I

    if-eq p3, v0, :cond_d

    .line 18
    invoke-static {v0}, Lo0/g;->z(I)V

    const-wide/16 v2, 0xc8

    .line 19
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 20
    invoke-virtual {p3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 21
    :cond_d
    :goto_3
    invoke-static {}, Lo0/g;->l()V

    .line 22
    :cond_e
    :goto_4
    aget-byte p3, p1, p2

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    invoke-static {p3, p1}, Lz/k;->n(II)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lo0/a;->b:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lo0/a;->c:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lo0/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->k:Lo1/y;

    iget-object v1, p0, Lo0/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lo0/a;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lo0/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lo0/a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lo0/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lo0/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->k:Lo1/y;

    iget-object v1, p0, Lo0/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lo0/a;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lo0/g;->L(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x20
    .end array-data
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x22

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x23

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x2e

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x5d

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x24

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x60

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x28

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public q(I)V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x5c

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public s(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1d

    .line 1
    invoke-static {v0, p1}, Lz/k;->n(II)V

    goto :goto_0

    .line 2
    :cond_1
    sget p1, Lo0/e;->P:I

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lo0/a;->s(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p1, Lo0/e;->P:I

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0, v0}, Lo0/a;->s(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x12

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x2f

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x20

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x30

    .line 1
    invoke-static {v0, v1}, Lz/k;->n(II)V

    return-void
.end method

.method public z(I)V
    .locals 5

    const/16 v0, 0x50

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget v2, Lo0/e;->j:I

    if-eqz v2, :cond_3

    .line 2
    sput p1, Lo0/e;->G:I

    const/4 v2, 0x6

    .line 3
    invoke-static {v0, v2}, Lz/k;->n(II)V

    .line 4
    sget v0, Lo0/e;->H:I

    if-eq v0, p1, :cond_3

    .line 5
    invoke-static {v1}, Lo0/g;->z(I)V

    goto :goto_0

    .line 6
    :cond_1
    sget v2, Lo0/e;->i:I

    if-eqz v2, :cond_3

    .line 7
    sput p1, Lo0/e;->G:I

    const/4 v2, 0x7

    .line 8
    invoke-static {v0, v2}, Lz/k;->n(II)V

    .line 9
    sget v0, Lo0/e;->H:I

    if-eq v0, p1, :cond_3

    .line 10
    invoke-static {v1}, Lo0/g;->z(I)V

    goto :goto_0

    .line 11
    :cond_2
    sget v2, Lo0/e;->h:I

    if-eqz v2, :cond_3

    .line 12
    sput p1, Lo0/e;->G:I

    const/4 v2, 0x5

    .line 13
    invoke-static {v0, v2}, Lz/k;->n(II)V

    .line 14
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v2, Lo0/a$f;

    invoke-direct {v2, p0}, Lo0/a$f;-><init>(Lo0/a;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    sget v0, Lo0/e;->H:I

    if-eq v0, p1, :cond_3

    .line 16
    invoke-static {v1}, Lo0/g;->z(I)V

    :cond_3
    :goto_0
    return-void
.end method
