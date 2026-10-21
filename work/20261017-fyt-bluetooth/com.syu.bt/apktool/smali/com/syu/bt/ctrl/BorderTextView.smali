.class public Lcom/syu/bt/ctrl/BorderTextView;
.super Landroid/widget/TextView;
.source "BorderTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field DEFAULT:I

.field bIsFocus:Z

.field borderColor:I

.field bottom:F

.field content:Ljava/lang/String;

.field contentWidth:F

.field isBoard:Z

.field left:F

.field leftInit:Z

.field moveLeft:I

.field moveRight:I

.field paddingLeft:F

.field paddingTop:F

.field paint:Landroid/graphics/Paint;

.field rectLeft:F

.field rectTop:F

.field right:F

.field rightInit:Z

.field stop:Z

.field textColor:I

.field textSize:I

.field top:F

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->bIsFocus:Z

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    .line 25
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->isBoard:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->width:F

    .line 54
    iput v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->moveLeft:I

    const v0, 0xf4240

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->moveRight:I

    .line 56
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->leftInit:Z

    .line 57
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->rightInit:Z

    .line 58
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->stop:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->bIsFocus:Z

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    .line 25
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->isBoard:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->width:F

    .line 54
    iput v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->moveLeft:I

    const v0, 0xf4240

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->moveRight:I

    .line 56
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->leftInit:Z

    .line 57
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->rightInit:Z

    .line 58
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->stop:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[ILjava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "colors"    # [I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "txtHigh"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->bIsFocus:Z

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    .line 25
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->isBoard:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->width:F

    .line 54
    iput v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->moveLeft:I

    const v0, 0xf4240

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->moveRight:I

    .line 56
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->leftInit:Z

    .line 57
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->rightInit:Z

    .line 58
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->stop:Z

    .line 42
    iput p4, p0, Lcom/syu/bt/ctrl/BorderTextView;->textSize:I

    .line 43
    iput-object p3, p0, Lcom/syu/bt/ctrl/BorderTextView;->content:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    .line 46
    aget v0, p2, v1

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->textColor:I

    .line 47
    aget v0, p2, v2

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->borderColor:I

    .line 48
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 62
    iget-object v1, p0, Lcom/syu/bt/ctrl/BorderTextView;->content:Ljava/lang/String;

    .line 63
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/BorderTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/syu/bt/ctrl/BorderTextView;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paddingLeft:F

    .line 64
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/BorderTextView;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/syu/bt/ctrl/BorderTextView;->textSize:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paddingTop:F

    .line 66
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->contentWidth:F

    .line 68
    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paddingLeft:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/BorderTextView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v13

    .line 70
    .local v13, "subIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/syu/bt/ctrl/BorderTextView;->content:Ljava/lang/String;

    add-int/lit8 v4, v13, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->contentWidth:F

    .line 72
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/BorderTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->contentWidth:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paddingLeft:F

    .line 74
    .end local v13    # "subIndex":I
    :cond_0
    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paddingLeft:F

    div-float/2addr v0, v7

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->rectLeft:F

    .line 75
    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paddingTop:F

    div-float/2addr v0, v7

    iput v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->rectTop:F

    .line 76
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 77
    .local v12, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v0, v12, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v12, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    iget v2, v12, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v11, v0, v2

    .line 78
    .local v11, "distance":F
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/BorderTextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v10, v0, v11

    .line 79
    .local v10, "baseline":F
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 80
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/BorderTextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->bIsFocus:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->borderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->rectLeft:F

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    int-to-float v2, v2

    sub-float v3, v0, v2

    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->rectTop:F

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    int-to-float v2, v2

    sub-float v4, v0, v2

    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->rectLeft:F

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->contentWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    int-to-float v2, v2

    add-float v5, v0, v2

    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->rectTop:F

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->textSize:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    int-to-float v2, v2

    add-float v6, v0, v2

    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    int-to-float v7, v0

    iget v0, p0, Lcom/syu/bt/ctrl/BorderTextView;->DEFAULT:I

    int-to-float v8, v0

    iget-object v9, p0, Lcom/syu/bt/ctrl/BorderTextView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 87
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 179
    return-void
.end method

.method public resetText(Z)V
    .locals 0
    .param p1, "bIsFocus"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/syu/bt/ctrl/BorderTextView;->bIsFocus:Z

    .line 183
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/BorderTextView;->invalidate()V

    .line 184
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 189
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    return-void

    .line 191
    :cond_0
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_1
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/BorderTextView;->postInvalidate()V

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method
