.class public Lg/m;
.super Lg/p;
.source "SourceFile"


# static fields
.field public static final Q0:[I


# instance fields
.field public P0:Lf1/q$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lg/m;->Q0:[I

    return-void

    :array_0
    .array-data 4
        0x40
        0x8
        0x21
        0x3
        0x10
        0xa0
        0x10
        0x20
        0x40
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lg/p;-><init>()V

    .line 2
    new-instance v0, Lg/m$a;

    invoke-direct {v0, p0}, Lg/m$a;-><init>(Lg/m;)V

    iput-object v0, p0, Lg/m;->P0:Lf1/q$b;

    const/16 v0, 0x44

    .line 3
    sput v0, Lf1/e;->W:I

    .line 4
    sget-object v0, Ly0/f;->z0:[I

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_0

    iput-object v1, p0, Lchip/Chip;->C:[I

    const/4 v1, 0x1

    .line 6
    sput-boolean v1, Lu0/b;->E1:Z

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2}, Lchip/Chip;->U(Z)V

    .line 8
    sput-boolean v1, Lw0/d;->c:Z

    .line 9
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lx0/c;->Z2(I)V

    .line 10
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    const-string/jumbo v3, "sys.fyt.main2.vc_"

    invoke-virtual {v2, v0, v3}, Lf1/o;->A(ILjava/lang/String;)V

    .line 11
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    const-string/jumbo v2, "sys.fyt.sub.vc_"

    invoke-virtual {v0, v1, v2}, Lf1/o;->A(ILjava/lang/String;)V

    .line 12
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget-object v0, v0, Lu0/i;->e0:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->b()V

    return-void

    :array_0
    .array-data 4
        0x37
        0x3c
    .end array-data
.end method


# virtual methods
.method public X()V
    .locals 17

    .line 1
    new-instance v0, Lf1/o$f;

    const-string v1, "RN6854"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lf1/o$d;

    const-class v4, Lf1/h;

    const-string v5, "/dev/i2c-0"

    const/16 v6, 0x2d

    invoke-direct {v3, v5, v6, v4}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v3}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 2
    new-instance v0, Lf1/o$f;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf1/o$d;

    const-class v4, Lf1/h;

    invoke-direct {v1, v5, v6, v4}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v1}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 3
    new-instance v0, Lf1/o$f;

    const-string v1, "TP2815"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf1/o$d;

    const-class v4, Lf1/a;

    const-string v6, "/dev/i2c-1"

    const/16 v7, 0x44

    invoke-direct {v1, v6, v7, v4}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v1}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 4
    sget-object v0, Lbase/Configure$Property;->b0:Lbase/Configure$Property;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    sget-object v0, Lbase/Configure$Property;->a0:Lbase/Configure$Property;

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "8918L"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x21

    const-string v4, "LT8918"

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lf1/o$f;

    invoke-direct {v0, v4, v2}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v4, Lf1/m;

    invoke-direct {v2, v6, v1, v4}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v2}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    goto :goto_1

    :cond_1
    const-wide/16 v8, -0x1

    const-string/jumbo v0, "ro.build.date.utc"

    .line 9
    invoke-static {v0, v8, v9}, Lo1/s0;->n(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v11, 0x7e9

    const/4 v12, 0x5

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v8

    .line 13
    invoke-virtual/range {v10 .. v16}, Ljava/util/Calendar;->set(IIIIII)V

    .line 14
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x70

    .line 15
    sput v0, Lf1/l;->y0:I

    .line 16
    :cond_2
    sget-object v0, Lbase/Configure$Property;->j:Lbase/Configure$Property;

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    .line 17
    new-instance v8, Lf1/o$f;

    invoke-direct {v8, v4, v2}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    if-eqz v0, :cond_3

    .line 18
    const-class v0, Lf1/n;

    goto :goto_0

    :cond_3
    const-class v0, Lf1/l;

    :goto_0
    invoke-direct {v2, v6, v1, v0}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 19
    invoke-static {v8, v2}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 20
    :goto_1
    new-instance v0, Lf1/o$f;

    const-string v1, "TP9963"

    invoke-direct {v0, v1, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf1/o$d;

    const-class v2, Lf1/e;

    invoke-direct {v1, v5, v7, v2}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v1}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    return-void
.end method

.method public c(Z[Lf1/o$b;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========== Chip onVideoChipsInited() mulit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " cameraids: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isCamera360: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lchip/Chip;->E:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Qin"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p1}, Lf1/o;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 4
    invoke-virtual {v1}, Lf1/o$b;->a()I

    move-result v2

    invoke-virtual {v1}, Lf1/o$b;->b()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lg/m;->g0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g0(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v5, 0xf

    const/4 v6, 0x1

    if-eqz v2, :cond_a

    const/16 v7, 0xc

    if-eq v2, v7, :cond_8

    const/16 v8, 0xd

    const/16 v9, 0x9

    const/4 v10, 0x3

    if-eq v2, v8, :cond_7

    const/16 v11, 0x10

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    move v3, v6

    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1
    :pswitch_0
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v1}, Lf1/o;->d(I)Lf1/q;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    sget v7, Lf1/q;->L:I

    const-string v8, "b"

    invoke-virtual {v2, v7, v8}, Lf1/q;->F(ILjava/lang/String;)V

    .line 3
    sget v7, Lf1/q;->M:I

    const-string v8, "a"

    invoke-virtual {v2, v7, v8}, Lf1/q;->F(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v3, v1}, Lf1/o;->w(II)V

    .line 5
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v10, v1}, Lf1/o;->w(II)V

    .line 6
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v4, v1}, Lf1/o;->w(II)V

    .line 7
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v15, v1}, Lf1/o;->w(II)V

    .line 8
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v14, v1}, Lf1/o;->w(II)V

    .line 9
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v13, v1}, Lf1/o;->w(II)V

    .line 10
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v12, v1}, Lf1/o;->w(II)V

    .line 11
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v9, v1}, Lf1/o;->w(II)V

    .line 12
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v5, v1}, Lf1/o;->w(II)V

    .line 13
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v11, v1}, Lf1/o;->w(II)V

    .line 14
    iget-boolean v2, v0, Lchip/Chip;->E:Z

    goto :goto_0

    .line 15
    :pswitch_1
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v3, v1}, Lf1/o;->w(II)V

    .line 16
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v10, v1}, Lf1/o;->w(II)V

    .line 17
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v4, v1}, Lf1/o;->w(II)V

    .line 18
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v15, v1}, Lf1/o;->w(II)V

    .line 19
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v14, v1}, Lf1/o;->w(II)V

    .line 20
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v13, v1}, Lf1/o;->w(II)V

    .line 21
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v12, v1}, Lf1/o;->w(II)V

    .line 22
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v9, v1}, Lf1/o;->w(II)V

    .line 23
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v5, v1}, Lf1/o;->w(II)V

    .line 24
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v11, v1}, Lf1/o;->w(II)V

    .line 25
    iget-boolean v2, v0, Lchip/Chip;->E:Z

    :goto_0
    xor-int/lit8 v4, v2, 0x1

    move v3, v5

    goto/16 :goto_5

    .line 26
    :pswitch_2
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    iget-object v7, v0, Lg/k;->x0:Lf1/q$b;

    invoke-virtual {v2, v1, v7}, Lf1/o;->y(ILf1/q$b;)V

    if-ne v1, v6, :cond_4

    .line 27
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v3, v1}, Lf1/o;->w(II)V

    .line 28
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v10, v1}, Lf1/o;->w(II)V

    .line 29
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v4, v1}, Lf1/o;->w(II)V

    .line 30
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v15, v1}, Lf1/o;->w(II)V

    .line 31
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v14, v1}, Lf1/o;->w(II)V

    .line 32
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v13, v1}, Lf1/o;->w(II)V

    .line 33
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v12, v1}, Lf1/o;->w(II)V

    .line 34
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v9, v1}, Lf1/o;->w(II)V

    .line 35
    invoke-static {}, Lg/f;->o()Z

    move-result v2

    .line 36
    invoke-static {}, Lg/f;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    iget-object v4, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v4, v5, v1}, Lf1/o;->w(II)V

    .line 38
    :cond_1
    invoke-static {}, Lg/f;->g()I

    move-result v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_3
    :goto_2
    move v4, v6

    goto/16 :goto_4

    .line 39
    :cond_4
    invoke-static {}, Lg/f;->o()Z

    move-result v2

    .line 40
    invoke-static {}, Lg/f;->p()Z

    move-result v7

    if-nez v2, :cond_6

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    const-string/jumbo v2, "ro.fyt.realplatform"

    const-string v7, ""

    .line 41
    invoke-static {v2, v7}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "6316N"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v3, v1}, Lf1/o;->w(II)V

    .line 43
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v10, v1}, Lf1/o;->w(II)V

    .line 44
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v4, v1}, Lf1/o;->w(II)V

    .line 45
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v15, v1}, Lf1/o;->w(II)V

    .line 46
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v14, v1}, Lf1/o;->w(II)V

    .line 47
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v13, v1}, Lf1/o;->w(II)V

    .line 48
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v12, v1}, Lf1/o;->w(II)V

    .line 49
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v9, v1}, Lf1/o;->w(II)V

    .line 50
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v5, v1}, Lf1/o;->w(II)V

    goto :goto_2

    .line 51
    :cond_6
    :goto_3
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v11, v1}, Lf1/o;->w(II)V

    goto :goto_1

    .line 52
    :cond_7
    :pswitch_3
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v1}, Lf1/o;->w(II)V

    .line 53
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v3, v7, v1}, Lf1/o;->w(II)V

    .line 54
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v3, v8, v1}, Lf1/o;->w(II)V

    .line 55
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v1}, Lf1/o;->w(II)V

    .line 56
    invoke-static {}, Lg/f;->g()I

    move-result v3

    if-ne v3, v10, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_2

    :cond_8
    :pswitch_4
    if-ne v2, v7, :cond_9

    .line 57
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    iget-object v3, v0, Lg/m;->P0:Lf1/q$b;

    invoke-virtual {v2, v1, v3}, Lf1/o;->y(ILf1/q$b;)V

    .line 58
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v1}, Lf1/o;->d(I)Lf1/q;

    move-result-object v2

    check-cast v2, Lf1/a;

    .line 59
    invoke-virtual {v2, v6}, Lf1/a;->d0(Z)V

    .line 60
    :cond_9
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Lf1/o;->w(II)V

    .line 61
    iget-boolean v4, v0, Lchip/Chip;->E:Z

    goto :goto_5

    .line 62
    :cond_a
    iget-boolean v2, v0, Lchip/Chip;->E:Z

    xor-int/lit8 v4, v2, 0x1

    :goto_4
    move v3, v6

    :goto_5
    if-eqz v4, :cond_b

    .line 63
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v1, v3}, Lf1/o;->C(II)Z

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->m()Z

    move-result v0

    iput-boolean v0, p0, Lchip/Chip;->E:Z

    .line 2
    invoke-static {v0}, Lg/f;->d(Z)V

    .line 3
    invoke-static {}, Lg/f;->s()Z

    move-result v0

    const-string v1, "persist.fyt.ui.txz"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    const-string v2, "com.syu.doublecamera"

    .line 5
    invoke-static {v2, v1}, Lu0/d;->m0(Ljava/lang/String;Z)V

    .line 6
    :cond_0
    sget-object v1, La/b;->O:Ljava/lang/String;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lu0/d;->m0(Ljava/lang/String;Z)V

    .line 7
    sget-object v1, La/b;->V:Ljava/lang/String;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lu0/d;->m0(Ljava/lang/String;Z)V

    .line 8
    sget-object v1, La/b;->b0:Ljava/lang/String;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lu0/d;->m0(Ljava/lang/String;Z)V

    .line 9
    sget-object v1, La/b;->Z:Ljava/lang/String;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lu0/d;->m0(Ljava/lang/String;Z)V

    return-void
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "32107"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/dev/i2c-2"

    return-object p1

    :cond_0
    const-string p1, "/dev/i2c-4"

    return-object p1
.end method
