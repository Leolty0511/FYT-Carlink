.class public Lui/a$h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lui/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lui/Bar;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public final synthetic f:Lui/a;


# direct methods
.method public constructor <init>(Lui/a;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$h;->f:Lui/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0, p3, p4}, Lui/a$h;->j(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(IZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p1, v0

    .line 1
    :cond_0
    iget-object p2, p0, Lui/a$h;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    iget-object v1, p0, Lui/a$h;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lui/a$h;->e:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_2
    iget-object p2, p0, Lui/a$h;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lui/a$h;->f:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget-object v1, p2, Lui/a$d;->k:[I

    if-eqz v1, :cond_5

    array-length v2, v1

    if-gtz v2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    aget v0, v1, v0

    .line 6
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    .line 7
    iget-object v2, p0, Lui/a$h;->a:Landroid/widget/TextView;

    iget-boolean p2, p2, Lui/a$d;->g:Z

    if-nez p2, :cond_4

    if-nez p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 8
    :cond_5
    :goto_1
    iget-object v0, p0, Lui/a$h;->a:Landroid/widget/TextView;

    iget-boolean p2, p2, Lui/a$d;->g:Z

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    const/high16 p2, -0x10000

    goto :goto_2

    :cond_6
    const/4 p2, -0x1

    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_7
    :goto_3
    iget-object p2, p0, Lui/a$h;->b:Lui/Bar;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lui/Bar;->setTarget(I)V

    :cond_8
    return-void
.end method

.method public h(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 8

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lui/a$h;->i(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public i(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-ltz p4, :cond_0

    .line 2
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    if-ltz p5, :cond_1

    .line 3
    iput p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    if-ltz p6, :cond_2

    .line 4
    iput p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_2
    if-ltz p7, :cond_3

    .line 5
    iput p7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    return-object v0
.end method

.method public j(ILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lui/a$h;->f:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->o:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui/a$h;->f:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lui/a$h;->f:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui/a$h;->f:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v2, v2, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lui/a$h;->f:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v2, v2, Lui/a$d;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/r0;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/a$h;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Lui/a$h;->f:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->q:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui/a$h;->f:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lui/a$h;->f:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui/a$h;->f:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v2, v2, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lui/a$h;->f:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v2, v2, Lui/a$d;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/r0;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/a$h;->e:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 5
    :goto_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lui/a$h;->a:Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lui/a$h;->f:Lui/a;

    iget-object v3, v3, Lui/a;->h:Lui/a$d;

    iget v3, v3, Lui/a$d;->j:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-object v0, p0, Lui/a$h;->a:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    new-instance v0, Lui/Bar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lui/a$h;->f:Lui/a;

    iget-object v4, v4, Lui/a;->h:Lui/a$d;

    iget v4, v4, Lui/a$d;->e:I

    invoke-direct {v0, v3, p2, v4, p1}, Lui/Bar;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v0, p0, Lui/a$h;->b:Lui/Bar;

    .line 9
    iget-object p1, p0, Lui/a$h;->f:Lui/a;

    iget-object p1, p1, Lui/a;->h:Lui/a$d;

    iget-object p1, p1, Lui/a$d;->w:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lui/a$h;->b:Lui/Bar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lui/a$h;->f:Lui/a;

    iget-object v3, v3, Lui/a;->h:Lui/a$d;

    iget-object v3, v3, Lui/a$d;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lui/Bar;->setNormalDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lui/a$h;->f:Lui/a;

    iget-object p1, p1, Lui/a;->h:Lui/a$d;

    iget-object p1, p1, Lui/a$d;->x:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Lui/a$h;->b:Lui/Bar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lui/a$h;->f:Lui/a;

    iget-object v3, v3, Lui/a;->h:Lui/a$d;

    iget-object v3, v3, Lui/a$d;->x:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lui/Bar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lui/a$h;->f:Lui/a;

    iget-object p1, p1, Lui/a;->h:Lui/a$d;

    iget-object p1, p1, Lui/a$d;->y:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lui/a$h;->b:Lui/Bar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lui/a$h;->f:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget-object p2, p2, Lui/a$d;->y:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lui/Bar;->setNodeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_5
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lui/a$h;->c:Landroid/widget/ImageView;

    const/4 p1, -0x2

    if-eqz v1, :cond_8

    .line 16
    iget-object p2, p0, Lui/a$h;->b:Lui/Bar;

    invoke-virtual {p0, p1, p1, v2}, Lui/a$h;->h(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p2, p0, Lui/a$h;->c:Landroid/widget/ImageView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const v3, 0x800013

    iget-object v0, p0, Lui/a$h;->f:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->m:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lui/a$h;->i(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p2, p0, Lui/a$h;->f:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget v0, p2, Lui/a$d;->h:I

    if-gez v0, :cond_6

    move v2, p1

    goto :goto_1

    :cond_6
    move v2, v0

    .line 19
    :goto_1
    iget v0, p2, Lui/a$d;->i:I

    if-gez v0, :cond_7

    move v3, p1

    goto :goto_2

    :cond_7
    move v3, v0

    .line 20
    :goto_2
    iget-object p1, p0, Lui/a$h;->a:Landroid/widget/TextView;

    const v4, 0x800013

    iget-object p2, p2, Lui/a$d;->l:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lui/a$h;->i(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 21
    :cond_8
    iget-object p2, p0, Lui/a$h;->b:Lui/Bar;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p2, p0, Lui/a$h;->c:Landroid/widget/ImageView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x31

    iget-object v0, p0, Lui/a$h;->f:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->m:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lui/a$h;->i(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object p2, p0, Lui/a$h;->f:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget v0, p2, Lui/a$d;->h:I

    if-gez v0, :cond_9

    move v2, p1

    goto :goto_3

    :cond_9
    move v2, v0

    .line 24
    :goto_3
    iget v0, p2, Lui/a$d;->i:I

    if-gez v0, :cond_a

    move v3, p1

    goto :goto_4

    :cond_a
    move v3, v0

    .line 25
    :goto_4
    iget-object p1, p0, Lui/a$h;->a:Landroid/widget/TextView;

    const/16 v4, 0x30

    iget-object p2, p2, Lui/a$d;->l:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lui/a$h;->i(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :goto_5
    iget-object p1, p0, Lui/a$h;->c:Landroid/widget/ImageView;

    iget-object p2, p0, Lui/a$h;->f:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget-object p2, p2, Lui/a$d;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lui/a$h;->b:Lui/Bar;

    iget-object p2, p0, Lui/a$h;->f:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget-object p2, p2, Lui/a$d;->A:Lui/Bar$a;

    invoke-virtual {p1, p2}, Lui/Bar;->setOnProgressListener(Lui/Bar$a;)V

    return-void
.end method
