.class public Lmodule/sound/C7739_48$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7739_48;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7739_48;


# direct methods
.method public constructor <init>(Lmodule/sound/C7739_48;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7739_48$l;->a:Lmodule/sound/C7739_48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(DI)J
    .locals 8

    rsub-int/lit8 p3, p3, 0x1f

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p1

    const-wide/16 v4, 0x0

    cmpg-double p1, p1, v4

    if-gez p1, :cond_0

    const-wide/high16 p1, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    :goto_0
    add-double/2addr v0, p1

    const-wide/high16 p1, 0x403f000000000000L    # 31.0

    .line 2
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-virtual {p0, v0, v1, v4, v5}, Lmodule/sound/C7739_48$l;->e(DD)D

    move-result-wide v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    neg-double p1, p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lmodule/sound/C7739_48$l;->d(DD)D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1
.end method

.method public b(DI)J
    .locals 8

    rsub-int/lit8 p3, p3, 0x1f

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x403f000000000000L    # 31.0

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-virtual {p0, p1, p2, v4, v5}, Lmodule/sound/C7739_48$l;->e(DD)D

    move-result-wide p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lmodule/sound/C7739_48$l;->d(DD)D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1
.end method

.method public c(DI)J
    .locals 4

    rsub-int/lit8 v0, p3, 0x1f

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0, p1, p2, p3}, Lmodule/sound/C7739_48$l;->b(DI)J

    move-result-wide p1

    long-to-double p1, p1

    sub-double/2addr v0, p1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lmodule/sound/C7739_48$l;->a(DI)J

    move-result-wide p1

    return-wide p1
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
