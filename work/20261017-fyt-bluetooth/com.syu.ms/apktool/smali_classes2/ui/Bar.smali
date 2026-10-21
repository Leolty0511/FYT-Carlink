.class public Lui/Bar;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/Bar$a;
    }
.end annotation


# static fields
.field public static m:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:Lui/Bar$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lui/Bar;->a:Ljava/lang/String;

    .line 3
    sget p1, Lui/Bar;->m:I

    iput p1, p0, Lui/Bar;->f:I

    const/16 p1, 0x64

    .line 4
    iput p1, p0, Lui/Bar;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lui/Bar;->h:I

    .line 5
    iput-boolean p1, p0, Lui/Bar;->k:Z

    .line 6
    iput-object p2, p0, Lui/Bar;->a:Ljava/lang/String;

    .line 7
    iput p3, p0, Lui/Bar;->g:I

    .line 8
    iput p4, p0, Lui/Bar;->f:I

    return-void
.end method


# virtual methods
.method public getNodeWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNodeheight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public h(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lui/Bar;->b:I

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 4
    iget p1, p0, Lui/Bar;->g:I

    iput p1, p0, Lui/Bar;->b:I

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lui/Bar;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lui/Bar;->b:I

    .line 6
    :goto_0
    iget-object p1, p0, Lui/Bar;->l:Lui/Bar$a;

    if-eqz p1, :cond_2

    .line 7
    iget v0, p0, Lui/Bar;->b:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lui/Bar$a;->a(IZ)V

    :cond_2
    return-void
.end method

.method public i(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 2
    iget p1, p0, Lui/Bar;->g:I

    iput p1, p0, Lui/Bar;->b:I

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lui/Bar;->b:I

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lui/Bar;->g:I

    int-to-float v2, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    sub-float/2addr v2, v1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Lui/Bar;->b:I

    .line 5
    :goto_0
    iget-object p1, p0, Lui/Bar;->l:Lui/Bar$a;

    if-eqz p1, :cond_2

    .line 6
    iget v0, p0, Lui/Bar;->b:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lui/Bar$a;->a(IZ)V

    :cond_2
    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lui/Bar;->f:I

    sget v1, Lui/Bar;->m:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lui/Bar;->f:I

    sget v3, Lui/Bar;->m:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v2

    .line 7
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8
    iget-object v3, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    shr-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v4, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v3, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    iget v3, p0, Lui/Bar;->h:I

    mul-int/2addr v3, v0

    iget v4, p0, Lui/Bar;->g:I

    div-int/2addr v3, v4

    .line 11
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {v4, v5, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 13
    iget-object v4, p0, Lui/Bar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    shr-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    shr-int/lit8 v1, v7, 0x1

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    iget-object v0, p0, Lui/Bar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 16
    iget-object v0, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr v2, v0

    add-int/2addr v3, v2

    int-to-float v0, v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 20
    iget-object v0, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object v0, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 24
    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v2

    .line 26
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    iget-object v3, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 28
    iget-object v3, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    iget v3, p0, Lui/Bar;->g:I

    iget v4, p0, Lui/Bar;->h:I

    sub-int v4, v3, v4

    mul-int/2addr v4, v1

    div-int/2addr v4, v3

    .line 30
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {v3, v5, v4, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 32
    iget-object v3, p0, Lui/Bar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    shr-int/lit8 v0, v6, 0x1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    iget-object v0, p0, Lui/Bar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 35
    iget-object v0, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr v2, v0

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    iget-object v0, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v3

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    iget-object v0, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    :cond_2
    :goto_0
    iget p1, p0, Lui/Bar;->h:I

    iget v0, p0, Lui/Bar;->i:I

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_7

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v3

    .line 44
    iget-wide v5, p0, Lui/Bar;->j:J

    cmp-long p1, v5, v1

    const-wide/16 v0, 0x21

    if-nez p1, :cond_3

    sub-long v5, v3, v0

    .line 45
    iput-wide v5, p0, Lui/Bar;->j:J

    .line 46
    :cond_3
    iget-wide v5, p0, Lui/Bar;->j:J

    sub-long v7, v3, v5

    cmp-long p1, v7, v0

    if-gez p1, :cond_4

    return-void

    :cond_4
    sub-long v5, v3, v5

    .line 47
    iget p1, p0, Lui/Bar;->g:I

    int-to-long v7, p1

    mul-long/2addr v5, v7

    long-to-float p1, v5

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr p1, v2

    .line 48
    iput-wide v3, p0, Lui/Bar;->j:J

    .line 49
    iget v2, p0, Lui/Bar;->h:I

    iget v3, p0, Lui/Bar;->i:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_5

    .line 50
    iget p1, p0, Lui/Bar;->i:I

    iput p1, p0, Lui/Bar;->h:I

    goto :goto_1

    .line 51
    :cond_5
    iget v2, p0, Lui/Bar;->h:I

    iget v3, p0, Lui/Bar;->i:I

    if-le v2, v3, :cond_6

    int-to-float v2, v2

    sub-float/2addr v2, p1

    float-to-int p1, v2

    .line 52
    iput p1, p0, Lui/Bar;->h:I

    goto :goto_1

    :cond_6
    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 53
    iput p1, p0, Lui/Bar;->h:I

    .line 54
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_2

    .line 55
    :cond_7
    iput-wide v1, p0, Lui/Bar;->j:J

    :goto_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4
    iget-object v1, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 7
    invoke-virtual {p0}, Lui/Bar;->j()Z

    move-result v4

    const/high16 v5, -0x80000000

    if-eqz v4, :cond_2

    if-ne v2, v5, :cond_0

    .line 8
    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    :goto_0
    if-ne v3, v5, :cond_1

    .line 10
    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    goto :goto_2

    :cond_2
    if-ne v3, v5, :cond_3

    .line 12
    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    :goto_1
    if-ne v2, v5, :cond_4

    .line 14
    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result p1

    add-int p2, v0, p1

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p2, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 16
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "222  onMeasure ==========>> height : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " width: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VOL"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0, v1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lui/Bar;->l:Lui/Bar$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lui/Bar$a;->b()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 5
    invoke-virtual {p0}, Lui/Bar;->j()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v0

    shr-int/2addr v0, v8

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v8, :cond_2

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_2

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v1}, Lui/Bar;->h(F)V

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-boolean p1, p0, Lui/Bar;->k:Z

    if-nez p1, :cond_a

    .line 10
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v2, p0, Lui/Bar;->h:I

    mul-int/2addr p1, v2

    iget v2, p0, Lui/Bar;->g:I

    div-int/2addr p1, v2

    add-int/2addr p1, v0

    int-to-float p1, p1

    sub-float p1, v1, p1

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lui/Bar;->getNodeWidth()I

    move-result v0

    shr-int/2addr v0, v8

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    .line 13
    iput-boolean v8, p0, Lui/Bar;->k:Z

    .line 14
    invoke-virtual {p0, v1}, Lui/Bar;->h(F)V

    goto :goto_0

    .line 15
    :cond_4
    iput-boolean v5, p0, Lui/Bar;->k:Z

    .line 16
    invoke-virtual {p0, v1}, Lui/Bar;->h(F)V

    .line 17
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v8, :cond_7

    if-eq p1, v7, :cond_6

    if-eq p1, v6, :cond_7

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0, v0}, Lui/Bar;->i(F)V

    goto :goto_0

    .line 20
    :cond_7
    iget-boolean p1, p0, Lui/Bar;->k:Z

    if-nez p1, :cond_a

    .line 21
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 22
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v1, p0, Lui/Bar;->g:I

    iget v2, p0, Lui/Bar;->h:I

    sub-int v2, v1, v2

    mul-int/2addr p1, v2

    div-int/2addr p1, v1

    int-to-float p1, p1

    sub-float p1, v0, p1

    .line 23
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lui/Bar;->getNodeheight()I

    move-result v1

    shr-int/2addr v1, v8

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_9

    .line 24
    iput-boolean v8, p0, Lui/Bar;->k:Z

    .line 25
    invoke-virtual {p0, v0}, Lui/Bar;->i(F)V

    goto :goto_0

    .line 26
    :cond_9
    iput-boolean v5, p0, Lui/Bar;->k:Z

    .line 27
    invoke-virtual {p0, v0}, Lui/Bar;->i(F)V

    .line 28
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :cond_a
    :goto_0
    return v8
.end method

.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lui/Bar;->k:Z

    if-nez v0, :cond_1

    iget v0, p0, Lui/Bar;->h:I

    iget v1, p0, Lui/Bar;->b:I

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lui/Bar;->l:Lui/Bar$a;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lui/Bar$a;->d()V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lui/Bar;->l:Lui/Bar$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lui/Bar$a;->c()V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x23

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setNodeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setNodeDrawable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lui/Bar;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setNormalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setNormalDrawable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lui/Bar;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnProgressListener(Lui/Bar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/Bar;->l:Lui/Bar$a;

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setProgressDrawable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lui/Bar;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTarget(I)V
    .locals 1

    .line 1
    iput p1, p0, Lui/Bar;->i:I

    .line 2
    iget v0, p0, Lui/Bar;->h:I

    if-eq v0, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
