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
.method public set(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 2
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 3
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 4
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 5
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 7
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 8
    iget p1, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput p1, p0, Landroid/text/TextPaint;->underlineThickness:F

    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 2
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    return-void
.end method
