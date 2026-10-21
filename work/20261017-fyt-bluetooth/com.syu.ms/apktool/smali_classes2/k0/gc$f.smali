.class public Lk0/gc$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gc;


# direct methods
.method public constructor <init>(Lk0/gc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/gc;->o3(Lk0/gc;F)F

    .line 2
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4026800000000000L    # 11.25

    cmpg-double v0, v0, v2

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/4 v9, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    const/4 v10, 0x0

    cmpl-float v0, v0, v10

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    const-wide v12, 0x4075cc0000000000L    # 348.75

    cmpl-double v0, v10, v12

    if-ltz v0, :cond_2

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    const/high16 v10, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0, v9}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x4040e00000000000L    # 33.75

    if-lez v0, :cond_3

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_3

    .line 5
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/16 v2, 0xf

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x404c200000000000L    # 56.25

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gtz v0, :cond_4

    .line 7
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/16 v2, 0xe

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x4053b00000000000L    # 78.75

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_5

    .line 9
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x4059500000000000L    # 101.25

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gtz v0, :cond_6

    .line 11
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x405ef00000000000L    # 123.75

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_7

    .line 13
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/16 v2, 0xb

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 14
    :cond_7
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x4062480000000000L    # 146.25

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gtz v0, :cond_8

    .line 15
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 16
    :cond_8
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x4065180000000000L    # 168.75

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_9

    .line 17
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 18
    :cond_9
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x4067e80000000000L    # 191.25

    if-lez v0, :cond_a

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_a

    .line 19
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 20
    :cond_a
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x406ab80000000000L    # 213.75

    if-lez v0, :cond_b

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_b

    .line 21
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 22
    :cond_b
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x406d880000000000L    # 236.25

    if-lez v0, :cond_c

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_c

    .line 23
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0, v6}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 24
    :cond_c
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x40702c0000000000L    # 258.75

    if-lez v0, :cond_d

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_d

    .line 25
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0, v8}, Lk0/gc;->q3(Lk0/gc;I)I

    goto/16 :goto_0

    .line 26
    :cond_d
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x4071940000000000L    # 281.25

    if-lez v0, :cond_e

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_e

    .line 27
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0, v1}, Lk0/gc;->q3(Lk0/gc;I)I

    goto :goto_0

    .line 28
    :cond_e
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    const-wide v2, 0x4072fc0000000000L    # 303.75

    if-lez v0, :cond_f

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v10, v2

    if-gez v0, :cond_f

    .line 29
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0, v4}, Lk0/gc;->q3(Lk0/gc;I)I

    goto :goto_0

    .line 30
    :cond_f
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v2

    if-lez v0, :cond_10

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v2, v0

    const-wide v10, 0x4074640000000000L    # 326.25

    cmpg-double v0, v2, v10

    if-gez v0, :cond_10

    .line 31
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0, v5}, Lk0/gc;->q3(Lk0/gc;I)I

    goto :goto_0

    .line 32
    :cond_10
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v2, v0

    const-wide v10, 0x4074640000000000L    # 326.25

    cmpl-double v0, v2, v10

    if-lez v0, :cond_11

    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->n3(Lk0/gc;)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v12

    if-gez v0, :cond_11

    .line 33
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0, v7}, Lk0/gc;->q3(Lk0/gc;I)I

    goto :goto_0

    .line 34
    :cond_11
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0, v9}, Lk0/gc;->q3(Lk0/gc;I)I

    .line 35
    :goto_0
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->p3(Lk0/gc;)I

    move-result v0

    iget-object v2, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v2}, Lk0/gc;->r3(Lk0/gc;)I

    move-result v2

    if-eq v0, v2, :cond_12

    new-array v0, v8, [I

    const/16 v2, 0xe3

    aput v2, v0, v9

    aput v6, v0, v7

    const/16 v2, 0x86

    aput v2, v0, v5

    .line 36
    iget-object v2, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v2}, Lk0/gc;->p3(Lk0/gc;)I

    move-result v2

    aput v2, v0, v4

    aput v9, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 37
    iget-object v0, p0, Lk0/gc$f;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->p3(Lk0/gc;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/gc;->s3(Lk0/gc;I)I

    :cond_12
    return-void
.end method
