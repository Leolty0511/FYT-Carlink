.class public Lk0/a3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a3;


# direct methods
.method public constructor <init>(Lk0/a3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/a3;->i3(Lk0/a3;F)F

    .line 2
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4036800000000000L    # 22.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    const-wide v11, 0x4075180000000000L    # 337.5

    cmpl-double v0, v9, v11

    if-ltz v0, :cond_2

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    const/high16 v9, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v9

    if-gtz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0, v8}, Lk0/a3;->k3(Lk0/a3;I)I

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_3

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_3

    .line 5
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0, v6}, Lk0/a3;->k3(Lk0/a3;I)I

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gtz v0, :cond_4

    .line 7
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lk0/a3;->k3(Lk0/a3;I)I

    goto/16 :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_5

    .line 9
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lk0/a3;->k3(Lk0/a3;I)I

    goto/16 :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gtz v0, :cond_6

    .line 11
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0, v5}, Lk0/a3;->k3(Lk0/a3;I)I

    goto :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x406ef00000000000L    # 247.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gez v0, :cond_7

    .line 13
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0, v4}, Lk0/a3;->k3(Lk0/a3;I)I

    goto :goto_0

    .line 14
    :cond_7
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    const-wide v2, 0x4072480000000000L    # 292.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpg-double v0, v9, v2

    if-gtz v0, :cond_8

    .line 15
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0, v7}, Lk0/a3;->k3(Lk0/a3;I)I

    goto :goto_0

    .line 16
    :cond_8
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v9, v0

    cmpl-double v0, v9, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->h3(Lk0/a3;)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v11

    if-gez v0, :cond_9

    .line 17
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0, v1}, Lk0/a3;->k3(Lk0/a3;I)I

    goto :goto_0

    .line 18
    :cond_9
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0, v8}, Lk0/a3;->k3(Lk0/a3;I)I

    .line 19
    :goto_0
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->j3(Lk0/a3;)I

    move-result v0

    iget-object v2, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v2}, Lk0/a3;->l3(Lk0/a3;)I

    move-result v2

    if-eq v0, v2, :cond_b

    .line 20
    sget-object v0, Lk0/nt;->g:[I

    const/16 v2, 0x407

    aget v0, v0, v2

    if-eqz v0, :cond_a

    new-array v0, v6, [I

    const/16 v2, 0xe3

    aput v2, v0, v5

    const/16 v2, 0x83

    aput v2, v0, v4

    aput v7, v0, v7

    const/16 v2, 0x30

    aput v2, v0, v1

    .line 21
    iget-object v1, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v1}, Lk0/a3;->j3(Lk0/a3;)I

    move-result v1

    aput v1, v0, v8

    invoke-static {v0}, Lz/k;->s([I)V

    .line 22
    :cond_a
    iget-object v0, p0, Lk0/a3$d;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->j3(Lk0/a3;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/a3;->m3(Lk0/a3;I)I

    :cond_b
    return-void
.end method
