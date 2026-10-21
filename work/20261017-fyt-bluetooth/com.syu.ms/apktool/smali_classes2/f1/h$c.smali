.class public Lf1/h$c;
.super Lf1/s$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public n:I

.field public o:Z

.field public p:Lq1/b;

.field public q:Lq1/b;

.field public final synthetic r:Lf1/h;


# direct methods
.method public varargs constructor <init>(Lf1/h;IIZ[I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf1/h$c;->r:Lf1/h;

    invoke-direct {p0, p1}, Lf1/s$a;-><init>(Lf1/s;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lf1/h$c;->n:I

    .line 3
    iput-boolean p1, p0, Lf1/h$c;->o:Z

    .line 4
    new-instance p1, Lq1/b;

    const/4 v0, -0x1

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lq1/b;-><init>(II)V

    iput-object p1, p0, Lf1/h$c;->p:Lq1/b;

    .line 5
    new-instance p1, Lq1/b;

    invoke-direct {p1, v0, v1}, Lq1/b;-><init>(II)V

    iput-object p1, p0, Lf1/h$c;->q:Lq1/b;

    .line 6
    iput p2, p0, Lf1/s$a;->b:I

    .line 7
    iput p3, p0, Lf1/s$a;->c:I

    .line 8
    iput-boolean p4, p0, Lf1/s$a;->a:Z

    .line 9
    new-instance p1, Lq1/b;

    const/4 p2, 0x3

    invoke-direct {p1, v0, p2}, Lq1/b;-><init>(II)V

    iput-object p1, p0, Lf1/s$a;->i:Lq1/b;

    .line 10
    new-instance p1, Lq1/b;

    invoke-direct {p1, v0, p2}, Lq1/b;-><init>(II)V

    iput-object p1, p0, Lf1/s$a;->j:Lq1/b;

    if-eqz p5, :cond_0

    .line 11
    array-length p1, p5

    if-lez p1, :cond_0

    .line 12
    array-length p1, p5

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget p3, p5, p2

    .line 13
    iget-object p4, p0, Lf1/s$a;->e:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf1/h$c;->o()V

    return-void
.end method

.method public c()Z
    .locals 12

    .line 1
    iget v0, p0, Lf1/s$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lf1/s$a;->l:Z

    const/4 v3, -0x1

    if-nez v2, :cond_1

    sget v2, Lf1/q;->L:I

    if-eq v0, v2, :cond_1

    .line 3
    iput v3, p0, Lf1/s$a;->h:I

    .line 4
    :cond_1
    iget v0, p0, Lf1/s$a;->h:I

    if-gt v0, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_b

    const-string v5, "AHD"

    const-string v6, "TVI"

    if-eq v0, v3, :cond_8

    const/4 v7, 0x3

    if-eq v0, v7, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v5, 0x7

    if-eq v0, v5, :cond_3

    const-string v0, "VIDEO_UNKNOW"

    move-object v5, v0

    move v0, v1

    goto :goto_4

    :cond_3
    const v0, 0x7f03003c

    const-string v5, "VIDEO_NP_R1080P30"

    goto :goto_4

    :cond_4
    const v0, 0x7f03003b

    const-string v5, "VIDEO_NP_R1080P25"

    goto :goto_4

    .line 5
    :cond_5
    iget-boolean v0, p0, Lf1/h$c;->o:Z

    if-eqz v0, :cond_6

    const v0, 0x7f03003f

    goto :goto_0

    :cond_6
    const v0, 0x7f030040

    .line 6
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIDEO_NP_R720P30_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lf1/h$c;->o:Z

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, v6

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 7
    :cond_8
    iget-boolean v0, p0, Lf1/h$c;->o:Z

    if-eqz v0, :cond_9

    const v0, 0x7f03003d

    goto :goto_2

    :cond_9
    const v0, 0x7f03003e

    .line 8
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIDEO_NP_R720P25_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lf1/h$c;->o:Z

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    move-object v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_b
    const v0, 0x7f030042

    const-string v5, "VIDEO_NP_PAL"

    goto :goto_4

    :cond_c
    const v0, 0x7f030041

    const-string v5, "VIDEO_NP_NTSC"

    :goto_4
    if-nez v0, :cond_d

    return v1

    .line 9
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSignal  index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf1/s$a;->b:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " videoFormat:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " hasSignal:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lf1/s$a;->l:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Chip6854"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v6, p0, Lf1/h$c;->r:Lf1/h;

    new-array v10, v3, [I

    const/16 v11, 0xff

    aput v11, v10, v1

    iget v11, p0, Lf1/s$a;->b:I

    aput v11, v10, v4

    invoke-virtual {v6, v10}, Lf1/s;->Z([I)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v4

    goto :goto_5

    :cond_e
    move v6, v1

    :goto_5
    const/16 v10, 0x10

    if-eqz v6, :cond_f

    .line 11
    iget-object v6, p0, Lf1/h$c;->r:Lf1/h;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v11

    invoke-static {v11, v0, v10}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {v6, v0}, Lf1/s;->q([I)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    goto :goto_6

    :cond_f
    move v0, v1

    :goto_6
    if-eqz v0, :cond_10

    .line 12
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    new-array v6, v3, [I

    const/16 v11, 0x56

    aput v11, v6, v1

    iget v11, p0, Lf1/h$c;->n:I

    aput v11, v6, v4

    invoke-virtual {v0, v6}, Lf1/s;->Z([I)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_7

    :cond_10
    move v0, v1

    :goto_7
    if-eqz v0, :cond_11

    .line 13
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    new-array v3, v3, [I

    const/16 v6, 0x3f

    aput v6, v3, v1

    iget v6, p0, Lf1/s$a;->c:I

    or-int/2addr v6, v10

    aput v6, v3, v4

    invoke-virtual {v0, v3}, Lf1/s;->Z([I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    move v4, v1

    .line 14
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/s$a;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  ret : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget v0, p0, Lf1/s$a;->c:I

    sget v3, Lf1/q;->O:I

    if-ne v0, v3, :cond_12

    iget v0, p0, Lf1/s$a;->h:I

    if-ne v0, v2, :cond_12

    const-string v0, "persist.lsec.chip6854.fix_params"

    const-string v2, ""

    .line 16
    invoke-static {v0, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 18
    invoke-static {v0}, Lo1/s0;->D(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_12

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-static {v0, v1, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v1, p0, Lf1/h$c;->r:Lf1/h;

    invoke-virtual {v1, v0}, Lf1/s;->Z([I)Z

    :cond_12
    return v4
.end method

.method public f()Z
    .locals 11

    .line 1
    iget v0, p0, Lf1/s$a;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lf1/s$a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget-boolean v0, v0, Lf1/h;->c0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/16 v3, 0xff

    if-nez v0, :cond_2

    .line 2
    iget-object v4, p0, Lf1/h$c;->r:Lf1/h;

    const/16 v5, 0xd3

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Lf1/q;->V(II)I

    .line 3
    iget-object v4, p0, Lf1/h$c;->r:Lf1/h;

    iget v5, p0, Lf1/s$a;->b:I

    invoke-virtual {v4, v3, v5}, Lf1/q;->V(II)I

    .line 4
    iget-object v4, p0, Lf1/h$c;->r:Lf1/h;

    invoke-virtual {v4, v1}, Lf1/q;->A(I)I

    move-result v4

    shr-int/lit8 v5, v4, 0x4

    and-int/2addr v5, v2

    goto :goto_2

    :cond_2
    move v5, v2

    move v4, v3

    .line 5
    :goto_2
    iget-object v6, p0, Lf1/h$c;->r:Lf1/h;

    iget-object v6, v6, Lf1/s;->R:Lo1/l0;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lo1/l0;->c(I)Z

    move-result v6

    const-string v7, "Chip6854"

    if-eqz v6, :cond_3

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSignal  index : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf1/s$a;->b:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ret : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    const-string v4, " value: %02X"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " videoFormat: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/s$a;->h:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isReady :"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf1/h$c;->r:Lf1/h;

    iget-boolean v4, v4, Lf1/h;->a0:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v4, p0, Lf1/s$a;->c:I

    sget v6, Lf1/q;->O:I

    if-ne v4, v6, :cond_3

    .line 8
    iget-object v4, p0, Lf1/h$c;->p:Lq1/b;

    iget-object v6, p0, Lf1/h$c;->r:Lf1/h;

    const/16 v8, 0x7b

    invoke-virtual {v6, v8}, Lf1/q;->A(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lq1/b;->g(I)I

    .line 9
    iget-object v4, p0, Lf1/h$c;->q:Lq1/b;

    iget-object v6, p0, Lf1/h$c;->r:Lf1/h;

    const/16 v8, 0x7e

    invoke-virtual {v6, v8}, Lf1/q;->A(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lq1/b;->g(I)I

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSignal Reg 7B: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lf1/h$c;->p:Lq1/b;

    invoke-virtual {v8}, Lq1/b;->d()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    const-string v8, "%02X"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Reg 7E: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lf1/h$c;->q:Lq1/b;

    invoke-virtual {v9}, Lq1/b;->d()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v1

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v5, :cond_4

    .line 11
    iget-object v4, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v4, v2}, Lq1/b;->g(I)I

    goto :goto_3

    .line 12
    :cond_4
    iget-object v4, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v4, v1}, Lq1/b;->g(I)I

    .line 13
    :goto_3
    iget-object v4, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v4}, Lq1/b;->d()I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-ne v4, v2, :cond_d

    if-eqz v0, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    invoke-virtual {v0, v1}, Lf1/q;->A(I)I

    move-result v0

    and-int/lit16 v3, v0, 0xf1

    .line 15
    :goto_4
    iget v0, p0, Lf1/s$a;->c:I

    sget v4, Lf1/q;->L:I

    if-ne v0, v4, :cond_6

    .line 16
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget v0, v0, Lf1/h;->Y:I

    invoke-virtual {p0, v0}, Lf1/s$a;->d(I)I

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_c

    if-eq v3, v2, :cond_b

    const/16 v0, 0x20

    if-eq v3, v0, :cond_a

    const/16 v0, 0x21

    if-eq v3, v0, :cond_9

    const/16 v0, 0x40

    if-eq v3, v0, :cond_8

    const/16 v0, 0x41

    if-eq v3, v0, :cond_7

    const/16 v0, 0x80

    if-eq v3, v0, :cond_c

    const/16 v0, 0x81

    if-eq v3, v0, :cond_b

    const/16 v0, 0xa0

    if-eq v3, v0, :cond_a

    const/16 v0, 0xa1

    if-eq v3, v0, :cond_9

    const/16 v0, 0xc0

    if-eq v3, v0, :cond_8

    const/16 v0, 0xc1

    if-eq v3, v0, :cond_7

    .line 17
    invoke-virtual {p0, v10}, Lf1/s$a;->d(I)I

    goto :goto_5

    .line 18
    :cond_7
    invoke-virtual {p0, v5}, Lf1/s$a;->d(I)I

    goto :goto_5

    .line 19
    :cond_8
    invoke-virtual {p0, v6}, Lf1/s$a;->d(I)I

    goto :goto_5

    .line 20
    :cond_9
    invoke-virtual {p0, v8}, Lf1/s$a;->d(I)I

    goto :goto_5

    .line 21
    :cond_a
    invoke-virtual {p0, v9}, Lf1/s$a;->d(I)I

    goto :goto_5

    .line 22
    :cond_b
    invoke-virtual {p0, v1}, Lf1/s$a;->d(I)I

    goto :goto_5

    .line 23
    :cond_c
    invoke-virtual {p0, v2}, Lf1/s$a;->d(I)I

    goto :goto_5

    .line 24
    :cond_d
    invoke-virtual {p0, v10}, Lf1/s$a;->d(I)I

    .line 25
    :goto_5
    iget-object v0, p0, Lf1/s$a;->i:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lf1/s$a;->i:Lq1/b;

    .line 26
    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    if-le v0, v10, :cond_e

    iget-object v0, p0, Lf1/s$a;->i:Lq1/b;

    iget v3, p0, Lf1/s$a;->h:I

    .line 27
    invoke-virtual {v0, v3}, Lq1/b;->f(I)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_6

    :cond_e
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lf1/s$a;->k:Z

    .line 28
    iget-object v0, p0, Lf1/s$a;->i:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    const/16 v3, 0x4b

    if-eq v0, v9, :cond_f

    iget-object v0, p0, Lf1/s$a;->i:Lq1/b;

    .line 29
    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    if-ne v0, v8, :cond_12

    .line 30
    :cond_f
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    invoke-virtual {v0, v3}, Lf1/q;->A(I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    if-eq v0, v2, :cond_10

    move v0, v2

    goto :goto_7

    :cond_10
    move v0, v1

    .line 31
    :goto_7
    iget-boolean v4, p0, Lf1/s$a;->k:Z

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lf1/h$c;->o:Z

    if-eq v0, v4, :cond_11

    .line 32
    iput-boolean v2, p0, Lf1/s$a;->k:Z

    .line 33
    :cond_11
    iput-boolean v0, p0, Lf1/h$c;->o:Z

    .line 34
    :cond_12
    iget-boolean v0, p0, Lf1/s$a;->k:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget-boolean v0, v0, Lf1/h;->a0:Z

    if-eqz v0, :cond_13

    .line 35
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    invoke-virtual {v0, v1}, Lf1/h;->o0(Z)V

    .line 36
    :cond_13
    iget-object v0, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 37
    iget-object v0, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    if-ne v0, v2, :cond_14

    move v0, v2

    goto :goto_8

    :cond_14
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lf1/s$a;->l:Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00 handleSignal  index : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/s$a;->b:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " signalMark.getValue():"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v4}, Lq1/b;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hasSignal:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf1/s$a;->l:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget-boolean v0, v0, Lf1/h;->a0:Z

    if-eqz v0, :cond_15

    .line 40
    invoke-virtual {p0}, Lf1/h$c;->o()V

    .line 41
    :cond_15
    iget-boolean v0, p0, Lf1/s$a;->k:Z

    if-eqz v0, :cond_1c

    .line 42
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    invoke-virtual {v0, v3}, Lf1/q;->A(I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    if-eq v0, v2, :cond_16

    move v0, v2

    goto :goto_9

    :cond_16
    move v0, v1

    .line 43
    :goto_9
    iput-boolean v0, p0, Lf1/h$c;->o:Z

    .line 44
    iget-object v0, p0, Lf1/s$a;->i:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    iput v0, p0, Lf1/s$a;->h:I

    if-eqz v0, :cond_18

    if-ne v0, v2, :cond_17

    goto :goto_a

    .line 45
    :cond_17
    iget v3, p0, Lf1/s$a;->c:I

    sget v4, Lf1/q;->L:I

    if-eq v3, v4, :cond_19

    .line 46
    iget-object v3, p0, Lf1/h$c;->r:Lf1/h;

    iget v4, v3, Lf1/h;->W:I

    iget v7, p0, Lf1/s$a;->b:I

    shl-int v7, v2, v7

    not-int v7, v7

    const v8, 0xffff

    and-int/2addr v7, v8

    and-int/2addr v4, v7

    iput v4, v3, Lf1/h;->W:I

    goto :goto_b

    .line 47
    :cond_18
    :goto_a
    iget-object v3, p0, Lf1/h$c;->r:Lf1/h;

    iget v4, v3, Lf1/h;->W:I

    iget v7, p0, Lf1/s$a;->b:I

    shl-int v7, v2, v7

    or-int/2addr v4, v7

    iput v4, v3, Lf1/h;->W:I

    :cond_19
    :goto_b
    if-eq v0, v6, :cond_1b

    if-ne v0, v5, :cond_1a

    goto :goto_c

    .line 48
    :cond_1a
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget v3, v0, Lf1/h;->U:I

    iget v4, p0, Lf1/s$a;->b:I

    shl-int v4, v2, v4

    not-int v4, v4

    and-int/lit8 v4, v4, 0xf

    and-int/2addr v3, v4

    iput v3, v0, Lf1/h;->U:I

    goto :goto_d

    .line 49
    :cond_1b
    :goto_c
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget v3, v0, Lf1/h;->U:I

    iget v4, p0, Lf1/s$a;->b:I

    shl-int v4, v2, v4

    or-int/2addr v3, v4

    iput v3, v0, Lf1/h;->U:I

    .line 50
    :goto_d
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget-boolean v0, v0, Lf1/h;->a0:Z

    if-eqz v0, :cond_1c

    .line 51
    invoke-virtual {p0}, Lf1/s$a;->n()V

    .line 52
    :cond_1c
    iget-object v0, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    if-ne v0, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method public g(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/16 v3, 0xff

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lf1/s$a;->b:I

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Lf1/s;->Z([I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    new-array v2, v1, [I

    aput v5, v2, v4

    aput p1, v2, v5

    invoke-virtual {v0, v2}, Lf1/s;->Z([I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lf1/h$c;->r:Lf1/h;

    new-array v0, v1, [I

    aput v1, v0, v4

    aput p3, v0, v5

    invoke-virtual {p1, v0}, Lf1/s;->Z([I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v5

    goto :goto_2

    :cond_2
    move p1, v4

    :goto_2
    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lf1/h$c;->r:Lf1/h;

    new-array p3, v1, [I

    const/4 v0, 0x3

    aput v0, p3, v4

    aput p2, p3, v5

    invoke-virtual {p1, p3}, Lf1/s;->Z([I)Z

    :cond_3
    return-void
.end method

.method public j()V
    .locals 6

    .line 1
    iget v0, p0, Lf1/s$a;->h:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget-object v0, v0, Lf1/q;->F:Landroid/util/SparseArray;

    iget v2, p0, Lf1/s$a;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v2}, Lf1/q$c;->a()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 5
    :cond_2
    iget-object v2, p0, Lf1/h$c;->r:Lf1/h;

    invoke-virtual {v2}, Lf1/h;->z()Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".di"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".v_act"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/s$a;->h:I

    if-nez v4, :cond_3

    const/16 v4, 0xf4

    goto :goto_1

    :cond_3
    const/16 v4, 0x120

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".v_blank"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/s$a;->h:I

    if-nez v2, :cond_4

    const/16 v2, 0x13

    goto :goto_2

    :cond_4
    const/16 v2, 0x19

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/s$a;->a:Z

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->a()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lf1/s$a;->k(Z)V

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf1/s$a;->m(I)V

    .line 2
    iget-boolean p1, p0, Lf1/s$a;->a:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lf1/h$c;->o()V

    .line 4
    invoke-virtual {p0}, Lf1/s$a;->n()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    iget v0, p0, Lf1/s$a;->h:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lf1/s$a;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf1/h$c;->r:Lf1/h;

    iget-boolean v0, v0, Lf1/h;->a0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf1/s$a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lf1/s$a;->d:I

    invoke-virtual {p0, v0, v1}, Lf1/s$a;->h(II)[I

    move-result-object v0

    const/16 v1, 0x45

    .line 2
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>>Multi updateSignalFlag  chipId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/h$c;->r:Lf1/h;

    iget v2, v2, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/s$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Signal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
