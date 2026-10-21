.class public Lmodule/canbus/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c;


# direct methods
.method public constructor <init>(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    iget v1, v0, Lmodule/canbus/c;->Z:I

    if-nez v1, :cond_c

    .line 2
    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lmodule/canbus/c;->h3(Lmodule/canbus/c;F)F

    .line 3
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v1}, Lmodule/canbus/c;->i3(Lmodule/canbus/c;F)F

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 6
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v1}, Lmodule/canbus/c;->i3(Lmodule/canbus/c;F)F

    .line 7
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v1, v3

    invoke-static {v0, v3}, Lmodule/canbus/c;->h3(Lmodule/canbus/c;F)F

    .line 8
    :cond_1
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x4036800000000000L    # 22.5

    cmpg-double v0, v3, v5

    const/16 v3, 0xa

    const/4 v4, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v11, v0

    const-wide v13, 0x4075180000000000L    # 337.5

    cmpl-double v0, v11, v13

    if-ltz v0, :cond_4

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 9
    :cond_3
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v10}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    goto/16 :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v5

    const-wide v1, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_5

    .line 11
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v8}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    goto/16 :goto_0

    .line 12
    :cond_5
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_6

    .line 13
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v7}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    goto/16 :goto_0

    .line 14
    :cond_6
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_7

    .line 15
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v4}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    goto/16 :goto_0

    .line 16
    :cond_7
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_8

    .line 17
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v9}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    goto :goto_0

    .line 18
    :cond_8
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x406ef00000000000L    # 247.5

    if-lez v0, :cond_9

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gez v0, :cond_9

    .line 19
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v3}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    goto :goto_0

    .line 20
    :cond_9
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    const-wide v1, 0x4072480000000000L    # 292.5

    if-ltz v0, :cond_a

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_a

    .line 21
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    goto :goto_0

    .line 22
    :cond_a
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v5, v1

    if-lez v0, :cond_b

    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->g3(Lmodule/canbus/c;)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v13

    if-gez v0, :cond_b

    .line 23
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    goto :goto_0

    .line 24
    :cond_b
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0, v10}, Lmodule/canbus/c;->k3(Lmodule/canbus/c;I)I

    .line 25
    :goto_0
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->j3(Lmodule/canbus/c;)I

    move-result v0

    iget-object v1, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v1}, Lmodule/canbus/c;->x3(Lmodule/canbus/c;)I

    move-result v1

    if-eq v0, v1, :cond_c

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/16 v1, 0xe3

    aput v1, v0, v10

    const/4 v1, 0x1

    const/16 v2, 0xa2

    aput v2, v0, v1

    aput v9, v0, v8

    const/4 v1, 0x3

    const/16 v2, 0x80

    aput v2, v0, v1

    .line 26
    iget-object v1, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v1}, Lmodule/canbus/c;->j3(Lmodule/canbus/c;)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    aput v10, v0, v1

    aput v10, v0, v4

    const/4 v1, 0x7

    aput v10, v0, v1

    aput v10, v0, v9

    const/16 v1, 0x9

    aput v10, v0, v1

    aput v10, v0, v3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 27
    iget-object v0, p0, Lmodule/canbus/c$d;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->j3(Lmodule/canbus/c;)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/c;->y3(Lmodule/canbus/c;I)I

    :cond_c
    return-void
.end method
