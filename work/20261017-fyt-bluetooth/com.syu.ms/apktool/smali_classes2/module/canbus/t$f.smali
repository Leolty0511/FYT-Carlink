.class public Lmodule/canbus/t$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/t;


# direct methods
.method public constructor <init>(Lmodule/canbus/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    sget v2, Lu0/b;->t0:I

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v1, v2}, Lmodule/canbus/t;->o3(Lmodule/canbus/t;I)I

    .line 2
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    sget v2, Lu0/b;->s0:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lmodule/canbus/t;->r3(Lmodule/canbus/t;F)F

    .line 3
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 4
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v2}, Lmodule/canbus/t;->s3(Lmodule/canbus/t;F)F

    .line 5
    :cond_0
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 6
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v2}, Lmodule/canbus/t;->s3(Lmodule/canbus/t;F)F

    .line 7
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v2, v5

    invoke-static {v1, v5}, Lmodule/canbus/t;->r3(Lmodule/canbus/t;F)F

    .line 8
    :cond_1
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v5, v1

    const-wide v7, 0x4036800000000000L    # 22.5

    cmpg-double v1, v5, v7

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-gtz v1, :cond_2

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-gez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v3, v1

    const-wide v15, 0x4075180000000000L    # 337.5

    cmpl-double v1, v3, v15

    if-ltz v1, :cond_4

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 9
    :cond_3
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v10}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    goto/16 :goto_0

    .line 10
    :cond_4
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v7

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-lez v1, :cond_5

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpg-double v1, v7, v2

    if-gez v1, :cond_5

    .line 11
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v9}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    goto/16 :goto_0

    .line 12
    :cond_5
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-ltz v1, :cond_6

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpg-double v1, v7, v2

    if-gtz v1, :cond_6

    .line 13
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v14}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    goto/16 :goto_0

    .line 14
    :cond_6
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v1, :cond_7

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpg-double v1, v7, v2

    if-gez v1, :cond_7

    .line 15
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v6}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    goto/16 :goto_0

    .line 16
    :cond_7
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-ltz v1, :cond_8

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpg-double v1, v7, v2

    if-gtz v1, :cond_8

    .line 17
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v12}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    goto :goto_0

    .line 18
    :cond_8
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    const-wide v2, 0x406ef00000000000L    # 247.5

    if-lez v1, :cond_9

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpg-double v1, v7, v2

    if-gez v1, :cond_9

    .line 19
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v11}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    goto :goto_0

    .line 20
    :cond_9
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    const-wide v2, 0x4072480000000000L    # 292.5

    if-ltz v1, :cond_a

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpg-double v1, v7, v2

    if-gtz v1, :cond_a

    .line 21
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v13}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    goto :goto_0

    .line 22
    :cond_a
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_b

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->q3(Lmodule/canbus/t;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v15

    if-gez v1, :cond_b

    .line 23
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v5}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    goto :goto_0

    .line 24
    :cond_b
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1, v14}, Lmodule/canbus/t;->u3(Lmodule/canbus/t;I)I

    .line 25
    :goto_0
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v1

    iget-object v2, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v2}, Lmodule/canbus/t;->v3(Lmodule/canbus/t;)I

    move-result v2

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->t3(Lmodule/canbus/t;)I

    move-result v1

    iget-object v2, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v2}, Lmodule/canbus/t;->x3(Lmodule/canbus/t;)I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 26
    :cond_c
    sget v1, Lu0/b;->X1:I

    if-le v1, v13, :cond_e

    .line 27
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v1

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 28
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    const/high16 v3, 0x10000

    invoke-static {v1}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v4

    sub-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-static {v1, v3}, Lmodule/canbus/t;->o3(Lmodule/canbus/t;I)I

    .line 29
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v1

    const/16 v3, 0x64

    if-le v1, v3, :cond_d

    .line 30
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Lmodule/canbus/t;->o3(Lmodule/canbus/t;I)I

    :cond_d
    const/16 v1, 0x8

    new-array v2, v1, [I

    const/16 v3, 0xe3

    aput v3, v2, v14

    aput v11, v2, v12

    const/16 v3, -0x1c

    aput v3, v2, v13

    aput v14, v2, v10

    aput v14, v2, v6

    .line 31
    iget-object v3, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v3}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v3

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v11

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v9

    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->t3(Lmodule/canbus/t;)I

    move-result v1

    aput v1, v2, v5

    invoke-static {v2}, Lz/k;->s([I)V

    const/16 v1, 0x73

    new-array v2, v12, [I

    .line 32
    iget-object v3, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v3}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v3

    aput v3, v2, v14

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 33
    :cond_e
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->m3(Lmodule/canbus/t;)I

    move-result v2

    invoke-static {v1, v2}, Lmodule/canbus/t;->w3(Lmodule/canbus/t;I)I

    .line 34
    iget-object v1, v0, Lmodule/canbus/t$f;->a:Lmodule/canbus/t;

    invoke-static {v1}, Lmodule/canbus/t;->t3(Lmodule/canbus/t;)I

    move-result v2

    invoke-static {v1, v2}, Lmodule/canbus/t;->y3(Lmodule/canbus/t;I)I

    :cond_f
    return-void
.end method
