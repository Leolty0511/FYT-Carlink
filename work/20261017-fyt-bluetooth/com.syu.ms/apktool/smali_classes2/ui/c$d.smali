.class public Lui/c$d;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lui/c;


# direct methods
.method public constructor <init>(Lui/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c$d;->a:Lui/c;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0, p2}, Lui/c$d;->h(Landroid/content/Context;)V

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
    .locals 5

    .line 1
    iget-object v0, p0, Lui/c$d;->a:Lui/c;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lui/c;->z(Lui/c;Landroid/view/View;)Landroid/view/View;

    .line 2
    iget-object v0, p0, Lui/c$d;->a:Lui/c;

    invoke-static {v0}, Lui/c;->y(Lui/c;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xd8

    const/16 v3, 0xd6

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 3
    iget-object v0, p0, Lui/c$d;->a:Lui/c;

    invoke-static {v0}, Lui/c;->y(Lui/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lui/c$d;->a:Lui/c;

    new-instance v4, Lui/c$e;

    invoke-direct {v4, v0, p1}, Lui/c$e;-><init>(Lui/c;Landroid/content/Context;)V

    invoke-static {v0, v4}, Lui/c;->l(Lui/c;Landroid/view/View;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Lui/c$d;->a:Lui/c;

    invoke-static {p1}, Lui/c;->k(Lui/c;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 6
    iget-object p1, p0, Lui/c$d;->a:Lui/c;

    invoke-static {p1}, Lui/c;->k(Lui/c;)Landroid/view/View;

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

    const/16 p1, 0xd8

    const/16 p2, 0xd6

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
