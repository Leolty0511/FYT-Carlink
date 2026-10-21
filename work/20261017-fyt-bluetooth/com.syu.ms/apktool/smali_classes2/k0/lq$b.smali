.class public Lk0/lq$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lq;


# direct methods
.method public constructor <init>(Lk0/lq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lq$b;->a:Lk0/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    sget v2, Lu0/b;->s0:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lk0/lq;->g3(Lk0/lq;F)F

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->s0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 4
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v2}, Lk0/lq;->h3(Lk0/lq;F)F

    .line 5
    :cond_0
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 6
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v2}, Lk0/lq;->h3(Lk0/lq;F)F

    .line 7
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v2, v4

    invoke-static {v1, v4}, Lk0/lq;->g3(Lk0/lq;F)F

    .line 8
    :cond_1
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x6

    new-array v5, v4, [I

    const/4 v6, 0x0

    const/16 v7, 0xe3

    aput v7, v5, v6

    const/4 v8, 0x1

    const/16 v9, -0x60

    aput v9, v5, v8

    const/4 v10, 0x2

    const/4 v11, 0x3

    aput v11, v5, v10

    const/16 v12, 0xf

    aput v12, v5, v11

    and-int/lit16 v12, v1, 0xff

    int-to-byte v12, v12

    const/4 v13, 0x4

    aput v12, v5, v13

    const/16 v12, 0x8

    shr-int/2addr v1, v12

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v14, 0x5

    aput v1, v5, v14

    .line 9
    invoke-static {v5}, Lz/k;->s([I)V

    .line 10
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    const-wide v15, 0x4036800000000000L    # 22.5

    cmpg-double v1, v6, v15

    if-gtz v1, :cond_2

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-gez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    const-wide v17, 0x4075180000000000L    # 337.5

    cmpl-double v1, v6, v17

    if-ltz v1, :cond_4

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 11
    :cond_3
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v8}, Lk0/lq;->j3(Lk0/lq;I)I

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 12
    :cond_4
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v15

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-lez v1, :cond_5

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gez v1, :cond_5

    .line 13
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v10}, Lk0/lq;->j3(Lk0/lq;I)I

    goto :goto_0

    .line 14
    :cond_5
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-ltz v1, :cond_6

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_6

    .line 15
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v11}, Lk0/lq;->j3(Lk0/lq;I)I

    goto :goto_0

    .line 16
    :cond_6
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v1, :cond_7

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gez v1, :cond_7

    .line 17
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v13}, Lk0/lq;->j3(Lk0/lq;I)I

    goto :goto_0

    .line 18
    :cond_7
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-ltz v1, :cond_8

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_8

    .line 19
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v14}, Lk0/lq;->j3(Lk0/lq;I)I

    goto/16 :goto_0

    .line 20
    :cond_8
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x406ef00000000000L    # 247.5

    if-lez v1, :cond_9

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gez v1, :cond_9

    .line 21
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v4}, Lk0/lq;->j3(Lk0/lq;I)I

    goto/16 :goto_0

    .line 22
    :cond_9
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x4072480000000000L    # 292.5

    if-ltz v1, :cond_a

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_a

    .line 23
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lk0/lq;->j3(Lk0/lq;I)I

    goto/16 :goto_0

    .line 24
    :cond_a
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    if-lez v1, :cond_b

    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->f3(Lk0/lq;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v17

    if-gez v1, :cond_b

    .line 25
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1, v12}, Lk0/lq;->j3(Lk0/lq;I)I

    goto/16 :goto_0

    .line 26
    :cond_b
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lk0/lq;->j3(Lk0/lq;I)I

    .line 27
    :goto_1
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->i3(Lk0/lq;)I

    move-result v1

    iget-object v3, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v3}, Lk0/lq;->k3(Lk0/lq;)I

    move-result v3

    if-eq v1, v3, :cond_c

    new-array v1, v14, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    aput v9, v1, v8

    aput v10, v1, v10

    const/16 v2, 0xe

    aput v2, v1, v11

    .line 28
    iget-object v2, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v2}, Lk0/lq;->i3(Lk0/lq;)I

    move-result v2

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    .line 29
    iget-object v1, v0, Lk0/lq$b;->a:Lk0/lq;

    invoke-static {v1}, Lk0/lq;->i3(Lk0/lq;)I

    move-result v2

    invoke-static {v1, v2}, Lk0/lq;->l3(Lk0/lq;I)I

    :cond_c
    return-void
.end method
