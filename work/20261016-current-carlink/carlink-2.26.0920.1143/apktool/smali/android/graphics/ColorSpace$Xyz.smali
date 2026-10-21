.class final Landroid/graphics/ColorSpace$Xyz;
.super Landroid/graphics/ColorSpace;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Xyz"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 2
    sget-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(F)F
    .locals 2

    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    aput v1, p1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    aget v1, p1, v0

    .line 12
    .line 13
    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aput v1, p1, v0

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    aget v1, p1, v0

    .line 21
    .line 22
    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    aput v1, p1, v0

    .line 27
    .line 28
    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    const/high16 p1, 0x40000000    # 2.0f

    return p1
.end method

.method public getMinValue(I)F
    .locals 0

    const/high16 p1, -0x40000000    # -2.0f

    return p1
.end method

.method public isWideGamut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toXyz([F)[F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    aput v1, p1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    aget v1, p1, v0

    .line 12
    .line 13
    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aput v1, p1, v0

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    aget v1, p1, v0

    .line 21
    .line 22
    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    aput v1, p1, v0

    .line 27
    .line 28
    return-object p1
.end method
