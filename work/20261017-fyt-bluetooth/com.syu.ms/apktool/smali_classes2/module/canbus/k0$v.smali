.class public Lmodule/canbus/k0$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k0;


# direct methods
.method public constructor <init>(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    iget v1, v0, Lmodule/canbus/k0;->I:I

    if-nez v1, :cond_12

    .line 2
    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lmodule/canbus/k0;->z3(Lmodule/canbus/k0;F)F

    .line 3
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4026800000000000L    # 11.25

    cmpg-double v0, v0, v2

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    const-wide v11, 0x4075cc0000000000L    # 348.75

    cmpl-double v0, v9, v11

    if-ltz v0, :cond_2

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    const/high16 v9, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v9

    if-gtz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0, v8}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4040e00000000000L    # 33.75

    if-lez v0, :cond_3

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_3

    .line 6
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0, v6}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x404c200000000000L    # 56.25

    if-ltz v0, :cond_4

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gtz v0, :cond_4

    .line 8
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0, v7}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4053b00000000000L    # 78.75

    if-lez v0, :cond_5

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_5

    .line 10
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0, v4}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4059500000000000L    # 101.25

    if-ltz v0, :cond_6

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gtz v0, :cond_6

    .line 12
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0, v1}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 13
    :cond_6
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x405ef00000000000L    # 123.75

    if-lez v0, :cond_7

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_7

    .line 14
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0, v5}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 15
    :cond_7
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4062480000000000L    # 146.25

    if-ltz v0, :cond_8

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gtz v0, :cond_8

    .line 16
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 17
    :cond_8
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4065180000000000L    # 168.75

    if-lez v0, :cond_9

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_9

    .line 18
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 19
    :cond_9
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4067e80000000000L    # 191.25

    if-lez v0, :cond_a

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_a

    .line 20
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 21
    :cond_a
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x406ab80000000000L    # 213.75

    if-lez v0, :cond_b

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_b

    .line 22
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 23
    :cond_b
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x406d880000000000L    # 236.25

    if-lez v0, :cond_c

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_c

    .line 24
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 25
    :cond_c
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x40702c0000000000L    # 258.75

    if-lez v0, :cond_d

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_d

    .line 26
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/16 v2, 0xb

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto/16 :goto_0

    .line 27
    :cond_d
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4071940000000000L    # 281.25

    if-lez v0, :cond_e

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_e

    .line 28
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto :goto_0

    .line 29
    :cond_e
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4072fc0000000000L    # 303.75

    if-lez v0, :cond_f

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_f

    .line 30
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto :goto_0

    .line 31
    :cond_f
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4074640000000000L    # 326.25

    if-lez v0, :cond_10

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_10

    .line 32
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/16 v2, 0xe

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto :goto_0

    .line 33
    :cond_10
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    if-lez v0, :cond_11

    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->y3(Lmodule/canbus/k0;)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v11

    if-gez v0, :cond_11

    .line 34
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    const/16 v2, 0xf

    invoke-static {v0, v2}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    goto :goto_0

    .line 35
    :cond_11
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0, v8}, Lmodule/canbus/k0;->B3(Lmodule/canbus/k0;I)I

    .line 36
    :goto_0
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->A3(Lmodule/canbus/k0;)I

    move-result v0

    iget-object v2, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v2}, Lmodule/canbus/k0;->C3(Lmodule/canbus/k0;)I

    move-result v2

    if-eq v0, v2, :cond_12

    new-array v0, v5, [I

    const/16 v2, 0xe3

    aput v2, v0, v8

    const/16 v2, 0xc6

    aput v2, v0, v6

    aput v7, v0, v7

    const/16 v2, 0x5a

    aput v2, v0, v4

    .line 37
    iget-object v2, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v2}, Lmodule/canbus/k0;->A3(Lmodule/canbus/k0;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 38
    iget-object v0, p0, Lmodule/canbus/k0$v;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->A3(Lmodule/canbus/k0;)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/k0;->D3(Lmodule/canbus/k0;I)I

    :cond_12
    return-void
.end method
