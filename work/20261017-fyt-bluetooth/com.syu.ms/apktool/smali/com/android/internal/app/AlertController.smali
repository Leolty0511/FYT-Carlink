.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$b;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$c;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/view/View;

.field public C:Z

.field public D:Landroid/widget/ListAdapter;

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:Landroid/os/Handler;

.field public L:Landroid/view/View$OnClickListener;

.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/DialogInterface;

.field public final c:Landroid/view/Window;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/widget/ListView;

.field public g:Landroid/view/View;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:Landroid/widget/Button;

.field public n:Ljava/lang/CharSequence;

.field public o:Landroid/os/Message;

.field public p:Landroid/widget/Button;

.field public q:Ljava/lang/CharSequence;

.field public r:Landroid/os/Message;

.field public s:Landroid/widget/Button;

.field public t:Ljava/lang/CharSequence;

.field public u:Landroid/os/Message;

.field public v:Landroid/widget/ScrollView;

.field public w:I

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/widget/ImageView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->l:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/android/internal/app/AlertController;->w:I

    .line 4
    iput v1, p0, Lcom/android/internal/app/AlertController;->E:I

    .line 5
    new-instance v1, Lcom/android/internal/app/AlertController$a;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$a;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->L:Landroid/view/View$OnClickListener;

    .line 6
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->b:Landroid/content/DialogInterface;

    .line 8
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    .line 9
    new-instance p3, Lcom/android/internal/app/AlertController$c;

    invoke-direct {p3, p2}, Lcom/android/internal/app/AlertController$c;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/android/internal/app/AlertController;->K:Landroid/os/Handler;

    .line 10
    sget-object p2, Li/a;->AlertDialog:[I

    const/4 p3, 0x0

    const v1, 0x101005d

    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xa

    const p3, 0x1090024

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/AlertController;->F:I

    const/16 p2, 0xb

    const p3, 0x1090099

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/AlertController;->G:I

    const/16 p2, 0xc

    const p3, 0x1090013

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/AlertController;->H:I

    const/16 p2, 0xd

    const p3, 0x1090012

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/AlertController;->I:I

    const/16 p2, 0xe

    const p3, 0x1090011

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/AlertController;->J:I

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static L(Landroid/content/Context;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x10103fc

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static synthetic a(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/AlertController;->m:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/AlertController;->o:Landroid/os/Message;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/internal/app/AlertController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/app/AlertController;->I:I

    return p0
.end method

.method public static synthetic d(Lcom/android/internal/app/AlertController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/app/AlertController;->J:I

    return p0
.end method

.method public static synthetic e(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->D:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method public static synthetic f(Lcom/android/internal/app/AlertController;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/app/AlertController;->E:I

    return p1
.end method

.method public static synthetic g(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method public static synthetic h(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/AlertController;->p:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic i(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/AlertController;->r:Landroid/os/Message;

    return-object p0
.end method

.method public static synthetic j(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/AlertController;->s:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic k(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/AlertController;->u:Landroid/os/Message;

    return-object p0
.end method

.method public static synthetic l(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/AlertController;->b:Landroid/content/DialogInterface;

    return-object p0
.end method

.method public static synthetic m(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/AlertController;->K:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic n(Lcom/android/internal/app/AlertController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/app/AlertController;->G:I

    return p0
.end method

.method public static synthetic o(Lcom/android/internal/app/AlertController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/app/AlertController;->H:I

    return p0
.end method

.method public static p(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/android/internal/app/AlertController;->p(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/internal/app/AlertController;->w:I

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public B(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->C:Z

    return-void
.end method

.method public D(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public F(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->g:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->l:Z

    return-void
.end method

.method public G(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->g:Landroid/view/View;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->l:Z

    .line 3
    iput p2, p0, Lcom/android/internal/app/AlertController;->h:I

    .line 4
    iput p3, p0, Lcom/android/internal/app/AlertController;->i:I

    .line 5
    iput p4, p0, Lcom/android/internal/app/AlertController;->j:I

    .line 6
    iput p5, p0, Lcom/android/internal/app/AlertController;->k:I

    return-void
.end method

.method public final H()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->m:Landroid/widget/Button;

    .line 2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->n:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->m:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->n:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v5, 0x102001a

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->p:Landroid/widget/Button;

    .line 8
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->q:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->p:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->p:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->q:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->p:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    .line 13
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v5, 0x102001b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->s:Landroid/widget/Button;

    .line 14
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->s:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 19
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->L(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v0, v2, :cond_3

    .line 20
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->m:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertController;->q(Landroid/widget/Button;)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 21
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->p:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertController;->q(Landroid/widget/Button;)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 22
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertController;->q(Landroid/widget/Button;)V

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    return v2
.end method

.method public final I(Landroid/widget/LinearLayout;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x1020286

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->v:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->A:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->e:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->v:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final J(Landroid/widget/LinearLayout;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->B:Landroid/view/View;

    const v1, 0x102027f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->B:Landroid/view/View;

    invoke-virtual {p1, v5, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 7
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 8
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v0, 0x1020280

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->z:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget p1, p0, Lcom/android/internal/app/AlertController;->w:I

    if-lez p1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 15
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    move v2, v3

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return v2
.end method

.method public final K()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x1020285

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertController;->I(Landroid/widget/LinearLayout;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->H()Z

    move-result v5

    .line 4
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x102027e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->a:Landroid/content/Context;

    sget-object v1, Li/a;->AlertDialog:[I

    const/4 v4, 0x0

    const v6, 0x101005d

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertController;->J(Landroid/widget/LinearLayout;)Z

    move-result v8

    .line 7
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x1020282

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v1, 0x8

    if-nez v5, :cond_0

    .line 8
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 10
    :cond_0
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->g:Landroid/view/View;

    const v10, 0x1020287

    if-eqz v6, :cond_3

    .line 11
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v1, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 12
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x102002b

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 13
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->g:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-boolean v6, p0, Lcom/android/internal/app/AlertController;->l:Z

    if-eqz v6, :cond_1

    .line 15
    iget v6, p0, Lcom/android/internal/app/AlertController;->h:I

    iget v10, p0, Lcom/android/internal/app/AlertController;->i:I

    iget v11, p0, Lcom/android/internal/app/AlertController;->j:I

    iget v12, p0, Lcom/android/internal/app/AlertController;->k:I

    invoke-virtual {v4, v6, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    move-object v4, v1

    goto :goto_0

    .line 18
    :cond_3
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v6, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz v8, :cond_6

    .line 19
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->e:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->g:Landroid/view/View;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x1020288

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 21
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x1020281

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    move-object v1, p0

    move-object v6, v0

    move v7, v8

    move-object v8, v9

    .line 23
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/AlertController;->x(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final q(Landroid/widget/Button;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v0, 0x1020283

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x1020284

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public r(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->m:Landroid/widget/Button;

    return-object p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->p:Landroid/widget/Button;

    return-object p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->s:Landroid/widget/Button;

    return-object p1
.end method

.method public s(I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public t()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->p(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->c:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->F:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->K()V

    return-void
.end method

.method public v(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->v:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/AlertController;->v:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final x(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const/4 v2, 0x0

    const v3, 0x10804b6

    .line 1
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x1

    const v5, 0x10804c4

    .line 2
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x2

    const v7, 0x10804b3

    .line 3
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x3

    const v8, 0x10804b0

    .line 4
    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x4

    const v9, 0x10804b5

    .line 5
    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x5

    const v11, 0x10804c3

    .line 6
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/4 v11, 0x6

    const v12, 0x10804b2

    .line 7
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    const/4 v12, 0x7

    const v13, 0x10804af

    .line 8
    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/16 v13, 0x8

    const v14, 0x10804b1

    .line 9
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    new-array v14, v8, [Landroid/view/View;

    new-array v15, v8, [Z

    if-eqz p6, :cond_0

    aput-object p1, v14, v2

    aput-boolean v2, v15, v2

    move/from16 v16, v4

    goto :goto_0

    :cond_0
    move/from16 v16, v2

    .line 10
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v18, 0x0

    if-ne v2, v13, :cond_1

    move-object/from16 v2, v18

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    aput-object v2, v14, v16

    .line 11
    iget-object v2, v0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    aput-boolean v2, v15, v16

    add-int/lit8 v16, v16, 0x1

    if-eqz p3, :cond_3

    .line 12
    aput-object p3, v14, v16

    .line 13
    iget-boolean v2, v0, Lcom/android/internal/app/AlertController;->C:Z

    aput-boolean v2, v15, v16

    add-int/lit8 v16, v16, 0x1

    :cond_3
    if-eqz p4, :cond_4

    .line 14
    aput-object p7, v14, v16

    .line 15
    aput-boolean v4, v15, v16

    :cond_4
    move-object/from16 v4, v18

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v2, v8, :cond_a

    .line 16
    aget-object v18, v14, v2

    if-nez v18, :cond_5

    goto :goto_7

    :cond_5
    if-eqz v4, :cond_9

    if-nez v17, :cond_7

    if-eqz v13, :cond_6

    move v13, v10

    goto :goto_4

    :cond_6
    move v13, v5

    .line 17
    :goto_4
    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    move v13, v11

    goto :goto_5

    :cond_8
    move v13, v6

    .line 18
    :goto_5
    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    const/16 v17, 0x1

    .line 19
    :cond_9
    aget-boolean v4, v15, v2

    move v13, v4

    move-object/from16 v4, v18

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_f

    if-eqz v17, :cond_d

    if-eqz v13, :cond_c

    if-eqz p4, :cond_b

    move v7, v1

    goto :goto_8

    :cond_b
    move v7, v12

    .line 20
    :cond_c
    :goto_8
    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    :cond_d
    if-eqz v13, :cond_e

    move v3, v9

    .line 21
    :cond_e
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    :cond_f
    :goto_9
    iget-object v1, v0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_10

    iget-object v2, v0, Lcom/android/internal/app/AlertController;->D:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_10

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    iget v1, v0, Lcom/android/internal/app/AlertController;->E:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    .line 25
    iget-object v2, v0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 26
    iget-object v1, v0, Lcom/android/internal/app/AlertController;->f:Landroid/widget/ListView;

    iget v2, v0, Lcom/android/internal/app/AlertController;->E:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_10
    return-void
.end method

.method public y(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-object p4, p0, Lcom/android/internal/app/AlertController;->K:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->n:Ljava/lang/CharSequence;

    .line 3
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->o:Landroid/os/Message;

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->q:Ljava/lang/CharSequence;

    .line 6
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->r:Landroid/os/Message;

    goto :goto_0

    .line 7
    :cond_3
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->t:Ljava/lang/CharSequence;

    .line 8
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->u:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public z(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->B:Landroid/view/View;

    return-void
.end method
