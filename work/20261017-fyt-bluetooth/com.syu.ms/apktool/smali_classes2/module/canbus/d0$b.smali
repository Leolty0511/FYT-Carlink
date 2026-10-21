.class public Lmodule/canbus/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/d0;


# direct methods
.method public constructor <init>(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    sget v2, Lu0/b;->s0:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lmodule/canbus/d0;->I3(Lmodule/canbus/d0;F)F

    .line 2
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v14, 0x4063b00000000000L    # 157.5

    const/4 v4, 0x3

    const-wide v16, 0x405c200000000000L    # 112.5

    const-wide v18, 0x4050e00000000000L    # 67.5

    const-wide v20, 0x4075180000000000L    # 337.5

    const-wide v22, 0x4036800000000000L    # 22.5

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x2a

    if-lt v1, v12, :cond_0

    const/16 v12, 0x4e

    if-le v1, v12, :cond_1f

    :cond_0
    const/16 v12, 0x57

    if-eq v1, v12, :cond_1f

    const/16 v12, 0x58

    if-ne v1, v12, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v12, v1

    const-wide/high16 v24, 0x401e000000000000L    # 7.5

    cmpg-double v1, v12, v24

    if-gtz v1, :cond_2

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-gez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v12, v1

    const-wide v26, 0x4076080000000000L    # 352.5

    cmpl-double v1, v12, v26

    if-ltz v1, :cond_4

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_4

    .line 4
    :cond_3
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v11}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 5
    :cond_4
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpl-double v1, v5, v24

    if-lez v1, :cond_5

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v22

    if-gez v1, :cond_5

    .line 6
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v10}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 7
    :cond_5
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpl-double v1, v5, v22

    const-wide v5, 0x4042c00000000000L    # 37.5

    if-ltz v1, :cond_6

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v12, v1

    cmpg-double v1, v12, v5

    if-gtz v1, :cond_6

    .line 8
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v8}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 9
    :cond_6
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v12, v1

    cmpl-double v1, v12, v5

    if-lez v1, :cond_7

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    const-wide v12, 0x404a400000000000L    # 52.5

    cmpg-double v1, v5, v12

    if-gez v1, :cond_7

    .line 10
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v4}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 11
    :cond_7
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    const-wide v12, 0x404a400000000000L    # 52.5

    cmpl-double v1, v5, v12

    if-ltz v1, :cond_8

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v18

    if-gtz v1, :cond_8

    .line 12
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v9}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 13
    :cond_8
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpl-double v1, v5, v18

    if-lez v1, :cond_9

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    const-wide v12, 0x4054a00000000000L    # 82.5

    cmpg-double v1, v5, v12

    if-gez v1, :cond_9

    .line 14
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v7}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 15
    :cond_9
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    const-wide v12, 0x4054a00000000000L    # 82.5

    cmpl-double v1, v5, v12

    if-ltz v1, :cond_a

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    const-wide v12, 0x4058600000000000L    # 97.5

    cmpg-double v1, v5, v12

    if-gtz v1, :cond_a

    .line 16
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v3}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 17
    :cond_a
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    const-wide v12, 0x4058600000000000L    # 97.5

    cmpl-double v1, v5, v12

    if-lez v1, :cond_b

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v16

    if-gez v1, :cond_b

    .line 18
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 19
    :cond_b
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v16

    if-lez v1, :cond_c

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x405fe00000000000L    # 127.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_c

    .line 20
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 21
    :cond_c
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x405fe00000000000L    # 127.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_d

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4061d00000000000L    # 142.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_d

    .line 22
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 23
    :cond_d
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4061d00000000000L    # 142.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_e

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v14

    if-gez v1, :cond_e

    .line 24
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 25
    :cond_e
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v14

    if-lez v1, :cond_f

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4065900000000000L    # 172.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_f

    .line 26
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 27
    :cond_f
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4065900000000000L    # 172.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_10

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4067700000000000L    # 187.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_10

    .line 28
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 29
    :cond_10
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4067700000000000L    # 187.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_11

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4069500000000000L    # 202.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_12

    .line 30
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    :cond_11
    const-wide v5, 0x4069500000000000L    # 202.5

    .line 31
    :cond_12
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_13

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x406b300000000000L    # 217.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_13

    .line 32
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 33
    :cond_13
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x406b300000000000L    # 217.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_14

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x406d100000000000L    # 232.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_14

    .line 34
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 35
    :cond_14
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x406d100000000000L    # 232.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_15

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x406ef00000000000L    # 247.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_16

    .line 36
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    :cond_15
    const-wide v5, 0x406ef00000000000L    # 247.5

    .line 37
    :cond_16
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_17

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4070680000000000L    # 262.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_17

    .line 38
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 39
    :cond_17
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4070680000000000L    # 262.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_18

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4071580000000000L    # 277.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_18

    .line 40
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    .line 41
    :cond_18
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4071580000000000L    # 277.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_19

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4072480000000000L    # 292.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_1a

    .line 42
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x13

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_0

    :cond_19
    const-wide v5, 0x4072480000000000L    # 292.5

    .line 43
    :cond_1a
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_1b

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4073380000000000L    # 307.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_1b

    .line 44
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto :goto_0

    .line 45
    :cond_1b
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4073380000000000L    # 307.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_1c

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4074280000000000L    # 322.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_1c

    .line 46
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x15

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto :goto_0

    .line 47
    :cond_1c
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4074580000000000L    # 325.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_1d

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v20

    if-gez v1, :cond_1d

    .line 48
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x16

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto :goto_0

    .line 49
    :cond_1d
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v20

    if-lez v1, :cond_1e

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v26

    if-gez v1, :cond_1e

    .line 50
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto :goto_0

    .line 51
    :cond_1e
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v11}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    .line 52
    :goto_0
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->J3(Lmodule/canbus/d0;)I

    move-result v1

    iget-object v2, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v2}, Lmodule/canbus/d0;->L3(Lmodule/canbus/d0;)I

    move-result v2

    if-eq v1, v2, :cond_2d

    new-array v1, v9, [I

    const/16 v2, 0xe3

    aput v2, v1, v11

    const/16 v2, 0x91

    aput v2, v1, v10

    aput v10, v1, v8

    .line 53
    iget-object v2, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v2}, Lmodule/canbus/d0;->J3(Lmodule/canbus/d0;)I

    move-result v2

    aput v2, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    const/16 v1, 0xd2

    new-array v2, v10, [I

    .line 54
    sget v3, Lu0/b;->s0:I

    aput v3, v2, v11

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 55
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->J3(Lmodule/canbus/d0;)I

    move-result v2

    invoke-static {v1, v2}, Lmodule/canbus/d0;->M3(Lmodule/canbus/d0;I)I

    goto/16 :goto_3

    .line 56
    :cond_1f
    :goto_1
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v12, v1

    cmpg-double v1, v12, v22

    if-gtz v1, :cond_20

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-gez v1, :cond_21

    :cond_20
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v12, v1

    cmpl-double v1, v12, v20

    if-ltz v1, :cond_22

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_22

    .line 57
    :cond_21
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v9}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_2

    .line 58
    :cond_22
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpl-double v1, v5, v22

    if-lez v1, :cond_23

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v18

    if-gez v1, :cond_23

    .line 59
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v7}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_2

    .line 60
    :cond_23
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpl-double v1, v5, v18

    if-ltz v1, :cond_24

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v16

    if-gtz v1, :cond_24

    .line 61
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v3}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_2

    .line 62
    :cond_24
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpl-double v1, v5, v16

    if-lez v1, :cond_25

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v14

    if-gez v1, :cond_25

    .line 63
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v2}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_2

    .line 64
    :cond_25
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v14

    if-ltz v1, :cond_26

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4069500000000000L    # 202.5

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_27

    .line 65
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v11}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto/16 :goto_2

    :cond_26
    const-wide v5, 0x4069500000000000L    # 202.5

    .line 66
    :cond_27
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_28

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x406ef00000000000L    # 247.5

    cmpg-double v1, v1, v5

    if-gez v1, :cond_29

    .line 67
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v10}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto :goto_2

    :cond_28
    const-wide v5, 0x406ef00000000000L    # 247.5

    .line 68
    :cond_29
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_2a

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x4072480000000000L    # 292.5

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_2b

    .line 69
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v8}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto :goto_2

    :cond_2a
    const-wide v5, 0x4072480000000000L    # 292.5

    .line 70
    :cond_2b
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_2c

    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->H3(Lmodule/canbus/d0;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v20

    if-gez v1, :cond_2c

    .line 71
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v4}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    goto :goto_2

    .line 72
    :cond_2c
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1, v9}, Lmodule/canbus/d0;->K3(Lmodule/canbus/d0;I)I

    .line 73
    :goto_2
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->J3(Lmodule/canbus/d0;)I

    move-result v1

    iget-object v2, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v2}, Lmodule/canbus/d0;->L3(Lmodule/canbus/d0;)I

    move-result v2

    if-eq v1, v2, :cond_2d

    new-array v1, v7, [I

    const/16 v2, 0xe3

    aput v2, v1, v11

    const/16 v2, 0x83

    aput v2, v1, v10

    aput v8, v1, v8

    const/16 v2, 0x30

    aput v2, v1, v4

    .line 74
    iget-object v2, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v2}, Lmodule/canbus/d0;->J3(Lmodule/canbus/d0;)I

    move-result v2

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    .line 75
    iget-object v1, v0, Lmodule/canbus/d0$b;->a:Lmodule/canbus/d0;

    invoke-static {v1}, Lmodule/canbus/d0;->J3(Lmodule/canbus/d0;)I

    move-result v2

    invoke-static {v1, v2}, Lmodule/canbus/d0;->M3(Lmodule/canbus/d0;I)I

    :cond_2d
    :goto_3
    return-void
.end method
