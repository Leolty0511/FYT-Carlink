.class public Lk0/t$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/t;


# direct methods
.method public constructor <init>(Lk0/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/t$h;->a:Lk0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/t;->i3(Lk0/t;F)F

    .line 2
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4036800000000000L    # 22.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x4075180000000000L    # 337.5

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_2

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    const/high16 v4, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0, v1}, Lk0/t;->k3(Lk0/t;I)I

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_3

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_3

    .line 5
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lk0/t;->k3(Lk0/t;I)I

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_4

    .line 7
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lk0/t;->k3(Lk0/t;I)I

    goto/16 :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_5

    .line 9
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    const/16 v2, 0x18

    invoke-static {v0, v2}, Lk0/t;->k3(Lk0/t;I)I

    goto/16 :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_6

    .line 11
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lk0/t;->k3(Lk0/t;I)I

    goto :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    const-wide v2, 0x406ef00000000000L    # 247.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_7

    .line 13
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lk0/t;->k3(Lk0/t;I)I

    goto :goto_0

    .line 14
    :cond_7
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    const-wide v2, 0x4072480000000000L    # 292.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_8

    .line 15
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    const/16 v2, 0x30

    invoke-static {v0, v2}, Lk0/t;->k3(Lk0/t;I)I

    goto :goto_0

    .line 16
    :cond_8
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->h3(Lk0/t;)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_9

    .line 17
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    const/16 v2, 0x38

    invoke-static {v0, v2}, Lk0/t;->k3(Lk0/t;I)I

    goto :goto_0

    .line 18
    :cond_9
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0, v1}, Lk0/t;->k3(Lk0/t;I)I

    .line 19
    :goto_0
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->j3(Lk0/t;)I

    move-result v0

    iget-object v2, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v2}, Lk0/t;->l3(Lk0/t;)I

    move-result v2

    if-eq v0, v2, :cond_a

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0xc9

    aput v3, v0, v2

    const/4 v2, 0x2

    aput v2, v0, v2

    const/4 v2, 0x3

    .line 20
    iget-object v3, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v3}, Lk0/t;->j3(Lk0/t;)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 21
    iget-object v0, p0, Lk0/t$h;->a:Lk0/t;

    invoke-static {v0}, Lk0/t;->j3(Lk0/t;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/t;->m3(Lk0/t;I)I

    :cond_a
    return-void
.end method
