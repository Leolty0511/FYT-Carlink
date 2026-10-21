.class public Lw0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->A:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->A:I

    const/16 v0, 0x16

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static B(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 1
    invoke-static {p0, v0, v1}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v2, Lw0/d;->a:I

    if-ne v2, v0, :cond_1

    .line 3
    sget v2, Lw0/d;->h:I

    const/high16 v3, 0x10000

    if-ltz v2, :cond_0

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x0

    mul-int/2addr v2, v1

    add-int/2addr v2, p0

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v3

    mul-int/2addr v2, v1

    add-int/2addr v2, p0

    sub-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 4
    :goto_0
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0, v2}, Lw0/g;->z(I)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0, p0}, Lw0/g;->z(I)V

    :goto_1
    return-void
.end method

.method public static C(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->u:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->u:I

    const/16 v0, 0x11

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static D(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->v:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->v:I

    const/16 v0, 0x12

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static E(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->B:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->B:I

    const/16 v0, 0x18

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static F(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->z:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->z:I

    const/16 v0, 0x15

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static G(I)V
    .locals 2

    .line 1
    sput p0, Lw0/d;->F:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/16 p0, 0x23

    .line 2
    invoke-static {p0, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public static H(I)V
    .locals 2

    .line 1
    sput p0, Lw0/d;->G:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/16 p0, 0x24

    .line 2
    invoke-static {p0, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public static I(IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, v1, p2, p1}, Lw0/f;->K(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs J(I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lw0/f;->K(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static K(I[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lw0/i;->X2()Lw0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs L(I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, p1}, Lw0/f;->K(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static a(I)V
    .locals 4

    .line 1
    sget v0, Lw0/d;->C:I

    const/16 v1, 0xc6

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->C:I

    const/16 v0, 0x19

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Lw0/f;->J(I[I)V

    .line 4
    invoke-static {v1}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v1, p0}, Lm1/c;->e(II)I

    .line 6
    :cond_0
    invoke-static {v1}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0}, Lo1/q0;->h(I)V

    :cond_1
    return-void
.end method

.method public static b(I)V
    .locals 1

    const/16 v0, 0xc6

    .line 1
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lw0/f;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0, p0}, Lw0/g;->C(I)V

    :goto_0
    return-void
.end method

.method public static c(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->k:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->k:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    .line 4
    sget p0, Lw0/d;->K:I

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lw0/f;->g()V

    :cond_0
    return-void
.end method

.method public static d(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->w:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->w:I

    const/16 v0, 0x13

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static e(I)V
    .locals 2

    .line 1
    sget v0, Lw0/d;->h:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->h:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 3
    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    .line 4
    sget-object p0, Lw0/e;->e:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    .line 5
    sget p0, Lw0/d;->K:I

    if-nez p0, :cond_0

    .line 6
    invoke-static {}, Lw0/f;->g()V

    :cond_0
    return-void
.end method

.method public static f(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->j:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->j:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    .line 4
    sget-object p0, Lw0/e;->b:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static g()V
    .locals 14

    .line 1
    sget v0, Lw0/d;->K:I

    const/16 v1, 0x10

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lw0/d;->L:I

    if-eqz v0, :cond_0

    new-array v2, v2, [I

    aput v0, v2, v5

    .line 3
    sget v0, Lw0/d;->M:I

    aput v0, v2, v4

    sget v0, Lw0/d;->N:I

    aput v0, v2, v6

    sget v0, Lw0/d;->O:I

    aput v0, v2, v3

    invoke-static {v1, v2}, Lw0/f;->J(I[I)V

    :cond_0
    return-void

    .line 4
    :cond_1
    sget v0, Lw0/d;->k:I

    .line 5
    sget v7, Lw0/d;->h:I

    const/16 v8, 0x14

    shl-int/2addr v0, v8

    or-int/2addr v0, v7

    new-array v2, v2, [I

    const/16 v7, 0x9

    const/16 v9, 0x2a30

    const/16 v10, 0x654

    const/16 v11, 0x208

    const/16 v12, 0x222e

    const/16 v13, 0xa

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x1db0

    aput v0, v2, v5

    const/16 v0, 0x2328

    aput v0, v2, v4

    aput v13, v2, v6

    goto :goto_0

    :sswitch_1
    aput v11, v2, v5

    const/16 v0, 0x65d

    aput v0, v2, v4

    aput v7, v2, v6

    goto :goto_0

    :sswitch_2
    aput v12, v2, v5

    aput v9, v2, v4

    aput v13, v2, v6

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1964

    aput v0, v2, v5

    const/16 v0, 0x1ce8

    aput v0, v2, v4

    aput v3, v2, v6

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x20a

    aput v0, v2, v5

    aput v10, v2, v4

    aput v7, v2, v6

    goto :goto_0

    :sswitch_5
    aput v12, v2, v5

    aput v9, v2, v4

    const/4 v0, 0x5

    aput v0, v2, v6

    goto :goto_0

    :sswitch_6
    aput v11, v2, v5

    aput v10, v2, v4

    aput v13, v2, v6

    goto :goto_0

    :sswitch_7
    aput v12, v2, v5

    const/16 v0, 0x2a26

    aput v0, v2, v4

    aput v8, v2, v6

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x212

    aput v0, v2, v5

    const/16 v0, 0x6b8

    aput v0, v2, v4

    aput v13, v2, v6

    .line 6
    :goto_0
    aget v0, v2, v6

    if-eqz v0, :cond_2

    .line 7
    aget v0, v2, v4

    aget v4, v2, v5

    sub-int/2addr v0, v4

    aget v4, v2, v6

    div-int/2addr v0, v4

    aput v0, v2, v3

    .line 8
    :cond_2
    invoke-static {v1, v2}, Lw0/f;->J(I[I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x10001 -> :sswitch_7
        0x10002 -> :sswitch_7
        0x100000 -> :sswitch_6
        0x100001 -> :sswitch_6
        0x110000 -> :sswitch_5
        0x110001 -> :sswitch_5
        0x110002 -> :sswitch_5
        0x200000 -> :sswitch_4
        0x200001 -> :sswitch_4
        0x210000 -> :sswitch_5
        0x210001 -> :sswitch_5
        0x210002 -> :sswitch_5
        0x300000 -> :sswitch_4
        0x300001 -> :sswitch_4
        0x310000 -> :sswitch_3
        0x310001 -> :sswitch_2
        0x310002 -> :sswitch_2
        0x400000 -> :sswitch_1
        0x400001 -> :sswitch_1
        0x410000 -> :sswitch_0
        0x410001 -> :sswitch_0
        0x410002 -> :sswitch_0
    .end sparse-switch
.end method

.method public static h(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->i:I

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lw0/f;->n(Ljava/lang/String;)V

    .line 3
    sput p0, Lw0/d;->i:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 4
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    .line 5
    sget-object p0, Lw0/e;->a:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static i()I
    .locals 2

    .line 1
    sget v0, Lw0/d;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lw0/d;->o:I

    if-ne v0, v1, :cond_0

    sget v0, Lw0/d;->p:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static j(I)V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCU\u6536\u97f3\u673a\u662f\u5426\u652f\u6301AM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    sput p0, Lw0/d;->E:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys.fyt.radio_support_am"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/16 p0, 0x1d

    .line 4
    invoke-static {p0, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public static k(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->y:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->y:I

    const/16 v0, 0x17

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static l(I)V
    .locals 2

    .line 1
    sget v0, Lw0/d;->a:I

    if-ne v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    sput p0, Lw0/d;->a:I

    .line 3
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->b()V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 4
    new-instance v0, Lw0/g$a;

    invoke-direct {v0}, Lw0/g$a;-><init>()V

    sput-object v0, Lw0/d;->b:Lw0/g;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lbase/Configure$Property;->P:Lbase/Configure$Property;

    sget-boolean v1, Lw0/d;->c:Z

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lw0/h;

    invoke-direct {v0}, Lw0/h;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lw0/b;

    invoke-direct {v0}, Lw0/b;-><init>()V

    :goto_0
    sput-object v0, Lw0/d;->b:Lw0/g;

    goto :goto_1

    .line 7
    :cond_3
    new-instance v0, Lw0/c;

    invoke-direct {v0}, Lw0/c;-><init>()V

    sput-object v0, Lw0/d;->b:Lw0/g;

    goto :goto_1

    .line 8
    :cond_4
    new-instance v0, Lw0/a;

    invoke-direct {v0}, Lw0/a;-><init>()V

    sput-object v0, Lw0/d;->b:Lw0/g;

    .line 9
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sys.fyt.radio_type"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->a()V

    .line 11
    sget-object p0, Lw0/e;->f:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    return-void
.end method

.method public static m(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->D:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->D:I

    const/16 v0, 0x1b

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lw0/d;->I:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lw0/d;->I:Ljava/lang/String;

    const/16 v0, 0x1a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->L(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static o(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->l:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->l:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static p([I[F[Ljava/lang/String;)V
    .locals 6

    .line 1
    sget p1, Lw0/d;->a:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_6

    .line 2
    array-length p1, p0

    if-lt p1, p2, :cond_6

    const/4 p1, 0x0

    .line 3
    aget v0, p0, p1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v0, :cond_1

    .line 4
    array-length v0, p0

    if-lt v0, v3, :cond_2

    .line 5
    sget-object v0, Lw0/d;->b:Lw0/g;

    aget v4, p0, p2

    invoke-interface {v0, v4}, Lw0/g;->e(I)V

    goto :goto_0

    .line 6
    :cond_1
    aget v0, p0, p1

    if-ne v0, p2, :cond_2

    .line 7
    array-length v0, p0

    const/4 v4, 0x7

    if-lt v0, v4, :cond_2

    .line 8
    aget v0, p0, v2

    invoke-static {v0}, Lw0/f;->f(I)V

    new-array v0, v4, [I

    const/16 v4, 0x26

    aput v4, v0, p1

    .line 9
    aget v4, p0, p2

    aput v4, v0, p2

    aget v4, p0, v3

    aput v4, v0, v3

    aget v4, p0, v2

    aput v4, v0, v2

    aget v4, p0, v1

    aput v4, v0, v1

    const/4 v4, 0x5

    aget v5, p0, v4

    aput v5, v0, v4

    const/4 v4, 0x6

    aget v5, p0, v4

    aput v5, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    :cond_2
    :goto_0
    array-length v0, p0

    if-lt v0, v2, :cond_6

    .line 11
    aget v0, p0, v3

    if-ne v0, v2, :cond_4

    :cond_3
    move p2, p1

    goto :goto_1

    .line 12
    :cond_4
    aget v0, p0, v3

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    aget p2, p0, v3

    if-ge p2, v1, :cond_3

    .line 14
    aget p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    const/high16 p1, 0x10000

    add-int p2, p0, p1

    .line 15
    :goto_1
    invoke-static {p2}, Lw0/f;->e(I)V

    :cond_6
    return-void
.end method

.method public static q(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->m:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->m:I

    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static r(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->t:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lw0/d;->t:I

    .line 3
    sget v0, Lu0/b;->B4:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb2

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    const/16 v0, 0xf

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 5
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_1
    return-void
.end method

.method public static s(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->q:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->q:I

    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static t(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->s:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->s:I

    const/16 v0, 0xc

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static u(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->n:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->n:I

    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static v(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->p:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->p:I

    const/16 v0, 0x9

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static w(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->r:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->r:I

    const/16 v0, 0xb

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static x(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lw0/d;->H:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lw0/d;->H:Ljava/lang/String;

    const/16 v0, 0xd

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->L(I[Ljava/lang/String;)V

    .line 4
    sget-object p0, Lw0/e;->c:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static y(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->o:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->o:I

    const/16 v0, 0x8

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method

.method public static z(I)V
    .locals 3

    .line 1
    sget v0, Lw0/d;->x:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lw0/d;->x:I

    const/16 v0, 0x14

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    :cond_0
    return-void
.end method
