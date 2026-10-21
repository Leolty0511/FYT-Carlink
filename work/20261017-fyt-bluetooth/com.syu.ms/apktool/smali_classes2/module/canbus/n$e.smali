.class public Lmodule/canbus/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/n;


# direct methods
.method public constructor <init>(Lmodule/canbus/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lmodule/canbus/n;->g3(Lmodule/canbus/n;F)F

    .line 2
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4036800000000000L    # 22.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    const/4 v11, 0x0

    cmpl-float v0, v0, v11

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    const-wide v13, 0x4075180000000000L    # 337.5

    cmpl-double v0, v11, v13

    if-ltz v0, :cond_2

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    const/high16 v11, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0, v10}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_3

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gez v0, :cond_3

    .line 5
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0, v8}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gtz v0, :cond_4

    .line 7
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0, v6}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    goto/16 :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gez v0, :cond_5

    .line 9
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0, v5}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    goto/16 :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gtz v0, :cond_6

    .line 11
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0, v9}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    goto :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x406ef00000000000L    # 247.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gez v0, :cond_7

    .line 13
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0, v4}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    goto :goto_0

    .line 14
    :cond_7
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x4072480000000000L    # 292.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gtz v0, :cond_8

    .line 15
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0, v1}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    goto :goto_0

    .line 16
    :cond_8
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->e3(Lmodule/canbus/n;)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v13

    if-gez v0, :cond_9

    .line 17
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0, v7}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    goto :goto_0

    .line 18
    :cond_9
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    const/16 v2, 0xf

    invoke-static {v0, v2}, Lmodule/canbus/n;->v3(Lmodule/canbus/n;I)I

    .line 19
    :goto_0
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->t3(Lmodule/canbus/n;)I

    move-result v0

    iget-object v2, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v2}, Lmodule/canbus/n;->z3(Lmodule/canbus/n;)I

    move-result v2

    if-eq v0, v2, :cond_a

    new-array v0, v7, [I

    const/16 v2, 0xe3

    aput v2, v0, v10

    const/16 v2, -0x77

    aput v2, v0, v8

    aput v9, v0, v6

    .line 20
    iget-object v2, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v2}, Lmodule/canbus/n;->t3(Lmodule/canbus/n;)I

    move-result v2

    aput v2, v0, v5

    aput v10, v0, v9

    aput v10, v0, v4

    aput v10, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 21
    iget-object v0, p0, Lmodule/canbus/n$e;->a:Lmodule/canbus/n;

    invoke-static {v0}, Lmodule/canbus/n;->t3(Lmodule/canbus/n;)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/n;->A3(Lmodule/canbus/n;I)I

    :cond_a
    return-void
.end method
