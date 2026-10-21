.class public Lmodule/sound/C7739_QC$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7739_QC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public final synthetic h:Lmodule/sound/C7739_QC;


# direct methods
.method public constructor <init>(Lmodule/sound/C7739_QC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

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
    invoke-virtual/range {v0 .. v6}, Lmodule/sound/C7739_QC$f;->b(IIDD)V

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

    move-object v0, v7

    move-wide v7, v10

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-wide v4, v7, Lmodule/sound/C7739_QC$f;->f:D

    div-double v4, v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v7, Lmodule/sound/C7739_QC$f;->g:D

    .line 3
    iget-wide v0, v7, Lmodule/sound/C7739_QC$f;->f:D

    add-double v16, v0, v12

    sub-double v18, v0, v12

    iget-wide v2, v7, Lmodule/sound/C7739_QC$f;->c:D

    mul-double v18, v18, v2

    add-double v16, v16, v18

    iget-wide v14, v7, Lmodule/sound/C7739_QC$f;->b:D

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

    div-double v0, v0, v16

    move-wide/from16 v4, v20

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v7, v10

    move-wide v10, v12

    move-wide/from16 v12, v26

    goto/16 :goto_1

    :cond_1
    move-object v0, v7

    .line 4
    iget-wide v1, v0, Lmodule/sound/C7739_QC$f;->f:D

    div-double v1, v1, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lmodule/sound/C7739_QC$f;->g:D

    .line 5
    iget-wide v3, v0, Lmodule/sound/C7739_QC$f;->f:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double v12, v3, v5

    sub-double v7, v3, v5

    iget-wide v14, v0, Lmodule/sound/C7739_QC$f;->c:D

    mul-double/2addr v7, v14

    sub-double/2addr v12, v7

    iget-wide v7, v0, Lmodule/sound/C7739_QC$f;->b:D

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

    div-double v12, v3, v12

    move-wide v1, v10

    move-wide/from16 v7, v18

    move-wide v10, v5

    move-wide/from16 v4, v16

    goto/16 :goto_1

    :cond_2
    move-object v0, v7

    move-wide/from16 v20, v12

    .line 6
    iget-wide v1, v0, Lmodule/sound/C7739_QC$f;->e:D

    iget-wide v3, v0, Lmodule/sound/C7739_QC$f;->f:D

    div-double v5, v1, v3

    add-double v5, v5, v20

    mul-double v7, v1, v3

    sub-double v12, v20, v7

    div-double v7, v12, v5

    .line 7
    iget-wide v10, v0, Lmodule/sound/C7739_QC$f;->c:D

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

    div-double/2addr v1, v5

    move-wide v4, v7

    move-wide v7, v12

    move-wide v12, v1

    move-wide v1, v14

    goto :goto_1

    :cond_3
    move-object v0, v7

    move-wide/from16 v16, v10

    move-wide/from16 v20, v12

    .line 8
    iget-wide v1, v0, Lmodule/sound/C7739_QC$f;->e:D

    add-double v12, v1, v20

    .line 9
    iget-wide v3, v0, Lmodule/sound/C7739_QC$f;->c:D

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
    iget-wide v1, v0, Lmodule/sound/C7739_QC$f;->e:D

    add-double v12, v1, v20

    .line 11
    iget-wide v3, v0, Lmodule/sound/C7739_QC$f;->c:D

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

    div-double v12, v3, v12

    move-wide v4, v5

    :goto_1
    const/4 v3, 0x5

    const/4 v14, 0x0

    if-nez p1, :cond_5

    new-array v3, v3, [I

    .line 12
    iget-object v6, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v6, v6, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v6, v4, v5, v9}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v3, v14

    .line 13
    iget-object v4, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v4, v4, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v4, v7, v8, v9}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 14
    iget-object v4, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v4, v4, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v4, v1, v2, v9}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x2

    aput v1, v3, v2

    .line 15
    iget-object v1, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v1, v1, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v1, v10, v11, v9}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x3

    aput v1, v3, v2

    .line 16
    iget-object v1, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v1, v1, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v1, v12, v13, v9}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x4

    aput v1, v3, v2

    return-object v3

    :cond_5
    const/16 v15, 0xa

    new-array v15, v15, [I

    .line 17
    iget-object v6, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v6, v6, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    move-wide/from16 v16, v12

    invoke-virtual {v6, v4, v5, v9}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v12

    long-to-int v6, v12

    aput v6, v15, v14

    .line 18
    iget-object v6, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v6, v6, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v6, v4, v5, v9}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v15, v5

    .line 19
    iget-object v4, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v4, v4, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v4, v7, v8, v9}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x2

    aput v4, v15, v5

    .line 20
    iget-object v4, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v4, v4, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v4, v7, v8, v9}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x3

    aput v4, v15, v5

    .line 21
    iget-object v4, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v4, v4, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v4, v1, v2, v9}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x4

    aput v4, v15, v5

    .line 22
    iget-object v4, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v4, v4, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v4, v1, v2, v9}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, v15, v3

    const/4 v1, 0x6

    .line 23
    iget-object v2, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v2, v2, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v2, v10, v11, v9}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v15, v1

    const/4 v1, 0x7

    .line 24
    iget-object v2, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v2, v2, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v2, v10, v11, v9}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v15, v1

    const/16 v1, 0x8

    .line 25
    iget-object v2, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v2, v2, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    move-wide/from16 v12, v16

    invoke-virtual {v2, v12, v13, v9}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v15, v1

    const/16 v1, 0x9

    .line 26
    iget-object v2, v0, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v2, v2, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v2, v12, v13, v9}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v15, v1

    return-object v15
.end method

.method public b(IIDD)V
    .locals 4

    int-to-double v0, p2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    const-wide v2, 0x40f7700000000000L    # 96000.0

    div-double/2addr v0, v2

    .line 1
    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->a:D

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->b:D

    .line 3
    iget-wide v0, p0, Lmodule/sound/C7739_QC$f;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->c:D

    .line 4
    iget-wide v0, p0, Lmodule/sound/C7739_QC$f;->b:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p3, v2

    div-double/2addr v0, p3

    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->e:D

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

    iput-wide p1, p0, Lmodule/sound/C7739_QC$f;->f:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    div-double/2addr p5, v0

    .line 6
    invoke-static {p2, p3, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lmodule/sound/C7739_QC$f;->f:D

    :goto_1
    return-void
.end method

.method public c(IIDD)V
    .locals 4

    int-to-double v0, p2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    const-wide v2, 0x40f7700000000000L    # 96000.0

    div-double/2addr v0, v2

    .line 1
    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->a:D

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->b:D

    .line 3
    iget-wide v0, p0, Lmodule/sound/C7739_QC$f;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->c:D

    .line 4
    iget-wide v0, p0, Lmodule/sound/C7739_QC$f;->a:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->d:D

    .line 5
    iget-wide v0, p0, Lmodule/sound/C7739_QC$f;->b:D

    mul-double/2addr p3, v2

    div-double/2addr v0, p3

    iput-wide v0, p0, Lmodule/sound/C7739_QC$f;->e:D

    const-wide/high16 p2, 0x4024000000000000L    # 10.0

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    const/4 p4, 0x5

    if-lt p1, p4, :cond_0

    const/16 p4, 0x14

    if-gt p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    div-double/2addr p5, v0

    .line 6
    invoke-static {p2, p3, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lmodule/sound/C7739_QC$f;->f:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    div-double/2addr p5, v0

    .line 7
    invoke-static {p2, p3, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lmodule/sound/C7739_QC$f;->f:D

    :goto_1
    return-void
.end method

.method public d(IIIIDDI)[I
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p9

    const-wide v3, 0x3fe6a0a5269595ffL    # 0.70711

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lmodule/sound/C7739_QC$f;->c(IIDD)V

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-eq v8, v3, :cond_10

    if-eq v8, v2, :cond_e

    if-eq v8, v1, :cond_c

    if-eq v8, v0, :cond_a

    const/16 v6, 0xb

    const-wide/high16 v15, 0x4020000000000000L    # 8.0

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    if-eq v8, v6, :cond_8

    const/16 v6, 0xc

    const-wide/high16 v19, -0x4000000000000000L    # -2.0

    if-eq v8, v6, :cond_6

    const/16 v6, 0xf

    const-wide/high16 v15, 0x4028000000000000L    # 12.0

    if-eq v8, v6, :cond_4

    const/16 v6, 0x10

    if-eq v8, v6, :cond_2

    const/16 v6, 0x13

    const-wide/high16 v15, 0x4030000000000000L    # 16.0

    if-eq v8, v6, :cond_1

    const/16 v6, 0x14

    if-eq v8, v6, :cond_0

    :goto_0
    move-wide v4, v13

    :goto_1
    const-wide/16 v0, 0x0

    :goto_2
    const-wide/16 v8, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_8

    :cond_0
    mul-int/lit8 v6, v9, 0x2

    add-int/2addr v6, v5

    int-to-double v8, v6

    mul-double v8, v8, v17

    div-double/2addr v8, v15

    .line 2
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    iget-wide v0, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v15, v0

    add-double/2addr v15, v13

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v15, v0

    div-double v0, v13, v15

    mul-double v17, v0, v19

    .line 3
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v11

    iget-wide v2, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v8, v2

    sub-double/2addr v8, v13

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v8, v2

    div-double v2, v8, v15

    .line 4
    iget-wide v8, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v13, v8

    mul-double/2addr v13, v11

    div-double v11, v13, v15

    move-wide v4, v0

    move-wide v13, v11

    move-wide/from16 v8, v17

    move-wide v11, v4

    move-wide v0, v2

    goto/16 :goto_8

    :cond_1
    mul-int/lit8 v0, v9, 0x2

    add-int/2addr v0, v5

    int-to-double v0, v0

    mul-double v0, v0, v17

    div-double/2addr v0, v15

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v11

    iget-wide v8, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v2, v8

    add-double/2addr v2, v13

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 6
    iget-wide v8, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v8, v2

    mul-double v15, v8, v11

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    iget-wide v5, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v0, v5

    sub-double/2addr v0, v13

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v0, v5

    div-double/2addr v0, v2

    .line 8
    iget-wide v5, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v13, v5

    mul-double/2addr v13, v11

    div-double v11, v13, v2

    move-wide v4, v8

    move-wide v13, v11

    move-wide v11, v4

    move-wide v8, v15

    goto/16 :goto_8

    :cond_2
    if-le v9, v4, :cond_3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v0, v9, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-double v0, v0

    mul-double v0, v0, v17

    div-double/2addr v0, v15

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v11

    iget-wide v5, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v2, v5

    add-double/2addr v2, v13

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v2, v5

    div-double v5, v13, v2

    mul-double v8, v5, v19

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    move-wide/from16 p3, v5

    iget-wide v4, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v0, v4

    sub-double/2addr v0, v13

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v0, v4

    div-double/2addr v0, v2

    .line 11
    iget-wide v4, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v13, v4

    mul-double/2addr v13, v11

    div-double v11, v13, v2

    move-wide/from16 v4, p3

    goto/16 :goto_4

    :cond_4
    move v0, v4

    if-le v9, v0, :cond_5

    goto/16 :goto_0

    :cond_5
    mul-int/lit8 v1, v9, 0x2

    const/4 v0, 0x1

    add-int/2addr v1, v0

    int-to-double v0, v1

    mul-double v0, v0, v17

    div-double/2addr v0, v15

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v11

    iget-wide v4, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v13

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 13
    iget-wide v4, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    mul-double v8, v4, v11

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    iget-wide v11, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v0, v11

    sub-double/2addr v0, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double/2addr v0, v11

    div-double v11, v0, v2

    .line 15
    iget-wide v0, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v0, v15, v0

    mul-double/2addr v0, v13

    div-double/2addr v0, v2

    move-wide v13, v0

    move-wide v0, v11

    goto/16 :goto_5

    :cond_6
    move v0, v5

    move-wide v13, v11

    if-le v9, v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    mul-int/lit8 v2, v9, 0x2

    add-int/2addr v2, v0

    int-to-double v0, v2

    mul-double v0, v0, v17

    div-double/2addr v0, v15

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v13

    iget-wide v4, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v2, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double v11, v8, v2

    mul-double v4, v11, v19

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v13

    iget-wide v13, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v0, v13

    sub-double/2addr v0, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    sub-double/2addr v0, v13

    div-double/2addr v0, v2

    .line 18
    iget-wide v13, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v13, v15, v13

    mul-double/2addr v13, v8

    div-double v2, v13, v2

    move-wide v13, v2

    move-wide v8, v4

    move-wide v4, v11

    goto/16 :goto_8

    :cond_8
    move v0, v5

    move-wide v1, v11

    if-le v9, v0, :cond_9

    :goto_3
    const-wide/16 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_2

    :cond_9
    const/4 v3, 0x2

    mul-int/lit8 v4, v9, 0x2

    add-int/2addr v4, v0

    int-to-double v3, v4

    mul-double v3, v3, v17

    div-double/2addr v3, v15

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    iget-wide v8, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v5, v8

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v11

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v5, v8

    .line 20
    iget-wide v8, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v8, v5

    mul-double v13, v8, v1

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    iget-wide v1, v7, Lmodule/sound/C7739_QC$f;->d:D

    mul-double/2addr v3, v1

    sub-double/2addr v3, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v3, v0

    div-double v0, v3, v5

    .line 22
    iget-wide v2, v7, Lmodule/sound/C7739_QC$f;->d:D

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v2, v15, v2

    mul-double/2addr v2, v11

    div-double v11, v2, v5

    move-wide v4, v8

    move-wide v8, v13

    :goto_4
    move-wide v13, v11

    :goto_5
    move-wide v11, v4

    goto/16 :goto_8

    :cond_a
    move-wide v15, v13

    if-eqz v9, :cond_b

    goto :goto_7

    .line 23
    :cond_b
    iget-wide v0, v7, Lmodule/sound/C7739_QC$f;->e:D

    add-double v13, v0, v15

    .line 24
    iget-wide v2, v7, Lmodule/sound/C7739_QC$f;->c:D

    add-double v4, v2, v15

    div-double/2addr v4, v11

    div-double/2addr v4, v13

    add-double v8, v2, v15

    neg-double v8, v8

    div-double/2addr v8, v13

    sub-double v0, v15, v0

    neg-double v0, v0

    div-double/2addr v0, v13

    mul-double v17, v2, v11

    div-double v17, v17, v13

    add-double/2addr v2, v15

    goto :goto_6

    :cond_c
    move-wide v15, v13

    if-eqz v9, :cond_d

    goto :goto_7

    .line 25
    :cond_d
    iget-wide v0, v7, Lmodule/sound/C7739_QC$f;->e:D

    add-double v13, v0, v15

    .line 26
    iget-wide v2, v7, Lmodule/sound/C7739_QC$f;->c:D

    sub-double v4, v15, v2

    div-double/2addr v4, v11

    div-double/2addr v4, v13

    sub-double v8, v15, v2

    div-double/2addr v8, v13

    sub-double v0, v15, v0

    neg-double v0, v0

    div-double/2addr v0, v13

    mul-double v17, v2, v11

    div-double v17, v17, v13

    sub-double v2, v15, v2

    :goto_6
    div-double/2addr v2, v11

    div-double v13, v2, v13

    move-wide v11, v4

    move-wide v4, v13

    move-wide/from16 v13, v17

    goto :goto_8

    :cond_e
    move-wide v15, v13

    if-eqz v9, :cond_f

    goto :goto_7

    .line 27
    :cond_f
    iget-wide v0, v7, Lmodule/sound/C7739_QC$f;->b:D

    sub-double v13, v15, v0

    iget-wide v0, v7, Lmodule/sound/C7739_QC$f;->c:D

    div-double/2addr v13, v0

    add-double v0, v13, v15

    div-double/2addr v0, v11

    neg-double v2, v0

    move-wide v4, v0

    move-wide v8, v2

    const-wide/16 v0, 0x0

    const-wide/16 v11, 0x0

    goto :goto_8

    :cond_10
    move-wide v15, v13

    if-eqz v9, :cond_11

    :goto_7
    move-wide v4, v15

    goto/16 :goto_1

    .line 28
    :cond_11
    iget-wide v0, v7, Lmodule/sound/C7739_QC$f;->c:D

    iget-wide v2, v7, Lmodule/sound/C7739_QC$f;->b:D

    add-double/2addr v2, v15

    div-double/2addr v0, v2

    sub-double v13, v15, v0

    div-double/2addr v13, v11

    move-wide v4, v13

    move-wide v8, v4

    const-wide/16 v11, 0x0

    move-wide v13, v0

    const-wide/16 v0, 0x0

    :goto_8
    const/4 v3, 0x3

    const/4 v15, 0x0

    if-nez p1, :cond_12

    const/4 v6, 0x5

    new-array v6, v6, [I

    .line 29
    iget-object v2, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v2, v2, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v2, v11, v12, v10}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v11

    long-to-int v2, v11

    aput v2, v6, v15

    .line 30
    iget-object v2, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v2, v2, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v2, v8, v9, v10}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v8

    long-to-int v2, v8

    const/4 v8, 0x1

    aput v2, v6, v8

    .line 31
    iget-object v2, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v2, v2, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v2, v0, v1, v10}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x2

    aput v0, v6, v1

    .line 32
    iget-object v0, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v0, v0, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v0, v13, v14, v10}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v0

    long-to-int v0, v0

    aput v0, v6, v3

    .line 33
    iget-object v0, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v0, v0, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v0, v4, v5, v10}, Lmodule/sound/C7739_QC$l;->a(DI)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, v6, v1

    return-object v6

    :cond_12
    const/16 v2, 0xa

    new-array v2, v2, [I

    .line 34
    iget-object v6, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v6, v6, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    move-wide/from16 v16, v4

    invoke-virtual {v6, v11, v12, v10}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v2, v15

    .line 35
    iget-object v3, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v3, v3, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v3, v11, v12, v10}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 36
    iget-object v3, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v3, v3, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v3, v8, v9, v10}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 37
    iget-object v3, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v3, v3, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v3, v8, v9, v10}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x3

    aput v3, v2, v4

    .line 38
    iget-object v3, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v3, v3, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v3, v0, v1, v10}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x4

    aput v3, v2, v4

    .line 39
    iget-object v3, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v3, v3, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v3, v0, v1, v10}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x5

    aput v0, v2, v1

    .line 40
    iget-object v0, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v0, v0, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v0, v13, v14, v10}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x6

    aput v0, v2, v1

    .line 41
    iget-object v0, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v0, v0, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v0, v13, v14, v10}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x7

    aput v0, v2, v1

    .line 42
    iget-object v0, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v0, v0, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    move-wide/from16 v13, v16

    invoke-virtual {v0, v13, v14, v10}, Lmodule/sound/C7739_QC$l;->b(DI)J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x8

    aput v0, v2, v1

    const/16 v0, 0x9

    .line 43
    iget-object v1, v7, Lmodule/sound/C7739_QC$f;->h:Lmodule/sound/C7739_QC;

    iget-object v1, v1, Lmodule/sound/C7739_QC;->f9:Lmodule/sound/C7739_QC$l;

    invoke-virtual {v1, v13, v14, v10}, Lmodule/sound/C7739_QC$l;->c(DI)J

    move-result-wide v3

    long-to-int v1, v3

    aput v1, v2, v0

    return-object v2
.end method
