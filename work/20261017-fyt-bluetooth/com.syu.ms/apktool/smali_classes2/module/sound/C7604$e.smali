.class public Lmodule/sound/C7604$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7604;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public final synthetic g:Lmodule/sound/C7604;


# direct methods
.method public constructor <init>(Lmodule/sound/C7604;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIDDI)[I
    .locals 28

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p8

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    .line 1
    invoke-virtual/range {v0 .. v6}, Lmodule/sound/C7604$e;->b(IIDD)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-eqz v8, :cond_4

    if-eq v8, v3, :cond_3

    if-eq v8, v2, :cond_2

    if-eq v8, v1, :cond_1

    if-eq v8, v0, :cond_0

    move-wide v1, v4

    move-wide v10, v1

    move-wide v12, v10

    move-object v0, v7

    move-wide v7, v12

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-wide v4, v7, Lmodule/sound/C7604$e;->e:D

    div-double v4, v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v7, Lmodule/sound/C7604$e;->f:D

    .line 3
    iget-wide v0, v7, Lmodule/sound/C7604$e;->e:D

    add-double v16, v0, v12

    sub-double v18, v0, v12

    iget-wide v2, v7, Lmodule/sound/C7604$e;->c:D

    mul-double v18, v18, v2

    add-double v16, v16, v18

    iget-wide v14, v7, Lmodule/sound/C7604$e;->b:D

    mul-double v20, v4, v14

    add-double v16, v16, v20

    add-double v20, v0, v12

    sub-double v22, v0, v12

    mul-double v22, v22, v2

    sub-double v20, v20, v22

    mul-double v22, v4, v14

    sub-double v20, v20, v22

    mul-double v20, v20, v0

    div-double v20, v20, v16

    mul-double/2addr v10, v0

    sub-double v22, v0, v12

    add-double v24, v0, v12

    mul-double v24, v24, v2

    sub-double v22, v22, v24

    mul-double v10, v10, v22

    div-double v10, v10, v16

    add-double v22, v0, v12

    sub-double v24, v0, v12

    mul-double v24, v24, v2

    add-double v22, v22, v24

    mul-double v24, v4, v14

    sub-double v6, v22, v24

    neg-double v6, v6

    div-double v6, v6, v16

    sub-double v22, v0, v12

    add-double v24, v0, v12

    mul-double v24, v24, v2

    add-double v22, v22, v24

    const-wide/high16 v18, -0x4000000000000000L    # -2.0

    mul-double v12, v22, v18

    neg-double v12, v12

    div-double v12, v12, v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v22, v0, v18

    sub-double v18, v0, v18

    mul-double v18, v18, v2

    sub-double v22, v22, v18

    mul-double/2addr v4, v14

    add-double v22, v22, v4

    mul-double v0, v0, v22

    div-double v4, v0, v16

    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v7, v10

    move-wide v10, v12

    move-wide v12, v4

    move-wide/from16 v4, v20

    goto/16 :goto_1

    :cond_1
    move-object v0, v7

    .line 4
    iget-wide v1, v0, Lmodule/sound/C7604$e;->e:D

    div-double v1, v1, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lmodule/sound/C7604$e;->f:D

    .line 5
    iget-wide v3, v0, Lmodule/sound/C7604$e;->e:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double v12, v3, v5

    sub-double v7, v3, v5

    iget-wide v14, v0, Lmodule/sound/C7604$e;->c:D

    mul-double/2addr v7, v14

    sub-double/2addr v12, v7

    iget-wide v7, v0, Lmodule/sound/C7604$e;->b:D

    mul-double v16, v1, v7

    add-double v12, v12, v16

    add-double v16, v3, v5

    sub-double v20, v3, v5

    mul-double v20, v20, v14

    add-double v16, v16, v20

    mul-double v20, v1, v7

    sub-double v16, v16, v20

    mul-double v16, v16, v3

    div-double v16, v16, v12

    const-wide/high16 v18, -0x4000000000000000L    # -2.0

    mul-double v18, v18, v3

    sub-double v20, v3, v5

    add-double v22, v3, v5

    mul-double v22, v22, v14

    add-double v20, v20, v22

    mul-double v18, v18, v20

    div-double v18, v18, v12

    add-double v20, v3, v5

    sub-double v22, v3, v5

    mul-double v22, v22, v14

    sub-double v20, v20, v22

    mul-double v22, v1, v7

    sub-double v10, v20, v22

    neg-double v10, v10

    div-double/2addr v10, v12

    sub-double v20, v3, v5

    add-double v22, v3, v5

    mul-double v22, v22, v14

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v5, v20, v22

    neg-double v5, v5

    div-double/2addr v5, v12

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v22, v3, v20

    sub-double v20, v3, v20

    mul-double v20, v20, v14

    add-double v22, v22, v20

    mul-double/2addr v1, v7

    add-double v22, v22, v1

    mul-double v3, v3, v22

    div-double v1, v3, v12

    move-wide v12, v1

    move-wide v1, v10

    move-wide/from16 v7, v18

    move-wide v10, v5

    move-wide/from16 v4, v16

    goto/16 :goto_1

    :cond_2
    move-object v0, v7

    move-wide/from16 v20, v12

    .line 6
    iget-wide v1, v0, Lmodule/sound/C7604$e;->d:D

    iget-wide v3, v0, Lmodule/sound/C7604$e;->e:D

    div-double v5, v1, v3

    add-double v5, v5, v20

    mul-double v7, v1, v3

    sub-double v12, v20, v7

    div-double v7, v12, v5

    .line 7
    iget-wide v10, v0, Lmodule/sound/C7604$e;->c:D

    const-wide/high16 v12, -0x4000000000000000L    # -2.0

    mul-double v14, v10, v12

    div-double v12, v14, v5

    div-double v14, v1, v3

    sub-double v14, v20, v14

    neg-double v14, v14

    div-double/2addr v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v16

    div-double/2addr v10, v5

    mul-double/2addr v1, v3

    add-double v1, v1, v20

    div-double v4, v1, v5

    move-wide v1, v14

    move-wide/from16 v26, v7

    move-wide v7, v12

    move-wide v12, v4

    move-wide/from16 v4, v26

    goto :goto_1

    :cond_3
    move-object v0, v7

    move-wide/from16 v16, v10

    move-wide/from16 v20, v12

    .line 8
    iget-wide v1, v0, Lmodule/sound/C7604$e;->d:D

    add-double v12, v1, v20

    .line 9
    iget-wide v3, v0, Lmodule/sound/C7604$e;->c:D

    sub-double v5, v20, v3

    div-double v5, v5, v16

    div-double/2addr v5, v12

    sub-double v7, v20, v3

    div-double/2addr v7, v12

    sub-double v1, v20, v1

    neg-double v1, v1

    div-double/2addr v1, v12

    mul-double v10, v3, v16

    div-double/2addr v10, v12

    sub-double v3, v20, v3

    goto :goto_0

    :cond_4
    move-object v0, v7

    move-wide/from16 v16, v10

    move-wide/from16 v20, v12

    .line 10
    iget-wide v1, v0, Lmodule/sound/C7604$e;->d:D

    add-double v12, v1, v20

    .line 11
    iget-wide v3, v0, Lmodule/sound/C7604$e;->c:D

    add-double v5, v3, v20

    div-double v5, v5, v16

    div-double/2addr v5, v12

    add-double v7, v3, v20

    neg-double v7, v7

    div-double/2addr v7, v12

    sub-double v1, v20, v1

    neg-double v1, v1

    div-double/2addr v1, v12

    mul-double v10, v3, v16

    div-double/2addr v10, v12

    add-double v3, v3, v20

    :goto_0
    div-double v3, v3, v16

    div-double/2addr v3, v12

    move-wide v12, v3

    move-wide v4, v5

    :goto_1
    const/4 v3, 0x5

    const/4 v14, 0x0

    if-nez p1, :cond_5

    new-array v3, v3, [I

    .line 12
    iget-object v6, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v6, v6, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v6, v4, v5, v9}, Lmodule/sound/C7604$j;->a(DI)I

    move-result v4

    aput v4, v3, v14

    .line 13
    iget-object v4, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v4, v4, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v4, v7, v8, v9}, Lmodule/sound/C7604$j;->a(DI)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 14
    iget-object v4, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v4, v4, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v4, v1, v2, v9}, Lmodule/sound/C7604$j;->a(DI)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v3, v2

    .line 15
    iget-object v1, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v1, v1, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v1, v10, v11, v9}, Lmodule/sound/C7604$j;->a(DI)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v3, v2

    .line 16
    iget-object v1, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v1, v1, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v1, v12, v13, v9}, Lmodule/sound/C7604$j;->a(DI)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v3, v2

    return-object v3

    :cond_5
    const/16 v15, 0xa

    new-array v15, v15, [I

    .line 17
    iget-object v6, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v6, v6, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v6, v4, v5, v9}, Lmodule/sound/C7604$j;->b(DI)I

    move-result v6

    aput v6, v15, v14

    .line 18
    iget-object v6, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v6, v6, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v6, v4, v5, v9}, Lmodule/sound/C7604$j;->c(DI)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v15, v5

    .line 19
    iget-object v4, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v4, v4, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v4, v7, v8, v9}, Lmodule/sound/C7604$j;->b(DI)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v15, v5

    .line 20
    iget-object v4, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v4, v4, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v4, v7, v8, v9}, Lmodule/sound/C7604$j;->c(DI)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v15, v5

    .line 21
    iget-object v4, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v4, v4, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v4, v1, v2, v9}, Lmodule/sound/C7604$j;->b(DI)I

    move-result v4

    const/4 v5, 0x4

    aput v4, v15, v5

    .line 22
    iget-object v4, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v4, v4, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v4, v1, v2, v9}, Lmodule/sound/C7604$j;->c(DI)I

    move-result v1

    aput v1, v15, v3

    const/4 v1, 0x6

    .line 23
    iget-object v2, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v2, v2, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v2, v10, v11, v9}, Lmodule/sound/C7604$j;->b(DI)I

    move-result v2

    aput v2, v15, v1

    const/4 v1, 0x7

    .line 24
    iget-object v2, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v2, v2, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v2, v10, v11, v9}, Lmodule/sound/C7604$j;->c(DI)I

    move-result v2

    aput v2, v15, v1

    const/16 v1, 0x8

    .line 25
    iget-object v2, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v2, v2, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v2, v12, v13, v9}, Lmodule/sound/C7604$j;->b(DI)I

    move-result v2

    aput v2, v15, v1

    const/16 v1, 0x9

    .line 26
    iget-object v2, v0, Lmodule/sound/C7604$e;->g:Lmodule/sound/C7604;

    iget-object v2, v2, Lmodule/sound/C7604;->A4:Lmodule/sound/C7604$j;

    invoke-virtual {v2, v12, v13, v9}, Lmodule/sound/C7604$j;->c(DI)I

    move-result v2

    aput v2, v15, v1

    return-object v15
.end method

.method public b(IIDD)V
    .locals 4

    int-to-double v0, p2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    const-wide v2, 0x40e7700000000000L    # 48000.0

    div-double/2addr v0, v2

    .line 1
    iput-wide v0, p0, Lmodule/sound/C7604$e;->a:D

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmodule/sound/C7604$e;->b:D

    .line 3
    iget-wide v0, p0, Lmodule/sound/C7604$e;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmodule/sound/C7604$e;->c:D

    .line 4
    iget-wide v0, p0, Lmodule/sound/C7604$e;->b:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p3, v2

    div-double/2addr v0, p3

    iput-wide v0, p0, Lmodule/sound/C7604$e;->d:D

    const-wide/high16 p2, 0x4024000000000000L    # 10.0

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    const/4 p4, 0x4

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    div-double/2addr p5, v0

    .line 5
    invoke-static {p2, p3, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lmodule/sound/C7604$e;->e:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    div-double/2addr p5, v0

    .line 6
    invoke-static {p2, p3, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lmodule/sound/C7604$e;->e:D

    :goto_1
    return-void
.end method
