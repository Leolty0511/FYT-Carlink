.class public Lk0/cm$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cm;


# direct methods
.method public constructor <init>(Lk0/cm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/cm;->d3(Lk0/cm;F)F

    .line 2
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0, v1}, Lk0/cm;->e3(Lk0/cm;F)F

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0, v1}, Lk0/cm;->e3(Lk0/cm;F)F

    .line 6
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v1, v3

    invoke-static {v0, v3}, Lk0/cm;->d3(Lk0/cm;F)F

    .line 7
    :cond_1
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x4036800000000000L    # 22.5

    cmpg-double v0, v3, v5

    const/4 v3, 0x0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v7, v0

    const-wide v9, 0x4075180000000000L    # 337.5

    cmpl-double v0, v7, v9

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0, v3}, Lk0/cm;->g3(Lk0/cm;I)I

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v5

    const-wide v1, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v1

    if-gez v0, :cond_5

    .line 10
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lk0/cm;->g3(Lk0/cm;I)I

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v1

    const-wide v1, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v1

    if-gtz v0, :cond_6

    .line 12
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lk0/cm;->g3(Lk0/cm;I)I

    goto/16 :goto_0

    .line 13
    :cond_6
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v1

    const-wide v1, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v1

    if-gez v0, :cond_7

    .line 14
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lk0/cm;->g3(Lk0/cm;I)I

    goto/16 :goto_0

    .line 15
    :cond_7
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v1

    const-wide v1, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v1

    if-gtz v0, :cond_8

    .line 16
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lk0/cm;->g3(Lk0/cm;I)I

    goto :goto_0

    .line 17
    :cond_8
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v1

    const-wide v1, 0x406ef00000000000L    # 247.5

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v1

    if-gez v0, :cond_9

    .line 18
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lk0/cm;->g3(Lk0/cm;I)I

    goto :goto_0

    .line 19
    :cond_9
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v1

    const-wide v1, 0x4072480000000000L    # 292.5

    if-ltz v0, :cond_a

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v1

    if-gtz v0, :cond_a

    .line 20
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lk0/cm;->g3(Lk0/cm;I)I

    goto :goto_0

    .line 21
    :cond_a
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v1

    if-lez v0, :cond_b

    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->c3(Lk0/cm;)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v9

    if-gez v0, :cond_b

    .line 22
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lk0/cm;->g3(Lk0/cm;I)I

    goto :goto_0

    .line 23
    :cond_b
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0, v3}, Lk0/cm;->g3(Lk0/cm;I)I

    .line 24
    :goto_0
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->f3(Lk0/cm;)I

    move-result v0

    iget-object v1, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v1}, Lk0/cm;->h3(Lk0/cm;)I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 25
    sget v0, Lu0/b;->X1:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_c

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v2, 0xe3

    aput v2, v0, v3

    const/4 v2, 0x1

    const/16 v4, -0x39

    aput v4, v0, v2

    aput v1, v0, v1

    const/4 v1, 0x3

    .line 26
    iget-object v2, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v2}, Lk0/cm;->f3(Lk0/cm;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 27
    :cond_c
    iget-object v0, p0, Lk0/cm$f;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->f3(Lk0/cm;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/cm;->i3(Lk0/cm;I)I

    :cond_d
    return-void
.end method
