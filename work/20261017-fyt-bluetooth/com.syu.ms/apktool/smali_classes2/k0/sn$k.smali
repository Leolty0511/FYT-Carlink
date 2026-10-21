.class public Lk0/sn$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sn;


# direct methods
.method public constructor <init>(Lk0/sn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/sn;->f3(Lk0/sn;F)F

    .line 2
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x401e000000000000L    # 7.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    const-wide v10, 0x4076080000000000L    # 352.5

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_2

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    const/high16 v8, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0, v7}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4036800000000000L    # 22.5

    if-lez v0, :cond_3

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_3

    .line 5
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0, v6}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4042c00000000000L    # 37.5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gtz v0, :cond_4

    .line 7
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0, v4}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x404a400000000000L    # 52.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_5

    .line 9
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0, v1}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gtz v0, :cond_6

    .line 11
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0, v5}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4054a00000000000L    # 82.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_7

    .line 13
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 14
    :cond_7
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4058600000000000L    # 97.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gtz v0, :cond_8

    .line 15
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 16
    :cond_8
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_9

    .line 17
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 18
    :cond_9
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x405fe00000000000L    # 127.5

    if-lez v0, :cond_a

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_a

    .line 19
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 20
    :cond_a
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4061d00000000000L    # 142.5

    if-lez v0, :cond_b

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_b

    .line 21
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 22
    :cond_b
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_c

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_c

    .line 23
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 24
    :cond_c
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4065900000000000L    # 172.5

    if-lez v0, :cond_d

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_d

    .line 25
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0xb

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 26
    :cond_d
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4067700000000000L    # 187.5

    if-lez v0, :cond_e

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_e

    .line 27
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 28
    :cond_e
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-lez v0, :cond_f

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_f

    .line 29
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 30
    :cond_f
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x406b300000000000L    # 217.5

    if-lez v0, :cond_10

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_10

    .line 31
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0xe

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 32
    :cond_10
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    const-wide v2, 0x406d100000000000L    # 232.5

    if-lez v0, :cond_11

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpg-double v0, v8, v2

    if-gez v0, :cond_11

    .line 33
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0xf

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 34
    :cond_11
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v2

    if-lez v0, :cond_12

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x406ef00000000000L    # 247.5

    cmpg-double v0, v2, v8

    if-gez v0, :cond_12

    .line 35
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 36
    :cond_12
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x406ef00000000000L    # 247.5

    cmpl-double v0, v2, v8

    if-lez v0, :cond_13

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4070680000000000L    # 262.5

    cmpg-double v0, v2, v8

    if-gez v0, :cond_13

    .line 37
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x11

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 38
    :cond_13
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4070680000000000L    # 262.5

    cmpl-double v0, v2, v8

    if-lez v0, :cond_14

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4071580000000000L    # 277.5

    cmpg-double v0, v2, v8

    if-gez v0, :cond_14

    .line 39
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x12

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 40
    :cond_14
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4071580000000000L    # 277.5

    cmpl-double v0, v2, v8

    if-lez v0, :cond_15

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4072480000000000L    # 292.5

    cmpg-double v0, v2, v8

    if-gez v0, :cond_15

    .line 41
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x13

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 42
    :cond_15
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4072480000000000L    # 292.5

    cmpl-double v0, v2, v8

    if-lez v0, :cond_16

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4073380000000000L    # 307.5

    cmpg-double v0, v2, v8

    if-gez v0, :cond_16

    .line 43
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto/16 :goto_0

    .line 44
    :cond_16
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4073380000000000L    # 307.5

    cmpl-double v0, v2, v8

    if-lez v0, :cond_17

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4074280000000000L    # 322.5

    cmpg-double v0, v2, v8

    if-gez v0, :cond_17

    .line 45
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x15

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto :goto_0

    .line 46
    :cond_17
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4074580000000000L    # 325.5

    cmpl-double v0, v2, v8

    if-lez v0, :cond_18

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4075180000000000L    # 337.5

    cmpg-double v0, v2, v8

    if-gez v0, :cond_18

    .line 47
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x16

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto :goto_0

    .line 48
    :cond_18
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    const-wide v8, 0x4075180000000000L    # 337.5

    cmpl-double v0, v2, v8

    if-lez v0, :cond_19

    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->e3(Lk0/sn;)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v10

    if-gez v0, :cond_19

    .line 49
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    const/16 v2, 0x17

    invoke-static {v0, v2}, Lk0/sn;->h3(Lk0/sn;I)I

    goto :goto_0

    .line 50
    :cond_19
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0, v7}, Lk0/sn;->h3(Lk0/sn;I)I

    .line 51
    :goto_0
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->g3(Lk0/sn;)I

    move-result v0

    iget-object v2, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v2}, Lk0/sn;->i3(Lk0/sn;)I

    move-result v2

    if-eq v0, v2, :cond_1a

    new-array v0, v5, [I

    const/16 v2, 0xe3

    aput v2, v0, v7

    const/16 v2, 0x91

    aput v2, v0, v6

    aput v6, v0, v4

    .line 52
    iget-object v2, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v2}, Lk0/sn;->g3(Lk0/sn;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    const/16 v0, 0x92

    new-array v1, v6, [I

    .line 53
    sget v2, Lu0/b;->s0:I

    aput v2, v1, v7

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    .line 54
    iget-object v0, p0, Lk0/sn$k;->a:Lk0/sn;

    invoke-static {v0}, Lk0/sn;->g3(Lk0/sn;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/sn;->j3(Lk0/sn;I)I

    :cond_1a
    return-void
.end method
