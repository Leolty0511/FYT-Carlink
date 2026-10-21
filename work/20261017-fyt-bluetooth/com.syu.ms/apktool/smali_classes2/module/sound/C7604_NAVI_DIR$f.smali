.class public Lmodule/sound/C7604_NAVI_DIR$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7604_NAVI_DIR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7604_NAVI_DIR;


# direct methods
.method public constructor <init>(Lmodule/sound/C7604_NAVI_DIR;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7604_NAVI_DIR$f;->a:Lmodule/sound/C7604_NAVI_DIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)I
    .locals 4

    const-wide v0, -0x3f9de00000000000L    # -145.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr p1, v2

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    .line 2
    :goto_0
    iget-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$f;->a:Lmodule/sound/C7604_NAVI_DIR;

    iget-object v0, v0, Lmodule/sound/C7604_NAVI_DIR;->G4:Lmodule/sound/C7604_NAVI_DIR$l;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lmodule/sound/C7604_NAVI_DIR$l;->a(DI)I

    move-result p1

    return p1
.end method
