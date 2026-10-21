.class public Lmodule/sound/DU561NEW2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/DU561NEW2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/DU561NEW2;


# direct methods
.method public constructor <init>(Lmodule/sound/DU561NEW2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/DU561NEW2$c;->a:Lmodule/sound/DU561NEW2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)I
    .locals 4

    const-wide v0, -0x3fade00000000000L    # -72.5

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

    :goto_0
    const-wide/high16 v0, 0x40b0000000000000L    # 4096.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method public b(D)I
    .locals 3

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method
