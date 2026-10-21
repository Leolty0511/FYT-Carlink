.class public Lk0/i9$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/i9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/i9;


# direct methods
.method public constructor <init>(Lk0/i9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/i9;->i3(Lk0/i9;F)F

    .line 2
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    float-to-double v8, v0

    const-wide v10, 0x4075e00000000000L    # 350.0

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_2

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v8, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0, v7}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    if-lez v0, :cond_3

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 5
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0, v4}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    if-lez v0, :cond_4

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 7
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0, v6}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 9
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0, v5}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    if-lez v0, :cond_6

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 11
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0, v2}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 13
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0, v3}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 14
    :cond_7
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x428c0000    # 70.0f

    if-lez v0, :cond_8

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 15
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 16
    :cond_8
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42a00000    # 80.0f

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 17
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 18
    :cond_9
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    if-lez v0, :cond_a

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 19
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 20
    :cond_a
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42dc0000    # 110.0f

    if-lez v0, :cond_b

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 21
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 22
    :cond_b
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    if-lez v0, :cond_c

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 23
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 24
    :cond_c
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43020000    # 130.0f

    if-lez v0, :cond_d

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 25
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 26
    :cond_d
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x430c0000    # 140.0f

    if-lez v0, :cond_e

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 27
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 28
    :cond_e
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    if-lez v0, :cond_f

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    .line 29
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 30
    :cond_f
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    if-lez v0, :cond_10

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 31
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 32
    :cond_10
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x432a0000    # 170.0f

    if-lez v0, :cond_11

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    .line 33
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 34
    :cond_11
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x433e0000    # 190.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 35
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 36
    :cond_12
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x433e0000    # 190.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 37
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 38
    :cond_13
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43520000    # 210.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 39
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 40
    :cond_14
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43520000    # 210.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    .line 41
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 42
    :cond_15
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x435c0000    # 220.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43660000    # 230.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 43
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 44
    :cond_16
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43660000    # 230.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43700000    # 240.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    .line 45
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 46
    :cond_17
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43700000    # 240.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    .line 47
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 48
    :cond_18
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43820000    # 260.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    .line 49
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 50
    :cond_19
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43820000    # 260.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x438c0000    # 280.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    .line 51
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 52
    :cond_1a
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x438c0000    # 280.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43910000    # 290.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    .line 53
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 54
    :cond_1b
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43910000    # 290.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    .line 55
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 56
    :cond_1c
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x439b0000    # 310.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    .line 57
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto/16 :goto_0

    .line 58
    :cond_1d
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x439b0000    # 310.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43a00000    # 320.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    .line 59
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto :goto_0

    .line 60
    :cond_1e
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43a00000    # 320.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43a50000    # 330.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f

    .line 61
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto :goto_0

    .line 62
    :cond_1f
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43a50000    # 330.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43aa0000    # 340.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    .line 63
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto :goto_0

    .line 64
    :cond_20
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43aa0000    # 340.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->h3(Lk0/i9;)F

    move-result v0

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_21

    .line 65
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lk0/i9;->k3(Lk0/i9;I)I

    goto :goto_0

    .line 66
    :cond_21
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0, v5}, Lk0/i9;->k3(Lk0/i9;I)I

    .line 67
    :goto_0
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->j3(Lk0/i9;)I

    move-result v0

    iget-object v1, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v1}, Lk0/i9;->l3(Lk0/i9;)I

    move-result v1

    if-eq v0, v1, :cond_22

    new-array v0, v3, [I

    const/16 v1, 0xe3

    aput v1, v0, v7

    const/16 v1, 0x86

    aput v1, v0, v4

    aput v6, v0, v6

    .line 68
    iget-object v1, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v1}, Lk0/i9;->j3(Lk0/i9;)I

    move-result v1

    aput v1, v0, v5

    aput v7, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 69
    iget-object v0, p0, Lk0/i9$e;->a:Lk0/i9;

    invoke-static {v0}, Lk0/i9;->j3(Lk0/i9;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/i9;->m3(Lk0/i9;I)I

    :cond_22
    return-void
.end method
