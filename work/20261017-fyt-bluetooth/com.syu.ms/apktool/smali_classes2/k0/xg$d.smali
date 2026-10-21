.class public Lk0/xg$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xg;


# direct methods
.method public constructor <init>(Lk0/xg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xg$d;->a:Lk0/xg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    sget v2, Lu0/b;->s0:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lk0/xg;->c3(Lk0/xg;F)F

    .line 2
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 3
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v2}, Lk0/xg;->d3(Lk0/xg;F)F

    .line 4
    :cond_0
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 5
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v2}, Lk0/xg;->d3(Lk0/xg;F)F

    .line 6
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v2, v4

    invoke-static {v1, v4}, Lk0/xg;->c3(Lk0/xg;F)F

    .line 7
    :cond_1
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v4, v1

    const-wide v6, 0x4036800000000000L    # 22.5

    cmpg-double v1, v4, v6

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x0

    if-gtz v1, :cond_2

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-gez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v14, v1

    const-wide v16, 0x4075180000000000L    # 337.5

    cmpl-double v1, v14, v16

    if-ltz v1, :cond_4

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 8
    :cond_3
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v13}, Lk0/xg;->f3(Lk0/xg;I)I

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v6

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-lez v1, :cond_5

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gez v1, :cond_5

    .line 10
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v11}, Lk0/xg;->f3(Lk0/xg;I)I

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-ltz v1, :cond_6

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_6

    .line 12
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v9}, Lk0/xg;->f3(Lk0/xg;I)I

    goto/16 :goto_0

    .line 13
    :cond_6
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v1, :cond_7

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gez v1, :cond_7

    .line 14
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v8}, Lk0/xg;->f3(Lk0/xg;I)I

    goto/16 :goto_0

    .line 15
    :cond_7
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-ltz v1, :cond_8

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_8

    .line 16
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v12}, Lk0/xg;->f3(Lk0/xg;I)I

    goto :goto_0

    .line 17
    :cond_8
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x406ef00000000000L    # 247.5

    if-lez v1, :cond_9

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gez v1, :cond_9

    .line 18
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v5}, Lk0/xg;->f3(Lk0/xg;I)I

    goto :goto_0

    .line 19
    :cond_9
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    const-wide v2, 0x4072480000000000L    # 292.5

    if-ltz v1, :cond_a

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_a

    .line 20
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v4}, Lk0/xg;->f3(Lk0/xg;I)I

    goto :goto_0

    .line 21
    :cond_a
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v2

    if-lez v1, :cond_b

    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v16

    if-gez v1, :cond_b

    .line 22
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1, v10}, Lk0/xg;->f3(Lk0/xg;I)I

    goto :goto_0

    .line 23
    :cond_b
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lk0/xg;->f3(Lk0/xg;I)I

    .line 24
    :goto_0
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->e3(Lk0/xg;)I

    move-result v1

    iget-object v2, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v2}, Lk0/xg;->g3(Lk0/xg;)I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 25
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v1

    float-to-int v1, v1

    .line 26
    iget-object v2, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v2}, Lk0/xg;->b3(Lk0/xg;)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    rem-float/2addr v2, v3

    float-to-int v2, v2

    new-array v3, v10, [I

    const/16 v6, 0xe3

    aput v6, v3, v13

    const/16 v6, 0xca

    aput v6, v3, v11

    aput v12, v3, v9

    aput v1, v3, v8

    aput v2, v3, v12

    aput v13, v3, v5

    const/16 v1, 0x80

    aput v1, v3, v4

    .line 27
    invoke-static {v3}, Lz/k;->s([I)V

    .line 28
    iget-object v1, v0, Lk0/xg$d;->a:Lk0/xg;

    invoke-static {v1}, Lk0/xg;->e3(Lk0/xg;)I

    move-result v2

    invoke-static {v1, v2}, Lk0/xg;->h3(Lk0/xg;I)I

    :cond_c
    return-void
.end method
