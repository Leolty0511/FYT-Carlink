.class public Lk0/pc$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pc;


# direct methods
.method public constructor <init>(Lk0/pc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/pc;->o3(Lk0/pc;F)F

    .line 2
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0, v1}, Lk0/pc;->p3(Lk0/pc;F)F

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0, v1}, Lk0/pc;->p3(Lk0/pc;F)F

    .line 6
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v1, v3

    invoke-static {v0, v3}, Lk0/pc;->o3(Lk0/pc;F)F

    .line 7
    :cond_1
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x4036800000000000L    # 22.5

    cmpg-double v0, v3, v5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v11, v0

    const-wide v13, 0x4075180000000000L    # 337.5

    cmpl-double v0, v11, v13

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0, v8}, Lk0/pc;->r3(Lk0/pc;I)I

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v5

    const-wide v1, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_5

    .line 10
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0, v10}, Lk0/pc;->r3(Lk0/pc;I)I

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_6

    .line 12
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0, v9}, Lk0/pc;->r3(Lk0/pc;I)I

    goto/16 :goto_0

    .line 13
    :cond_6
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_7

    .line 14
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0, v4}, Lk0/pc;->r3(Lk0/pc;I)I

    goto/16 :goto_0

    .line 15
    :cond_7
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_8

    .line 16
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0, v3}, Lk0/pc;->r3(Lk0/pc;I)I

    goto :goto_0

    .line 17
    :cond_8
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x406ef00000000000L    # 247.5

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_9

    .line 18
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0, v7}, Lk0/pc;->r3(Lk0/pc;I)I

    goto :goto_0

    .line 19
    :cond_9
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4072480000000000L    # 292.5

    if-ltz v0, :cond_a

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_a

    .line 20
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lk0/pc;->r3(Lk0/pc;I)I

    goto :goto_0

    .line 21
    :cond_a
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    if-lez v0, :cond_b

    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->n3(Lk0/pc;)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v13

    if-gez v0, :cond_b

    .line 22
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lk0/pc;->r3(Lk0/pc;I)I

    goto :goto_0

    .line 23
    :cond_b
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lk0/pc;->r3(Lk0/pc;I)I

    .line 24
    :goto_0
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->q3(Lk0/pc;)I

    move-result v0

    iget-object v1, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v1}, Lk0/pc;->s3(Lk0/pc;)I

    move-result v1

    if-eq v0, v1, :cond_c

    new-array v0, v7, [I

    const/16 v1, 0xe3

    aput v1, v0, v8

    aput v9, v0, v10

    const/16 v1, 0x9d

    aput v1, v0, v9

    aput v10, v0, v4

    .line 25
    iget-object v1, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v1}, Lk0/pc;->q3(Lk0/pc;)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 26
    iget-object v0, p0, Lk0/pc$e;->a:Lk0/pc;

    invoke-static {v0}, Lk0/pc;->q3(Lk0/pc;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/pc;->t3(Lk0/pc;I)I

    :cond_c
    return-void
.end method
