.class public Lmodule/sound/C7738NOR7870$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7738NOR7870;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7738NOR7870;


# direct methods
.method public constructor <init>(Lmodule/sound/C7738NOR7870;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7738NOR7870$l;->a:Lmodule/sound/C7738NOR7870;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(DI)I
    .locals 9

    rsub-int/lit8 p3, p3, 0x17

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p3, v0

    float-to-double v0, p3

    mul-double/2addr p1, v0

    const-wide v0, 0x415fffffc0000000L    # 8388607.0

    .line 2
    invoke-virtual {p0, v0, v1, p1, p2}, Lmodule/sound/C7738NOR7870$l;->e(DD)D

    move-result-wide p1

    const-wide/high16 v0, -0x3ea0000000000000L    # -8388608.0

    .line 3
    invoke-virtual {p0, v0, v1, p1, p2}, Lmodule/sound/C7738NOR7870$l;->d(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    const-wide/high16 v0, 0x4170000000000000L    # 1.6777216E7

    add-double/2addr p1, v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v3, p1, v0

    const-wide/16 v5, 0x0

    const-wide v7, 0x416fffffe0000000L    # 1.6777215E7

    move-object v2, p0

    .line 4
    invoke-virtual/range {v2 .. v8}, Lmodule/sound/C7738NOR7870$l;->f(DDD)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public b(DI)I
    .locals 7

    rsub-int/lit8 p3, p3, 0xf

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr p1, v0

    const-wide v0, 0x40dfffffffbffeb3L    # 32767.99998474

    .line 2
    invoke-virtual {p0, v0, v1, p1, p2}, Lmodule/sound/C7738NOR7870$l;->e(DD)D

    move-result-wide p1

    const-wide/high16 v0, -0x3f20000000000000L    # -32768.0

    .line 3
    invoke-virtual {p0, v0, v1, p1, p2}, Lmodule/sound/C7738NOR7870$l;->d(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    add-double/2addr p1, v0

    :cond_0
    move-wide v1, p1

    const-wide/16 v3, 0x0

    const-wide v5, 0x40efffe000000000L    # 65535.0

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v6}, Lmodule/sound/C7738NOR7870$l;->f(DDD)D

    move-result-wide p1

    double-to-int p1, p1

    int-to-double p1, p1

    double-to-int p1, p1

    mul-int/lit16 p1, p1, 0x100

    return p1
.end method

.method public c(DI)I
    .locals 9

    rsub-int/lit8 p3, p3, 0xf

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr p1, v0

    const-wide v0, 0x40dfffffffbffeb3L    # 32767.99998474

    .line 2
    invoke-virtual {p0, v0, v1, p1, p2}, Lmodule/sound/C7738NOR7870$l;->e(DD)D

    move-result-wide p1

    const-wide/high16 v0, -0x3f20000000000000L    # -32768.0

    .line 3
    invoke-virtual {p0, v0, v1, p1, p2}, Lmodule/sound/C7738NOR7870$l;->d(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    add-double/2addr p1, v0

    :cond_0
    double-to-int p3, p1

    int-to-double v0, p3

    sub-double/2addr p1, v0

    const-wide/high16 v0, 0x4160000000000000L    # 8388608.0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v3, p1, v0

    const-wide/16 v5, 0x0

    const-wide v7, 0x415fffffc0000000L    # 8388607.0

    move-object v2, p0

    .line 4
    invoke-virtual/range {v2 .. v8}, Lmodule/sound/C7738NOR7870$l;->f(DDD)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public d(DD)D
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public e(DD)D
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public f(DDD)D
    .locals 0

    .line 1
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method
