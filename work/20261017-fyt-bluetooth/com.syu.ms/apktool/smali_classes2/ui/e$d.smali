.class public Lui/e$d;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lui/e;


# direct methods
.method public constructor <init>(Lui/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/e$d;->a:Lui/e;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0, p2}, Lui/e$d;->h(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const v0, 0x200ff00

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public final h(Landroid/content/Context;)V
    .locals 4

    const-string v0, "ui/vol/hog_htop/bk.png"

    .line 1
    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lui/e$d;->a:Lui/e;

    new-instance v1, Lui/e$e;

    invoke-direct {v1, v0, p1}, Lui/e$e;-><init>(Lui/e;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lui/e;->l(Lui/e;Landroid/view/View;)Landroid/view/View;

    .line 3
    iget-object v0, p0, Lui/e$d;->a:Lui/e;

    invoke-static {v0}, Lui/e;->k(Lui/e;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1f3

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 4
    iget-object v0, p0, Lui/e$d;->a:Lui/e;

    invoke-static {v0}, Lui/e;->k(Lui/e;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lui/e$d;->a:Lui/e;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lui/e;->n(Lui/e;Landroid/view/View;)Landroid/view/View;

    .line 6
    iget-object p1, p0, Lui/e$d;->a:Lui/e;

    invoke-static {p1}, Lui/e;->m(Lui/e;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lui/e$d$a;

    invoke-direct {v0, p0}, Lui/e$d$a;-><init>(Lui/e$d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lui/e$d;->a:Lui/e;

    invoke-static {p1}, Lui/e;->m(Lui/e;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x12

    const/16 v2, 0x4f

    const/16 v3, 0x52

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 8
    iget-object p1, p0, Lui/e$d;->a:Lui/e;

    invoke-static {p1}, Lui/e;->m(Lui/e;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/16 p1, 0x1f3

    const/16 p2, 0x64

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
