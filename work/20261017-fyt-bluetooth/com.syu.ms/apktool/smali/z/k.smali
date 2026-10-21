.class public Lz/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V
    .locals 11

    .line 1
    sget-boolean v0, Lm1/a;->c:Z

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lz/a;->E:Lo1/d;

    invoke-virtual {v0, p0}, Lo1/d;->e(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v7, 0x1c

    const/4 v8, -0x1

    const/16 v9, 0x1e

    const v10, -0x6fff0100    # -2.5439994E-29f

    const-string v4, "dev_serial_info_hardcode_error"

    const-string/jumbo v5, "\u786c\u7f16\u7801\u7684\u591a\u4e2a\u8bbe\u5907\u540c\u65f6\u4f7f\u7528\u4e86\u76f8\u540c\u4e32\u53e3\u8def\u5f84\u53d1\u751f\u51b2\u7a81"

    invoke-virtual/range {v2 .. v10}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 5
    :cond_0
    new-instance v1, Lz/b;

    invoke-direct {v1, p1, p2, p3, p4}, Lz/b;-><init>(Lo1/f0;Lo1/e0;Lo1/q;I)V

    invoke-virtual {v0, p0, v1}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static varargs b([I)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x5

    .line 2
    new-array v1, v1, [B

    const/16 v2, -0x78

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v1, v3

    const/16 v2, 0x55

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x2

    .line 4
    aput-byte v2, v1, v4

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x3

    aput-byte v2, v1, v5

    .line 5
    aget-byte v2, v1, v4

    aget-byte v4, v1, v5

    xor-int/2addr v2, v4

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x4

    .line 6
    aget v5, p0, v3

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 7
    aget v4, p0, v3

    xor-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x4

    int-to-byte p0, v2

    .line 8
    aput-byte p0, v1, v0

    return-object v1
.end method

.method public static c()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lz/a;->v:Lo1/n;

    const-string v2, "/dev/IpodI2c"

    invoke-virtual {v0, v2}, Lo1/n;->f(Ljava/lang/String;)I

    const/16 v0, 0x80

    .line 3
    sput v0, Lz/a;->a:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x3

    const/16 v3, 0x40

    const-string v4, "/dev/i2c-4"

    if-ne v0, v2, :cond_1

    .line 5
    sget-object v0, Lz/a;->v:Lo1/n;

    invoke-virtual {v0, v4}, Lo1/n;->f(Ljava/lang/String;)I

    .line 6
    sput v3, Lz/a;->a:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 8
    sget-object v0, Lz/a;->v:Lo1/n;

    invoke-virtual {v0, v4}, Lo1/n;->f(Ljava/lang/String;)I

    .line 9
    sput v3, Lz/a;->a:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lg/f;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sget-object v0, Lz/a;->v:Lo1/n;

    invoke-virtual {v0, v4}, Lo1/n;->f(Ljava/lang/String;)I

    .line 12
    sput v3, Lz/a;->a:I

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 14
    sget-object v0, Lz/a;->v:Lo1/n;

    invoke-virtual {v0, v4}, Lo1/n;->f(Ljava/lang/String;)I

    .line 15
    sput v3, Lz/a;->a:I

    .line 16
    :cond_4
    :goto_0
    invoke-static {v1}, Ly0/h;->V(I)V

    return-void
.end method

.method public static d()V
    .locals 12

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "BT DEV PATH = %s FD = %d BAUD = %d"

    const-string v5, "/dev/goc_serial"

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v8, 0x2580

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_6

    const/4 v9, 0x4

    if-eq v0, v9, :cond_5

    const/4 v10, 0x5

    const-string v11, "/dev/BT_serial"

    if-eq v0, v10, :cond_2

    const/4 v9, 0x6

    if-eq v0, v9, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object v0, Lz/a;->d:Lo1/e0;

    invoke-virtual {v0, v11}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0, v8}, Lo1/e0;->g(I)V

    .line 4
    sget-object v9, Lz/a;->n:Lo1/f0;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    invoke-static {v7}, Lh0/e;->H(I)V

    .line 6
    new-instance v2, Lz/e;

    invoke-direct {v2}, Lz/e;-><init>()V

    sput-object v2, Lz/a;->y:Lo1/q;

    invoke-static {v11, v9, v0, v2, v8}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    .line 7
    sget-boolean v2, Lm1/a;->c:Z

    if-eqz v2, :cond_1

    .line 8
    sget-object v2, Lz/a;->y:Lo1/q;

    invoke-virtual {v9, v0, v2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    .line 9
    sput-object v1, Lz/a;->y:Lo1/q;

    goto/16 :goto_1

    .line 10
    :cond_1
    sget-object v0, Lz/a;->F:Ljava/util/ArrayList;

    new-instance v1, Lz/k$c;

    invoke-direct {v1}, Lz/k$c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 11
    :cond_2
    sget v0, Lu0/b;->a2:I

    if-ne v0, v7, :cond_4

    .line 12
    sget-object v0, Lz/a;->d:Lo1/e0;

    invoke-virtual {v0, v11}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 13
    invoke-virtual {v0, v8}, Lo1/e0;->g(I)V

    .line 14
    sget-object v9, Lz/a;->n:Lo1/f0;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 15
    invoke-static {v7}, Lh0/e;->H(I)V

    .line 16
    new-instance v2, Lz/e;

    invoke-direct {v2}, Lz/e;-><init>()V

    sput-object v2, Lz/a;->y:Lo1/q;

    invoke-static {v11, v9, v0, v2, v8}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    .line 17
    sget-boolean v2, Lm1/a;->c:Z

    if-eqz v2, :cond_3

    .line 18
    sget-object v2, Lz/a;->y:Lo1/q;

    invoke-virtual {v9, v0, v2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    .line 19
    sput-object v1, Lz/a;->y:Lo1/q;

    goto :goto_0

    .line 20
    :cond_3
    sget-object v0, Lz/a;->F:Ljava/util/ArrayList;

    new-instance v1, Lz/k$b;

    invoke-direct {v1}, Lz/k$b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {v9}, Lh0/e;->H(I)V

    :goto_0
    return-void

    .line 22
    :cond_5
    invoke-static {v6}, Lh0/e;->H(I)V

    return-void

    .line 23
    :cond_6
    sget-object v0, Lz/a;->d:Lo1/e0;

    invoke-virtual {v0, v5}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 24
    invoke-virtual {v0, v8}, Lo1/e0;->g(I)V

    .line 25
    sget-object v9, Lz/a;->n:Lo1/f0;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 26
    invoke-static {v7}, Lh0/e;->H(I)V

    .line 27
    new-instance v2, Lz/e;

    invoke-direct {v2}, Lz/e;-><init>()V

    sput-object v2, Lz/a;->y:Lo1/q;

    invoke-static {v5, v9, v0, v2, v8}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    .line 28
    sget-boolean v2, Lm1/a;->c:Z

    if-eqz v2, :cond_7

    .line 29
    sget-object v2, Lz/a;->y:Lo1/q;

    invoke-virtual {v9, v0, v2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    .line 30
    sput-object v1, Lz/a;->y:Lo1/q;

    goto :goto_1

    .line 31
    :cond_7
    sget-object v0, Lz/a;->F:Ljava/util/ArrayList;

    new-instance v1, Lz/k$a;

    invoke-direct {v1}, Lz/k$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;ILo1/q;)V
    .locals 4

    .line 1
    sget-object v0, Lz/a;->i:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 2
    invoke-virtual {v0, p1}, Lo1/e0;->g(I)V

    .line 3
    sget-object v1, Lz/a;->s:Lo1/f0;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "CANBUS DEV PATH = %s FD = %d BAUD = %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0, p2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lz/a;->c:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->c(Ljava/lang/String;)I

    const v1, 0x9600

    .line 2
    invoke-virtual {v0, v1}, Lo1/e0;->g(I)V

    .line 3
    sget-object v2, Lz/a;->m:Lo1/f0;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "SPHE8202 DEV PATH = %s FD = %d BAUD = %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    invoke-static {v5}, Lo0/g;->y(I)V

    .line 5
    new-instance v3, Lz/f;

    invoke-direct {v3}, Lz/f;-><init>()V

    sput-object v3, Lz/a;->z:Lo1/q;

    invoke-static {p0, v2, v0, v3, v1}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    .line 6
    sget-boolean p0, Lm1/a;->c:Z

    if-eqz p0, :cond_0

    .line 7
    sget-object p0, Lz/a;->z:Lo1/q;

    invoke-virtual {v2, v0, p0}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    const/4 p0, 0x0

    .line 8
    sput-object p0, Lz/a;->z:Lo1/q;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lz/a;->F:Ljava/util/ArrayList;

    new-instance v0, Lz/k$f;

    invoke-direct {v0}, Lz/k$f;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lz/a;->c:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 2
    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v1

    if-gtz v1, :cond_0

    .line 3
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v7, 0x19

    const/4 v8, -0x1

    const/16 v9, 0x1e

    const v10, -0x6fff0100    # -2.5439994E-29f

    const-string v4, "dvd_serial_open_error"

    const-string v5, "DVD\u4e32\u53e3\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5347\u7ea7\u6b63\u786e\u7684\u8f6f\u4ef6"

    invoke-virtual/range {v2 .. v10}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    :cond_0
    const v1, 0x1c200

    .line 5
    invoke-virtual {v0, v1}, Lo1/e0;->g(I)V

    .line 6
    sget-object v2, Lz/a;->m:Lo1/f0;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "SPHE8288 DEV PATH = %s FD = %d BAUD = %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v3, 0x7

    .line 7
    invoke-static {v3}, Lg/f;->f(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {v6}, Ly0/h;->V(I)V

    .line 9
    :cond_1
    invoke-static {v5}, Lo0/g;->y(I)V

    .line 10
    new-instance v3, Lz/g;

    invoke-direct {v3}, Lz/g;-><init>()V

    sput-object v3, Lz/a;->z:Lo1/q;

    invoke-static {p0, v2, v0, v3, v1}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    .line 11
    sget-boolean p0, Lm1/a;->c:Z

    if-eqz p0, :cond_2

    .line 12
    sget-object p0, Lz/a;->z:Lo1/q;

    invoke-virtual {v2, v0, p0}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    const/4 p0, 0x0

    .line 13
    sput-object p0, Lz/a;->z:Lo1/q;

    goto :goto_0

    .line 14
    :cond_2
    sget-object p0, Lz/a;->F:Ljava/util/ArrayList;

    new-instance v0, Lz/k$e;

    invoke-direct {v0}, Lz/k$e;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lz/a;->d:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->c(Ljava/lang/String;)I

    const v1, 0x1c200

    .line 2
    invoke-virtual {v0, v1}, Lo1/e0;->g(I)V

    .line 3
    sget-object v2, Lz/a;->n:Lo1/f0;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/dev/ttyS0"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "BT DEV PATH = %s FD = %d BAUD = %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 4
    invoke-static {v3}, Lh0/e;->H(I)V

    .line 5
    new-instance v3, Lz/h;

    invoke-direct {v3}, Lz/h;-><init>()V

    sput-object v3, Lz/a;->y:Lo1/q;

    invoke-static {p0, v2, v0, v3, v1}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    .line 6
    sget-boolean p0, Lm1/a;->c:Z

    if-eqz p0, :cond_0

    .line 7
    sget-object p0, Lz/a;->y:Lo1/q;

    invoke-virtual {v2, v0, p0}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    const/4 p0, 0x0

    .line 8
    sput-object p0, Lz/a;->y:Lo1/q;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lz/a;->F:Ljava/util/ArrayList;

    new-instance v0, Lz/k$d;

    invoke-direct {v0}, Lz/k$d;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static i(I)V
    .locals 9

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const-string v1, "/dev/ttyS3"

    const-string v2, "/dev/ttyS0"

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, v2}, Lo1/e0;->c(Ljava/lang/String;)I

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 3
    :pswitch_1
    sget-object v0, Lz/a;->b:Lo1/e0;

    const-string v1, "/dev/ttyHS1"

    invoke-virtual {v0, v1}, Lo1/e0;->c(Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :pswitch_2
    sget-object v0, Lz/a;->b:Lo1/e0;

    const-string v1, "/dev/ttyS1"

    invoke-virtual {v0, v1}, Lo1/e0;->c(Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :pswitch_3
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, v1}, Lo1/e0;->c(Ljava/lang/String;)I

    goto :goto_1

    .line 6
    :pswitch_4
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, v2}, Lo1/e0;->c(Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :pswitch_5
    sget-object v0, Lz/a;->b:Lo1/e0;

    const-string v1, "/dev/ttyS2"

    invoke-virtual {v0, v1}, Lo1/e0;->c(Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :pswitch_6
    invoke-static {}, Lo1/q0;->B()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lz/a;->b:Lo1/e0;

    const-string v1, "/dev/ttyMbx3"

    invoke-virtual {v0, v1}, Lo1/e0;->c(Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, v1}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 11
    :goto_1
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->g(I)V

    .line 12
    sget-object v2, Lz/a;->l:Lo1/f0;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v4, v8

    const-string v6, "MCU DEV PATH = %s FD = %d BAUD = %d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 13
    invoke-static {v7}, Lu0/d;->g2(I)V

    .line 14
    invoke-static {v7}, Lw0/f;->l(I)V

    .line 15
    invoke-static {v7}, Ld1/f;->f(I)V

    .line 16
    invoke-static {v7}, La1/c;->i(I)V

    .line 17
    invoke-static {v7}, Lp0/c;->g(I)V

    .line 18
    new-instance v4, Lz/i;

    invoke-direct {v4}, Lz/i;-><init>()V

    sput-object v4, Lz/a;->x:Lo1/q;

    invoke-virtual {v2, v0, v4}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    .line 19
    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MCU"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v3, Lz/a;->x:Lo1/q;

    invoke-static {v1, v2, v0, v3, p0}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public static j(Ljava/lang/String;II)V
    .locals 5

    .line 1
    sget-object v0, Lz/a;->g:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 2
    invoke-virtual {v0, p1}, Lo1/e0;->g(I)V

    .line 3
    sget-object v1, Lz/a;->q:Lo1/f0;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "OBD DEV PATH = %s FD = %d BAUD = %d id = %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lv0/d;->b(I)V

    .line 5
    sget-object p2, Lv0/b;->c:Lv0/m;

    instance-of v2, p2, Lo1/q;

    if-eqz v2, :cond_0

    check-cast p2, Lo1/q;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, v1, v0, p2, p1}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    return-void
.end method

.method public static k(Ljava/lang/String;II)V
    .locals 6

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupDevTmps path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " baud : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lchip/Chip;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sys.fyt.serialdebug"

    const-string v4, "off"

    .line 4
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lo0/e;->a:I

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    new-instance p2, Lz/k$h;

    invoke-direct {p2, p0}, Lz/k$h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_2
    sget-object v0, Lz/a;->f:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0, p1}, Lo1/e0;->g(I)V

    .line 8
    sget-object v4, Lz/a;->p:Lo1/f0;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "TPMS DEV PATH = %s FD = %d BAUD = %d id = %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Lc1/b;->g(I)V

    .line 10
    sget-object p2, Lc1/a;->c:Lc1/p;

    instance-of v1, p2, Lo1/q;

    if-eqz v1, :cond_3

    check-cast p2, Lo1/q;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-static {p0, v4, v0, p2, p1}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lz/a;->k:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->c(Ljava/lang/String;)I

    const v1, 0x1c200

    .line 2
    invoke-virtual {v0, v1}, Lo1/e0;->g(I)V

    .line 3
    sget-object v2, Lz/a;->u:Lo1/f0;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0}, Lo1/e0;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "Tv DEV PATH = %s FD = %d BAUD = %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    invoke-static {v5}, Ld1/f;->f(I)V

    const/4 v3, 0x0

    .line 5
    invoke-static {p0, v2, v0, v3, v1}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    .line 6
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    new-instance v0, Lz/k$g;

    invoke-direct {v0}, Lz/k$g;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static m(II)I
    .locals 2

    .line 1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_0

    sget v0, Lu0/b;->a0:I

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lz/a;->v:Lo1/n;

    sget v1, Lz/a;->a:I

    invoke-virtual {v0, v1, p0, p1}, Lo1/n;->h(III)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(II)V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x55

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    int-to-byte p0, p0

    const/4 v1, 0x5

    aput-byte p0, v0, v1

    int-to-byte p0, p1

    const/4 p1, 0x6

    aput-byte p0, v0, p1

    .line 1
    aget-byte p0, v0, v1

    rsub-int p0, p0, 0xac

    aget-byte p1, v0, p1

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x7

    aput-byte p0, v0, p1

    .line 2
    sget-object p0, Lz/a;->c:Lo1/e0;

    invoke-virtual {p0, v0}, Lo1/e0;->i([B)V

    return-void
.end method

.method public static varargs o([I)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x5

    .line 2
    new-array v2, v1, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 3
    aput-byte v3, v2, v4

    const/16 v3, 0x55

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    .line 4
    aput-byte v5, v2, v3

    const/4 v3, 0x3

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    move v3, v4

    move v5, v3

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v6, v3, 0x4

    .line 5
    aget v7, p0, v3

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 6
    aget v6, p0, v3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x4

    not-int p0, v5

    int-to-byte p0, p0

    .line 7
    aput-byte p0, v2, v0

    .line 8
    sget-object p0, Lz/a;->c:Lo1/e0;

    invoke-virtual {p0, v2}, Lo1/e0;->i([B)V

    .line 9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    sget-object v0, Lutil/log/LogType;->d:Lutil/log/LogType;

    invoke-static {v2, v4, v1}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs p([I)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x5

    .line 2
    new-array v1, v1, [B

    const/16 v2, 0x41

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v1, v3

    const/16 v2, 0x54

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/16 v4, 0x2d

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x3

    const/16 v4, 0xd

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x4

    const/16 v4, 0xa

    aput-byte v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v2, v3, 0x3

    .line 5
    aget v4, p0, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BT write data:  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BT"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p0, Lz/a;->d:Lo1/e0;

    invoke-virtual {p0, v1}, Lo1/e0;->i([B)V

    return-void
.end method

.method public static varargs q([B)V
    .locals 4

    .line 1
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget-byte v3, p0, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lz/a;->i:Lo1/e0;

    invoke-virtual {p0, v1}, Lo1/e0;->i([B)V

    return-void
.end method

.method public static varargs r([I)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lz/h;->j:Z

    .line 2
    array-length v1, p0

    add-int/lit8 v2, v1, 0x5

    .line 3
    new-array v2, v2, [B

    const/16 v3, 0x41

    const/4 v4, 0x0

    .line 4
    aput-byte v3, v2, v4

    const/16 v3, 0x54

    aput-byte v3, v2, v0

    const/4 v0, 0x2

    const/16 v3, 0x23

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x3

    const/16 v3, 0xd

    .line 5
    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x4

    const/16 v3, 0xa

    aput-byte v3, v2, v0

    :goto_0
    if-ge v4, v1, :cond_1

    add-int/lit8 v0, v4, 0x3

    .line 6
    aget v3, p0, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BT write data:  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BT"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p0, Lz/a;->d:Lo1/e0;

    invoke-virtual {p0, v2}, Lo1/e0;->i([B)V

    return-void
.end method

.method public static varargs s([I)V
    .locals 5

    .line 1
    sget-boolean v0, Lu0/b;->D1:Z

    if-eqz v0, :cond_4

    sget v0, Lm0/b;->e:I

    if-nez v0, :cond_4

    sget-boolean v0, Lu0/b;->e4:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_4

    .line 2
    array-length v0, p0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->i:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send to Mcu Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    aget v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xe3

    if-ne v0, v1, :cond_3

    sget v0, Lk0/nt;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 5
    array-length v0, p0

    new-array v0, v0, [I

    .line 6
    :goto_0
    array-length v1, p0

    if-ge v4, v1, :cond_2

    .line 7
    aget v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    sget-object p0, Ll0/z;->a:Ll0/a;

    invoke-virtual {p0, v0}, Ll0/a;->f([I)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {p0}, Lz/k;->b([I)[B

    move-result-object p0

    if-eqz p0, :cond_4

    .line 10
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->i([B)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static varargs t([I)V
    .locals 1

    .line 1
    sget v0, Lm0/b;->e:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lz/k;->b([I)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->i([B)V

    :cond_1
    return-void
.end method

.method public static u(I)V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x5b

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    const/16 p0, 0x2a

    const/4 v3, 0x2

    aput-byte p0, v0, v3

    .line 1
    aget-byte p0, v0, v2

    aget-byte v1, v0, v1

    add-int/2addr p0, v1

    aget-byte v1, v0, v3

    add-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 2
    sget-object p0, Lz/a;->k:Lo1/e0;

    invoke-virtual {p0, v0}, Lo1/e0;->i([B)V

    return-void
.end method
