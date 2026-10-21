.class public Lk0/hf$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hf;


# direct methods
.method public constructor <init>(Lk0/hf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/hf;->h3(Lk0/hf;F)F

    .line 2
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0, v1}, Lk0/hf;->i3(Lk0/hf;F)F

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0, v1}, Lk0/hf;->i3(Lk0/hf;F)F

    .line 6
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v1, v3

    invoke-static {v0, v3}, Lk0/hf;->h3(Lk0/hf;F)F

    .line 7
    :cond_1
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x4036800000000000L    # 22.5

    cmpg-double v0, v3, v5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v10, v0

    const-wide v12, 0x4075180000000000L    # 337.5

    cmpl-double v0, v10, v12

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0, v9}, Lk0/hf;->k3(Lk0/hf;I)I

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v5

    const-wide v1, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_5

    .line 10
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0, v7}, Lk0/hf;->k3(Lk0/hf;I)I

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_6

    .line 12
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0, v4}, Lk0/hf;->k3(Lk0/hf;I)I

    goto/16 :goto_0

    .line 13
    :cond_6
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_7

    .line 14
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0, v3}, Lk0/hf;->k3(Lk0/hf;I)I

    goto/16 :goto_0

    .line 15
    :cond_7
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_8

    .line 16
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0, v8}, Lk0/hf;->k3(Lk0/hf;I)I

    goto :goto_0

    .line 17
    :cond_8
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x406ef00000000000L    # 247.5

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_9

    .line 18
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lk0/hf;->k3(Lk0/hf;I)I

    goto :goto_0

    .line 19
    :cond_9
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4072480000000000L    # 292.5

    if-ltz v0, :cond_a

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_a

    .line 20
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lk0/hf;->k3(Lk0/hf;I)I

    goto :goto_0

    .line 21
    :cond_a
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    if-lez v0, :cond_b

    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v12

    if-gez v0, :cond_b

    .line 22
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lk0/hf;->k3(Lk0/hf;I)I

    goto :goto_0

    .line 23
    :cond_b
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lk0/hf;->k3(Lk0/hf;I)I

    .line 24
    :goto_0
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->j3(Lk0/hf;)I

    move-result v0

    iget-object v1, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v1}, Lk0/hf;->l3(Lk0/hf;)I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 25
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v0

    float-to-int v0, v0

    .line 26
    iget-object v1, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v1}, Lk0/hf;->g3(Lk0/hf;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    rem-float/2addr v1, v2

    float-to-int v1, v1

    .line 27
    iget-object v2, p0, Lk0/hf$d;->a:Lk0/hf;

    const/16 v5, 0xca

    new-array v6, v8, [I

    aput v0, v6, v9

    aput v1, v6, v7

    aput v9, v6, v4

    const/16 v0, 0x80

    aput v0, v6, v3

    invoke-static {v2, v5, v8, v6}, Lk0/hf;->b3(Lk0/hf;II[I)V

    .line 28
    iget-object v0, p0, Lk0/hf$d;->a:Lk0/hf;

    invoke-static {v0}, Lk0/hf;->j3(Lk0/hf;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/hf;->m3(Lk0/hf;I)I

    :cond_c
    return-void
.end method
