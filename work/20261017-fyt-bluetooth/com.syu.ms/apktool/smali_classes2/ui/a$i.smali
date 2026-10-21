.class public Lui/a$i;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lui/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lui/Bar;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public final synthetic i:Lui/a;


# direct methods
.method public constructor <init>(Lui/a;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$i;->i:Lui/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lui/a$i;->h:Z

    .line 4
    iput-boolean p5, p0, Lui/a$i;->h:Z

    .line 5
    invoke-virtual {p0, p3, p4}, Lui/a$i;->h(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p1, v0

    .line 1
    :cond_0
    sget p2, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 2
    :cond_1
    iget-object p2, p0, Lui/a$i;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_7

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lui/a$i;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 4
    iget-object v1, p0, Lui/a$i;->g:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    .line 5
    iget-object v0, p0, Lui/a$i;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lui/a$i;->d:Landroid/graphics/drawable/Drawable;

    :cond_6
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_7
    :goto_1
    iget-object p2, p0, Lui/a$i;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lui/a$i;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lui/a$i;->i:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-boolean v0, v0, Lui/a$d;->g:Z

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    const/high16 v0, -0x10000

    goto :goto_2

    :cond_8
    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_9
    iget-object p2, p0, Lui/a$i;->b:Lui/Bar;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Lui/Bar;->setTarget(I)V

    :cond_a
    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    iget-object v0, p0, Lui/a$i;->i:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->o:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui/a$i;->i:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lui/a$i;->i:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui/a$i;->i:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v2, v2, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lui/a$i;->i:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v3, v2, Lui/a$d;->p:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, v2, Lui/a$d;->o:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lo1/r0;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/a$i;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_1
    iget-object v0, p0, Lui/a$i;->i:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->s:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui/a$i;->i:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lui/a$i;->i:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui/a$i;->i:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v2, v2, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Lui/a$i;->i:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v3, v2, Lui/a$d;->t:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v2, Lui/a$d;->s:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lo1/r0;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/a$i;->f:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_3
    iget-object v0, p0, Lui/a$i;->i:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->q:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui/a$i;->i:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lui/a$i;->i:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui/a$i;->i:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v2, v2, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v2, p0, Lui/a$i;->i:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v3, v2, Lui/a$d;->r:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v2, Lui/a$d;->q:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lo1/r0;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/a$i;->e:Landroid/graphics/drawable/Drawable;

    .line 14
    :cond_5
    iget-object v0, p0, Lui/a$i;->i:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->u:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui/a$i;->i:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lui/a$i;->i:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget-object v1, v1, Lui/a$d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui/a$i;->i:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v2, v2, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lui/a$i;->i:Lui/a;

    iget-object v2, v2, Lui/a;->h:Lui/a$d;

    iget-object v3, v2, Lui/a$d;->v:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v2, Lui/a$d;->u:Ljava/lang/String;

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lo1/r0;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lui/a$i;->g:Landroid/graphics/drawable/Drawable;

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_8

    move v2, v0

    goto :goto_0

    :cond_8
    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-eqz v2, :cond_9

    move v0, v3

    .line 18
    :cond_9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 19
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lui/a$i;->a:Landroid/widget/TextView;

    .line 20
    iget-object v4, p0, Lui/a$i;->i:Lui/a;

    iget-object v4, v4, Lui/a;->h:Lui/a$d;

    iget v4, v4, Lui/a$d;->j:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21
    iget-object v0, p0, Lui/a$i;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    new-instance v0, Lui/Bar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lui/a$i;->i:Lui/a;

    iget-object v5, v5, Lui/a;->h:Lui/a$d;

    iget v5, v5, Lui/a$d;->e:I

    invoke-direct {v0, v4, p2, v5, p1}, Lui/Bar;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v0, p0, Lui/a$i;->b:Lui/Bar;

    .line 23
    iget-object p1, p0, Lui/a$i;->i:Lui/a;

    iget-object p1, p1, Lui/a;->h:Lui/a$d;

    iget-object p1, p1, Lui/a$d;->w:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 24
    iget-object p1, p0, Lui/a$i;->b:Lui/Bar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lui/a$i;->i:Lui/a;

    iget-object v4, v4, Lui/a;->h:Lui/a$d;

    iget-object v4, v4, Lui/a$d;->w:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lui/Bar;->setNormalDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_a
    iget-object p1, p0, Lui/a$i;->i:Lui/a;

    iget-object p1, p1, Lui/a;->h:Lui/a$d;

    iget-object p1, p1, Lui/a$d;->x:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 26
    iget-object p1, p0, Lui/a$i;->b:Lui/Bar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lui/a$i;->i:Lui/a;

    iget-object v4, v4, Lui/a;->h:Lui/a$d;

    iget-object v4, v4, Lui/a$d;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lui/Bar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_b
    iget-object p1, p0, Lui/a$i;->i:Lui/a;

    iget-object p1, p1, Lui/a;->h:Lui/a$d;

    iget-object p1, p1, Lui/a$d;->y:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 28
    iget-object p1, p0, Lui/a$i;->b:Lui/Bar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lui/a$i;->i:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget-object p2, p2, Lui/a$d;->y:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lui/Bar;->setNodeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_c
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lui/a$i;->c:Landroid/widget/ImageView;

    const/4 p2, -0x2

    if-eqz v2, :cond_e

    .line 30
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p1, p0, Lui/a$i;->b:Lui/Bar;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lui/a$i;->i:Lui/a;

    iget-object p1, p1, Lui/a;->h:Lui/a$d;

    iget-object p1, p1, Lui/a$d;->b:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 33
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, -0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v0, p0, Lui/a$i;->i:Lui/a;

    iget-object v0, v0, Lui/a;->h:Lui/a$d;

    iget-object v0, v0, Lui/a$d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    :cond_d
    iget-boolean p1, p0, Lui/a$i;->h:Z

    if-eqz p1, :cond_10

    .line 41
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43
    iget-object p2, p0, Lui/a$i;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 44
    :cond_e
    iget-boolean p1, p0, Lui/a$i;->h:Z

    if-eqz p1, :cond_f

    .line 45
    iget-object p1, p0, Lui/a$i;->a:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_f
    iget-object p1, p0, Lui/a$i;->b:Lui/Bar;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object p1, p0, Lui/a$i;->c:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :cond_10
    :goto_1
    iget-object p1, p0, Lui/a$i;->c:Landroid/widget/ImageView;

    iget-object p2, p0, Lui/a$i;->i:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget-object p2, p2, Lui/a$d;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lui/a$i;->b:Lui/Bar;

    iget-object p2, p0, Lui/a$i;->i:Lui/a;

    iget-object p2, p2, Lui/a;->h:Lui/a$d;

    iget-object p2, p2, Lui/a$d;->A:Lui/Bar$a;

    invoke-virtual {p1, p2}, Lui/Bar;->setOnProgressListener(Lui/Bar$a;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
