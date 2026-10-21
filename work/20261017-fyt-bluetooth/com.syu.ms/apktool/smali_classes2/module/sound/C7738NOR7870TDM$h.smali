.class public Lmodule/sound/C7738NOR7870TDM$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7738NOR7870TDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7738NOR7870TDM;


# direct methods
.method public constructor <init>(Lmodule/sound/C7738NOR7870TDM;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7738NOR7870TDM$h;->a:Lmodule/sound/C7738NOR7870TDM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 8

    if-nez p1, :cond_0

    const/16 p1, -0x91

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    .line 1
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-int p1, v2

    :goto_0
    return p1
.end method
