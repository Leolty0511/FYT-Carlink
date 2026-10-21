.class public Lk0/ja$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ja;


# direct methods
.method public constructor <init>(Lk0/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    iget v1, v0, Lk0/ja;->w:I

    if-nez v1, :cond_a

    .line 2
    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/ja;->g3(Lk0/ja;F)F

    .line 3
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4036800000000000L    # 22.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    const-wide v9, 0x4075180000000000L    # 337.5

    cmpl-double v0, v7, v9

    if-ltz v0, :cond_2

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    const/high16 v7, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0, v6}, Lk0/ja;->k3(Lk0/ja;I)I

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpl-double v0, v7, v2

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_3

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v2

    if-gez v0, :cond_3

    .line 6
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0, v5}, Lk0/ja;->k3(Lk0/ja;I)I

    goto/16 :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpl-double v0, v7, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v2

    if-gtz v0, :cond_4

    .line 8
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0, v1}, Lk0/ja;->k3(Lk0/ja;I)I

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpl-double v0, v7, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v2

    if-gez v0, :cond_5

    .line 10
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0, v4}, Lk0/ja;->k3(Lk0/ja;I)I

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpl-double v0, v7, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v2

    if-gtz v0, :cond_6

    .line 12
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lk0/ja;->k3(Lk0/ja;I)I

    goto :goto_0

    .line 13
    :cond_6
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpl-double v0, v7, v2

    const-wide v2, 0x406ef00000000000L    # 247.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v2

    if-gez v0, :cond_7

    .line 14
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lk0/ja;->k3(Lk0/ja;I)I

    goto :goto_0

    .line 15
    :cond_7
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpl-double v0, v7, v2

    const-wide v2, 0x4072480000000000L    # 292.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v2

    if-gtz v0, :cond_8

    .line 16
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lk0/ja;->k3(Lk0/ja;I)I

    goto :goto_0

    .line 17
    :cond_8
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v7, v0

    cmpl-double v0, v7, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->d3(Lk0/ja;)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v9

    if-gez v0, :cond_9

    .line 18
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lk0/ja;->k3(Lk0/ja;I)I

    goto :goto_0

    .line 19
    :cond_9
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0, v6}, Lk0/ja;->k3(Lk0/ja;I)I

    .line 20
    :goto_0
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->j3(Lk0/ja;)I

    move-result v0

    iget-object v2, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v2}, Lk0/ja;->l3(Lk0/ja;)I

    move-result v2

    if-eq v0, v2, :cond_a

    new-array v0, v4, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v2

    aput v5, v0, v6

    aput v6, v0, v5

    .line 21
    iget-object v2, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v2}, Lk0/ja;->j3(Lk0/ja;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 22
    iget-object v0, p0, Lk0/ja$b;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->j3(Lk0/ja;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ja;->m3(Lk0/ja;I)I

    :cond_a
    return-void
.end method
