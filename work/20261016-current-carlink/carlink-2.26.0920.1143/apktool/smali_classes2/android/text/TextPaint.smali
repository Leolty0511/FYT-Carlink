.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "SourceFile"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Landroid/text/TextPaint;->density:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Landroid/text/TextPaint;->density:F

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    iput p1, p0, Landroid/text/TextPaint;->density:F

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method


# virtual methods
.method public getUnderlineThickness()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/graphics/Paint;->getUnderlineThickness()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public hasEqualAttributes(Landroid/text/TextPaint;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 2
    .line 3
    iget v1, p1, Landroid/text/TextPaint;->bgColor:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 8
    .line 9
    iget v1, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 14
    .line 15
    iget v1, p1, Landroid/text/TextPaint;->linkColor:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 20
    .line 21
    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget v0, p0, Landroid/text/TextPaint;->density:F

    .line 26
    .line 27
    iget v1, p1, Landroid/text/TextPaint;->density:F

    .line 28
    .line 29
    cmpl-float v0, v0, v1

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 34
    .line 35
    iget v1, p1, Landroid/text/TextPaint;->underlineColor:I

    .line 36
    .line 37
    if-ne v0, v1, :cond_0

    .line 38
    .line 39
    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 40
    .line 41
    iget v1, p1, Landroid/text/TextPaint;->underlineThickness:F

    .line 42
    .line 43
    cmpl-float v0, v0, v1

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-super {p0, p1}, Landroid/graphics/Paint;->hasEqualAttributes(Landroid/graphics/Paint;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    return p1
.end method

.method public set(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 5
    .line 6
    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 7
    .line 8
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 9
    .line 10
    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 11
    .line 12
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 13
    .line 14
    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 15
    .line 16
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    .line 17
    .line 18
    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 19
    .line 20
    iget v0, p1, Landroid/text/TextPaint;->density:F

    .line 21
    .line 22
    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 23
    .line 24
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    .line 25
    .line 26
    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 27
    .line 28
    iget p1, p1, Landroid/text/TextPaint;->underlineThickness:F

    .line 29
    .line 30
    iput p1, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 31
    .line 32
    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 2
    .line 3
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 4
    .line 5
    return-void
.end method
