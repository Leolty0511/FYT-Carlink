.class public Lmodule/sound/C7738NOR7870$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7738NOR7870;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public final synthetic g:Lmodule/sound/C7738NOR7870;


# direct methods
.method public constructor <init>(Lmodule/sound/C7738NOR7870;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lmodule/sound/C7738NOR7870$i;->a:D

    const-wide v0, -0x3f9de00000000000L    # -145.0

    .line 3
    iput-wide v0, p0, Lmodule/sound/C7738NOR7870$i;->b:D

    return-void
.end method


# virtual methods
.method public a(IIDI)[I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    .line 1
    invoke-virtual/range {p0 .. p4}, Lmodule/sound/C7738NOR7870$i;->h(IID)V

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    move-wide v6, v4

    move-wide v10, v6

    move-wide v12, v8

    move-wide v8, v10

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v4, v0, Lmodule/sound/C7738NOR7870$i;->f:D

    add-double v10, v4, v8

    .line 3
    iget-wide v12, v0, Lmodule/sound/C7738NOR7870$i;->e:D

    sub-double v14, v8, v12

    div-double/2addr v14, v6

    div-double/2addr v14, v10

    sub-double v16, v8, v12

    div-double v16, v16, v10

    sub-double v4, v8, v4

    neg-double v4, v4

    div-double/2addr v4, v10

    mul-double v18, v12, v6

    div-double v18, v18, v10

    sub-double/2addr v8, v12

    div-double/2addr v8, v6

    div-double/2addr v8, v10

    move-wide v12, v8

    move-wide/from16 v6, v16

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v4, v0, Lmodule/sound/C7738NOR7870$i;->f:D

    add-double v10, v4, v8

    .line 5
    iget-wide v12, v0, Lmodule/sound/C7738NOR7870$i;->e:D

    add-double v14, v12, v8

    div-double/2addr v14, v6

    div-double/2addr v14, v10

    add-double v6, v12, v8

    neg-double v6, v6

    div-double/2addr v6, v10

    sub-double v4, v8, v4

    neg-double v4, v4

    div-double/2addr v4, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v18, v12, v16

    div-double v18, v18, v10

    add-double/2addr v12, v8

    div-double v12, v12, v16

    div-double v8, v12, v10

    move-wide v12, v8

    :goto_0
    move-wide/from16 v10, v18

    move-wide v8, v4

    move-wide v4, v14

    :goto_1
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v14, 0x0

    .line 6
    iget-object v15, v0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v15, v15, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    invoke-virtual {v15, v4, v5, v2}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result v4

    aput v4, v1, v14

    .line 7
    iget-object v4, v0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v4, v4, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    invoke-virtual {v4, v6, v7, v2}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x2

    .line 8
    iget-object v4, v0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v4, v4, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    invoke-virtual {v4, v8, v9, v2}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x3

    .line 9
    iget-object v4, v0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v4, v4, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    invoke-virtual {v4, v10, v11, v2}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x4

    .line 10
    iget-object v4, v0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v4, v4, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    invoke-virtual {v4, v12, v13, v2}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result v2

    aput v2, v1, v3

    return-object v1
.end method

.method public b(D)I
    .locals 4

    const-wide v0, -0x3f9de00000000000L    # -145.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr p1, v2

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    .line 2
    :goto_0
    iget-object v0, p0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v0, v0, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result p1

    return p1
.end method

.method public c(D)I
    .locals 4

    const-wide v0, -0x3f9de00000000000L    # -145.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr p1, v2

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    .line 2
    :goto_0
    iget-object v0, p0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v0, v0, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result p1

    return p1
.end method

.method public d(D)I
    .locals 4

    const-wide v0, -0x3f9de00000000000L    # -145.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr p1, v2

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    .line 2
    :goto_0
    iget-object v0, p0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v0, v0, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result p1

    return p1
.end method

.method public e(D)I
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v0, v0, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result p1

    return p1
.end method

.method public f(D)I
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    .line 1
    iget-object p1, p0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object p1, p1, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result p1

    return p1
.end method

.method public g(D)I
    .locals 4

    const-wide v0, -0x3f9de00000000000L    # -145.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr p1, v2

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    .line 2
    :goto_0
    iget-object v0, p0, Lmodule/sound/C7738NOR7870$i;->g:Lmodule/sound/C7738NOR7870;

    iget-object v0, v0, Lmodule/sound/C7738NOR7870;->T8:Lmodule/sound/C7738NOR7870$l;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lmodule/sound/C7738NOR7870$l;->a(DI)I

    move-result p1

    return p1
.end method

.method public h(IID)V
    .locals 2

    int-to-double p1, p2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr p1, v0

    const-wide v0, 0x40e7700000000000L    # 48000.0

    div-double/2addr p1, v0

    .line 1
    iput-wide p1, p0, Lmodule/sound/C7738NOR7870$i;->c:D

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Lmodule/sound/C7738NOR7870$i;->d:D

    .line 3
    iget-wide p1, p0, Lmodule/sound/C7738NOR7870$i;->c:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lmodule/sound/C7738NOR7870$i;->e:D

    .line 4
    iget-wide p1, p0, Lmodule/sound/C7738NOR7870$i;->d:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p3, v0

    div-double/2addr p1, p3

    iput-wide p1, p0, Lmodule/sound/C7738NOR7870$i;->f:D

    return-void
.end method
