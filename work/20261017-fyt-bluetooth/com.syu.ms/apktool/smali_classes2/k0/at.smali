.class public Lk0/at;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/at;->b:I

    .line 3
    new-instance v0, Lk0/at$a;

    invoke-direct {v0, p0}, Lk0/at$a;-><init>(Lk0/at;)V

    iput-object v0, p0, Lk0/at;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lk0/at$b;

    invoke-direct {v0, p0}, Lk0/at$b;-><init>(Lk0/at;)V

    iput-object v0, p0, Lk0/at;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/at;->c:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    iput v1, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "222 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    add-int/lit8 p3, p2, 0x3

    .line 2
    aget-byte p3, p1, p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    add-int/lit8 p3, p2, 0x4

    .line 3
    aget-byte v1, p1, p3

    const/4 v2, 0x7

    shr-int/2addr v1, v2

    const/4 v3, 0x1

    and-int/2addr v1, v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 4
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 5
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 6
    :cond_1
    aget-byte v1, p1, p3

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 7
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    .line 8
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 9
    :cond_2
    aget-byte v0, p1, p3

    shr-int/lit8 v0, v0, 0x5

    and-int/2addr v0, v3

    const/4 v1, 0x3

    if-ne v0, v3, :cond_3

    .line 10
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 11
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 12
    :cond_3
    aget-byte v0, p1, p3

    const/4 v5, 0x4

    shr-int/2addr v0, v5

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 13
    invoke-static {v5, v4}, Ll0/b0;->l0(II)V

    .line 14
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget-byte v0, p1, p3

    shr-int/2addr v0, v1

    and-int/2addr v0, v3

    const/4 v6, 0x2

    if-ne v0, v3, :cond_5

    .line 16
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    .line 17
    invoke-static {v6, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 18
    :cond_5
    aget-byte v0, p1, p3

    shr-int/2addr v0, v6

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/16 p1, 0xc

    .line 19
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 20
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 21
    :cond_6
    aget-byte v0, p1, p3

    shr-int/2addr v0, v3

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    const/16 p1, 0x20

    .line 22
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 23
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 24
    :cond_7
    aget-byte p3, p1, p3

    shr-int/2addr p3, v4

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_8

    const/16 p1, 0x21

    .line 25
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 26
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 p2, p2, 0x5

    .line 27
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_a

    .line 28
    sget p1, Lu0/b;->f:I

    if-eqz p1, :cond_9

    .line 29
    invoke-static {v4}, Lu0/d;->U1(I)V

    goto :goto_0

    :cond_9
    if-nez p1, :cond_10

    .line 30
    invoke-static {v3}, Lu0/d;->U1(I)V

    goto :goto_0

    .line 31
    :cond_a
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_b

    const/16 p1, 0x15

    .line 32
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 33
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 34
    :cond_b
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x5

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_c

    const/16 p1, 0x10

    .line 35
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 36
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 37
    :cond_c
    aget-byte p3, p1, p2

    shr-int/2addr p3, v5

    and-int/2addr p3, v3

    const/16 v0, 0x12

    if-ne p3, v3, :cond_d

    .line 38
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    .line 39
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 40
    :cond_d
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_e

    .line 41
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    .line 42
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 43
    :cond_e
    aget-byte p3, p1, p2

    shr-int/2addr p3, v6

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_f

    const/16 p1, 0x1a

    .line 44
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 46
    :cond_f
    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_10

    const/16 p1, 0x19

    .line 47
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 48
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    :cond_10
    :goto_0
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/at;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/at;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method
