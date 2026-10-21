.class public Lk0/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/b;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b$e;->a:Lk0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    iget v1, v0, Lk0/b;->C:I

    if-nez v1, :cond_a

    .line 2
    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/b;->r3(Lk0/b;F)F

    .line 3
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4036800000000000L    # 22.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x7

    if-gtz v0, :cond_0

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    const/4 v11, 0x0

    cmpl-float v0, v0, v11

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    const-wide v13, 0x4075180000000000L    # 337.5

    cmpl-double v0, v11, v13

    if-ltz v0, :cond_2

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    const/high16 v11, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v10}, Lk0/b;->t3(Lk0/b;I)I

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x4050e00000000000L    # 67.5

    if-lez v0, :cond_3

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gez v0, :cond_3

    .line 6
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v9}, Lk0/b;->t3(Lk0/b;I)I

    goto/16 :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x405c200000000000L    # 112.5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gtz v0, :cond_4

    .line 8
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v7}, Lk0/b;->t3(Lk0/b;I)I

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x4063b00000000000L    # 157.5

    if-lez v0, :cond_5

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gez v0, :cond_5

    .line 10
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v6}, Lk0/b;->t3(Lk0/b;I)I

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    const-wide v2, 0x4069500000000000L    # 202.5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpg-double v0, v11, v2

    if-gtz v0, :cond_6

    .line 12
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v8}, Lk0/b;->t3(Lk0/b;I)I

    goto :goto_0

    .line 13
    :cond_6
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v11, v0

    cmpl-double v0, v11, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v2, v0

    const-wide v11, 0x406ef00000000000L    # 247.5

    cmpg-double v0, v2, v11

    if-gez v0, :cond_7

    .line 14
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v5}, Lk0/b;->t3(Lk0/b;I)I

    goto :goto_0

    .line 15
    :cond_7
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v2, v0

    const-wide v11, 0x406ef00000000000L    # 247.5

    cmpl-double v0, v2, v11

    if-ltz v0, :cond_8

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v2, v0

    const-wide v11, 0x4072480000000000L    # 292.5

    cmpg-double v0, v2, v11

    if-gtz v0, :cond_8

    .line 16
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v4}, Lk0/b;->t3(Lk0/b;I)I

    goto :goto_0

    .line 17
    :cond_8
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v2, v0

    const-wide v11, 0x4072480000000000L    # 292.5

    cmpl-double v0, v2, v11

    if-lez v0, :cond_9

    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->q3(Lk0/b;)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v13

    if-gez v0, :cond_9

    .line 18
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v1}, Lk0/b;->t3(Lk0/b;I)I

    goto :goto_0

    .line 19
    :cond_9
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0, v8}, Lk0/b;->t3(Lk0/b;I)I

    .line 20
    :goto_0
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->s3(Lk0/b;)I

    move-result v0

    iget-object v2, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v2}, Lk0/b;->h3(Lk0/b;)I

    move-result v2

    if-eq v0, v2, :cond_a

    .line 21
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    iget v2, v0, Lk0/b;->x:I

    const/16 v3, 0xa

    mul-int/2addr v2, v3

    .line 22
    iget v11, v0, Lk0/b;->w:I

    mul-int/2addr v11, v3

    const/16 v12, 0x16

    new-array v12, v12, [I

    const/16 v13, 0xe3

    const/4 v14, 0x0

    aput v13, v12, v14

    const/16 v13, 0x13

    aput v13, v12, v7

    const/16 v7, 0xe4

    aput v7, v12, v6

    .line 23
    iget v6, v0, Lk0/b;->D:I

    shl-int/2addr v6, v10

    int-to-byte v6, v6

    aput v6, v12, v8

    iget v6, v0, Lk0/b;->C:I

    shl-int/2addr v6, v10

    int-to-byte v6, v6

    aput v6, v12, v5

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    aput v5, v12, v4

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v1

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v10

    and-int/lit16 v1, v2, 0xff

    aput v1, v12, v9

    const/16 v1, 0x9

    aput v14, v12, v1

    shr-int/lit8 v1, v11, 0x18

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v3

    const/16 v1, 0xb

    shr-int/lit8 v2, v11, 0x10

    and-int/lit16 v2, v2, 0xff

    aput v2, v12, v1

    const/16 v1, 0xc

    shr-int/lit8 v2, v11, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v12, v1

    const/16 v1, 0xd

    and-int/lit16 v2, v11, 0xff

    aput v2, v12, v1

    const/16 v1, 0xe

    .line 24
    invoke-static {v0}, Lk0/b;->s3(Lk0/b;)I

    move-result v0

    aput v0, v12, v1

    const/16 v0, 0xf

    iget-object v1, p0, Lk0/b$e;->a:Lk0/b;

    iget v1, v1, Lk0/b;->z:I

    div-int/lit16 v2, v1, 0xe10

    aput v2, v12, v0

    rem-int/lit16 v0, v1, 0xe10

    div-int/lit8 v0, v0, 0x3c

    const/16 v2, 0x10

    aput v0, v12, v2

    const/16 v0, 0x11

    div-int/lit16 v2, v1, 0xe10

    aput v2, v12, v0

    const/16 v0, 0x12

    rem-int/lit16 v1, v1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    aput v1, v12, v0

    .line 25
    invoke-static {}, Lk0/b;->u3()[I

    move-result-object v0

    iget-object v1, p0, Lk0/b$e;->a:Lk0/b;

    iget v1, v1, Lk0/b;->B:I

    aget v0, v0, v1

    aput v0, v12, v13

    const/16 v0, 0x14

    aput v14, v12, v0

    const/16 v0, 0x15

    aput v14, v12, v0

    .line 26
    invoke-static {v12}, Lz/k;->s([I)V

    .line 27
    iget-object v0, p0, Lk0/b$e;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->s3(Lk0/b;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/b;->i3(Lk0/b;I)I

    :cond_a
    return-void
.end method
