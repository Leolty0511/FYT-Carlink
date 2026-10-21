.class public Lui/c$e;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:F

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/Rect;

.field public e:J

.field public final synthetic f:Lui/c;


# direct methods
.method public constructor <init>(Lui/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c$e;->f:Lui/c;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lui/c$e;->d:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0}, Lui/c$e;->init()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3
    iget-object v0, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 5
    iget-object v0, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "ui/guesture/bar_p.png"

    .line 6
    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/c$e;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/16 v2, 0xae

    const/4 v3, 0x4

    .line 7
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    sget v0, Ly0/f;->c:I

    int-to-float v0, v0

    .line 2
    sget v1, Ly0/f;->g:I

    int-to-float v1, v1

    .line 3
    iget-object v2, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v2}, Lui/c;->j(Lui/c;)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "LG"

    const/4 v9, 0x0

    if-nez v2, :cond_8

    .line 4
    sget v2, Ly0/f;->i:I

    const/4 v10, 0x0

    if-nez v2, :cond_0

    cmpl-float v2, v0, v10

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v2}, Lui/c;->o(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "onDraw DataSound"

    .line 6
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v2, p0, Lui/c$e;->f:Lui/c;

    const-string v8, "ui/guesture/volume.png"

    invoke-static {v8}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    invoke-static {v2, v8}, Lui/c;->p(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object v2, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v2}, Lui/c;->y(Lui/c;)Landroid/view/View;

    move-result-object v2

    iget-object v8, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v8}, Lui/c;->o(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v2, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v2, v7}, Lui/c;->r(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v0}, Lui/c;->q(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "setBackground"

    .line 11
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lui/c$e;->f:Lui/c;

    const-string v2, "ui/guesture/mute.png"

    invoke-static {v2}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Lui/c;->r(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object v0, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v0}, Lui/c;->y(Lui/c;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v2}, Lui/c;->q(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v0, v7}, Lui/c;->p(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_1
    move v0, v10

    :cond_2
    :goto_0
    cmpl-float v2, v0, v10

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    const/high16 v7, -0x10000

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v2, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v7, v0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v7, 0x43350000    # 181.0f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    shr-int/lit8 v4, v8, 0x1

    add-int/lit8 v4, v4, 0xd

    int-to-float v4, v4

    iget-object v8, p0, Lui/c$e;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v4, 0x433a0000    # 186.0f

    .line 19
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x432e0000    # 174.0f

    .line 20
    iget v4, p0, Lui/c$e;->b:F

    mul-float/2addr v4, v2

    div-float/2addr v4, v1

    float-to-int v2, v4

    .line 21
    iget-object v4, p0, Lui/c$e;->d:Landroid/graphics/Rect;

    invoke-virtual {v4, v9, v9, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    iget-object v2, p0, Lui/c$e;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 23
    iget-object v2, p0, Lui/c$e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 25
    iget p1, p0, Lui/c$e;->b:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    .line 27
    iget-wide v7, p0, Lui/c$e;->e:J

    cmp-long p1, v7, v5

    if-nez p1, :cond_4

    const-wide/16 v4, 0x21

    sub-long v4, v2, v4

    .line 28
    iput-wide v4, p0, Lui/c$e;->e:J

    .line 29
    :cond_4
    iget-wide v4, p0, Lui/c$e;->e:J

    sub-long v4, v2, v4

    long-to-float p1, v4

    mul-float/2addr p1, v1

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr p1, v1

    .line 30
    iput-wide v2, p0, Lui/c$e;->e:J

    .line 31
    iget v1, p0, Lui/c$e;->b:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_5

    .line 32
    iput v0, p0, Lui/c$e;->b:F

    goto :goto_2

    .line 33
    :cond_5
    iget v1, p0, Lui/c$e;->b:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6

    sub-float/2addr v1, p1

    .line 34
    iput v1, p0, Lui/c$e;->b:F

    goto :goto_2

    :cond_6
    add-float/2addr v1, p1

    .line 35
    iput v1, p0, Lui/c$e;->b:F

    .line 36
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    .line 37
    :cond_7
    iput-wide v5, p0, Lui/c$e;->e:J

    goto/16 :goto_4

    .line 38
    :cond_8
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->j(Lui/c;)I

    move-result p1

    const/16 v0, 0xd6

    const/16 v1, 0xd8

    if-ne p1, v4, :cond_9

    .line 39
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->m(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p1, "onDraw mDown"

    .line 40
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    const-string v2, "ui/guesture/down.png"

    invoke-static {v2}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {p1, v2}, Lui/c;->n(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->m(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v9, v9, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->y(Lui/c;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v0}, Lui/c;->m(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1, v7}, Lui/c;->t(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 45
    :cond_9
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->j(Lui/c;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_a

    .line 46
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->s(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p1, "onDraw  mNext"

    .line 47
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    const-string v2, "ui/guesture/next.png"

    invoke-static {v2}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {p1, v2}, Lui/c;->t(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 49
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->s(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v9, v9, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->y(Lui/c;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v0}, Lui/c;->s(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1, v7}, Lui/c;->n(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 52
    :cond_a
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->j(Lui/c;)I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_b

    .line 53
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->u(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p1, "onDraw  mUp"

    .line 54
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    const-string v2, "ui/guesture/up.png"

    invoke-static {v2}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {p1, v2}, Lui/c;->v(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->u(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v9, v9, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->y(Lui/c;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v0}, Lui/c;->u(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1, v7}, Lui/c;->x(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 59
    :cond_b
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->j(Lui/c;)I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 60
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->w(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p1, "onDraw  mPrev"

    .line 61
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    const-string v2, "ui/guesture/prev.png"

    invoke-static {v2}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {p1, v2}, Lui/c;->x(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->w(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v9, v9, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1}, Lui/c;->y(Lui/c;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lui/c$e;->f:Lui/c;

    invoke-static {v0}, Lui/c;->w(Lui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object p1, p0, Lui/c$e;->f:Lui/c;

    invoke-static {p1, v7}, Lui/c;->v(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 66
    :cond_c
    :goto_3
    iput-wide v5, p0, Lui/c$e;->e:J

    :goto_4
    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
