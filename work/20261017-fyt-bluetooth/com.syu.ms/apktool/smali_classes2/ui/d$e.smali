.class public Lui/d$e;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:F

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/Rect;

.field public g:Z

.field public h:I

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:J

.field public final synthetic l:Lui/d;


# direct methods
.method public constructor <init>(Lui/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/d$e;->l:Lui/d;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lui/d$e;->f:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0}, Lui/d$e;->init()V

    return-void
.end method


# virtual methods
.method public final h(F)V
    .locals 2

    const/high16 v0, 0x427c0000    # 63.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lui/d$e;->h:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43c40000    # 392.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 2
    sget p1, Ly0/f;->g:I

    iput p1, p0, Lui/d$e;->h:I

    goto :goto_0

    .line 3
    :cond_1
    sget v1, Ly0/f;->g:I

    int-to-float v1, v1

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    const p1, 0x43a48000    # 329.0f

    div-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lui/d$e;->h:I

    .line 4
    :goto_0
    iget-boolean p1, p0, Lui/d$e;->g:Z

    if-eqz p1, :cond_2

    sget p1, Ly0/f;->c:I

    iget v0, p0, Lui/d$e;->h:I

    if-eq p1, v0, :cond_2

    .line 5
    invoke-static {v0}, Ly0/h;->u0(I)V

    :cond_2
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3
    iget-object v0, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 5
    iget-object v0, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "ui/vol/cnc/bar.png"

    .line 6
    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/d$e;->c:Landroid/graphics/drawable/Drawable;

    const-string v0, "ui/vol/cnc/bar_p.png"

    .line 7
    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/d$e;->d:Landroid/graphics/drawable/Drawable;

    const-string v0, "ui/vol/cnc/node.png"

    .line 8
    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/d$e;->e:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object v0, p0, Lui/d$e;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/16 v2, 0x149

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v0, p0, Lui/d$e;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v0, p0, Lui/d$e;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    sget v0, Ly0/f;->c:I

    int-to-float v0, v0

    .line 2
    sget v1, Ly0/f;->g:I

    int-to-float v1, v1

    .line 3
    sget v2, Ly0/f;->i:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lui/d$e;->i:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const-string v2, "ui/vol/cnc/unmute.png"

    const-string v4, "ui/vol/cnc/unmute_p.png"

    .line 5
    invoke-static {v2, v4}, Lo1/r0;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    iput-object v2, p0, Lui/d$e;->i:Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_0
    iget-object v2, p0, Lui/d$e;->l:Lui/d;

    invoke-static {v2}, Lui/d;->m(Lui/d;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lui/d$e;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lui/d$e;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    const-string v0, "ui/vol/cnc/mute.png"

    const-string v2, "ui/vol/cnc/mute_p.png"

    .line 8
    invoke-static {v0, v2}, Lo1/r0;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/d$e;->j:Landroid/graphics/drawable/Drawable;

    .line 9
    :cond_2
    iget-object v0, p0, Lui/d$e;->l:Lui/d;

    invoke-static {v0}, Lui/d;->m(Lui/d;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lui/d$e;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move v0, v3

    :goto_0
    cmpl-float v2, v0, v3

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v2, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x43d28000    # 421.0f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    iget-object v5, p0, Lui/d$e;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x427c0000    # 63.0f

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    iget-object v2, p0, Lui/d$e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v2, 0x43a48000    # 329.0f

    .line 16
    iget v3, p0, Lui/d$e;->b:F

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    float-to-int v2, v3

    .line 17
    iget-object v3, p0, Lui/d$e;->f:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    iget-object v2, p0, Lui/d$e;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 19
    iget-object v2, p0, Lui/d$e;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v2, 0x439e8000    # 317.0f

    .line 22
    iget v3, p0, Lui/d$e;->b:F

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    float-to-int v2, v3

    add-int/lit8 v2, v2, 0x3b

    int-to-float v2, v2

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    iget-object v2, p0, Lui/d$e;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 26
    iget p1, p0, Lui/d$e;->b:F

    cmpl-float p1, p1, v0

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_7

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v4

    .line 28
    iget-wide v6, p0, Lui/d$e;->k:J

    cmp-long p1, v6, v2

    if-nez p1, :cond_4

    const-wide/16 v2, 0x21

    sub-long v2, v4, v2

    .line 29
    iput-wide v2, p0, Lui/d$e;->k:J

    .line 30
    :cond_4
    iget-wide v2, p0, Lui/d$e;->k:J

    sub-long v2, v4, v2

    long-to-float p1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr p1, v1

    .line 31
    iput-wide v4, p0, Lui/d$e;->k:J

    .line 32
    iget v1, p0, Lui/d$e;->b:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_5

    .line 33
    iput v0, p0, Lui/d$e;->b:F

    goto :goto_2

    .line 34
    :cond_5
    iget v1, p0, Lui/d$e;->b:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6

    sub-float/2addr v1, p1

    .line 35
    iput v1, p0, Lui/d$e;->b:F

    goto :goto_2

    :cond_6
    add-float/2addr v1, p1

    .line 36
    iput v1, p0, Lui/d$e;->b:F

    .line 37
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 38
    :cond_7
    iput-wide v2, p0, Lui/d$e;->k:J

    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lui/d$e;->l:Lui/d;

    invoke-static {v0}, Lui/d;->j(Lui/d;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 3
    sget v1, Ly0/f;->g:I

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lui/d$e;->h(F)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean p1, p0, Lui/d$e;->g:Z

    if-nez p1, :cond_4

    .line 7
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/high16 p1, 0x427c0000    # 63.0f

    const v3, 0x43a48000    # 329.0f

    .line 8
    iget v4, p0, Lui/d$e;->b:F

    mul-float/2addr v4, v3

    int-to-float v1, v1

    div-float/2addr v4, v1

    add-float/2addr v4, p1

    float-to-int p1, v4

    int-to-float p1, p1

    sub-float p1, v0, p1

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    .line 10
    iput-boolean v2, p0, Lui/d$e;->g:Z

    .line 11
    invoke-virtual {p0, v0}, Lui/d$e;->h(F)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lui/d$e;->g:Z

    .line 13
    invoke-virtual {p0, v0}, Lui/d$e;->h(F)V

    .line 14
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :cond_4
    :goto_0
    return v2
.end method

.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lui/d$e;->g:Z

    if-nez v0, :cond_1

    sget v0, Ly0/f;->c:I

    iget v1, p0, Lui/d$e;->h:I

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 3
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x23

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
