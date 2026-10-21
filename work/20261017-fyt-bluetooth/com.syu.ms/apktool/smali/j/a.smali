.class public Lj/a;
.super Landroid/app/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/a$e;,
        Lj/a$d;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Landroid/animation/Animator;

.field public E:Z

.field public final F:Landroid/animation/Animator$AnimatorListener;

.field public final G:Landroid/animation/Animator$AnimatorListener;

.field public final H:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroid/app/Activity;

.field public d:Landroid/app/Dialog;

.field public e:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field public f:Lcom/android/internal/widget/ActionBarContainer;

.field public g:Lcom/android/internal/widget/ActionBarView;

.field public h:Lcom/android/internal/widget/ActionBarContextView;

.field public i:Lcom/android/internal/widget/ActionBarContainer;

.field public j:Landroid/view/View;

.field public k:Lcom/android/internal/widget/g;

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lj/a$e;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lj/a$e;

.field public n:I

.field public o:Z

.field public p:Lj/a$d;

.field public q:Landroid/view/ActionMode;

.field public r:Landroid/view/ActionMode$Callback;

.field public s:Z

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field public u:I

.field public v:Z

.field public final w:Landroid/os/Handler;

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lj/a;->n:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/a;->t:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lj/a;->w:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lj/a;->x:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lj/a;->y:Z

    .line 8
    iput-boolean v0, p0, Lj/a;->C:Z

    .line 9
    new-instance v0, Lj/a$a;

    invoke-direct {v0, p0}, Lj/a$a;-><init>(Lj/a;)V

    iput-object v0, p0, Lj/a;->F:Landroid/animation/Animator$AnimatorListener;

    .line 10
    new-instance v0, Lj/a$b;

    invoke-direct {v0, p0}, Lj/a$b;-><init>(Lj/a;)V

    iput-object v0, p0, Lj/a;->G:Landroid/animation/Animator$AnimatorListener;

    .line 11
    new-instance v0, Lj/a$c;

    invoke-direct {v0, p0}, Lj/a$c;-><init>(Lj/a;)V

    iput-object v0, p0, Lj/a;->H:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 12
    iput-object p1, p0, Lj/a;->c:Landroid/app/Activity;

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lj/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    .line 16
    invoke-virtual {p0, p1}, Lj/a;->B(Landroid/view/View;)V

    if-nez v0, :cond_0

    const v0, 0x1020002

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lj/a;->j:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lj/a;->n:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/a;->t:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lj/a;->w:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lj/a;->x:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lj/a;->y:Z

    .line 25
    iput-boolean v0, p0, Lj/a;->C:Z

    .line 26
    new-instance v0, Lj/a$a;

    invoke-direct {v0, p0}, Lj/a$a;-><init>(Lj/a;)V

    iput-object v0, p0, Lj/a;->F:Landroid/animation/Animator$AnimatorListener;

    .line 27
    new-instance v0, Lj/a$b;

    invoke-direct {v0, p0}, Lj/a$b;-><init>(Lj/a;)V

    iput-object v0, p0, Lj/a;->G:Landroid/animation/Animator$AnimatorListener;

    .line 28
    new-instance v0, Lj/a$c;

    invoke-direct {v0, p0}, Lj/a$c;-><init>(Lj/a;)V

    iput-object v0, p0, Lj/a;->H:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 29
    iput-object p1, p0, Lj/a;->d:Landroid/app/Dialog;

    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a;->B(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lj/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lj/a;->y:Z

    return p0
.end method

.method public static synthetic b(Lj/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a;->j:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a;->h:Lcom/android/internal/widget/ActionBarContextView;

    return-object p0
.end method

.method public static synthetic d(Lj/a;)Lcom/android/internal/widget/ActionBarView;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    return-object p0
.end method

.method public static synthetic e(Lj/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic f(Lj/a;)Lcom/android/internal/widget/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    return-object p0
.end method

.method public static synthetic g(Lj/a;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method public static synthetic h(Lj/a;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method public static synthetic i(Lj/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lj/a;->u:I

    return p0
.end method

.method public static synthetic j(Lj/a;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a;->D:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic k(Lj/a;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object p0
.end method

.method public static synthetic l(Lj/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lj/a;->z:Z

    return p0
.end method

.method public static synthetic m(Lj/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lj/a;->A:Z

    return p0
.end method

.method public static synthetic n(ZZZ)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj/a;->p(ZZZ)Z

    move-result p0

    return p0
.end method

.method public static p(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/a;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/a;->A:Z

    .line 3
    invoke-virtual {p0, v0}, Lj/a;->L(Z)V

    :cond_0
    return-void
.end method

.method public final B(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lj/a;->a:Landroid/content/Context;

    const v0, 0x1020323

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBar(Lj/a;)V

    :cond_0
    const v0, 0x1020325

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    const v0, 0x1020326

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lj/a;->h:Lcom/android/internal/widget/ActionBarContextView;

    const v0, 0x1020324

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    const v0, 0x1020327

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ActionBarContainer;

    iput-object p1, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    .line 8
    iget-object p1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lj/a;->h:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView;->setContextView(Lcom/android/internal/widget/ActionBarContextView;)V

    .line 10
    iget-object p1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarView;->s()Z

    move-result p1

    iput p1, p0, Lj/a;->u:I

    .line 11
    iget-object p1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 12
    iput-boolean v1, p0, Lj/a;->o:Z

    .line 13
    :cond_2
    iget-object v2, p0, Lj/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lv/a;->b(Landroid/content/Context;)Lv/a;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lv/a;->a()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lj/a;->setHomeButtonEnabled(Z)V

    .line 15
    invoke-virtual {v2}, Lv/a;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lj/a;->F(Z)V

    return-void

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/a;->A:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public D(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lv/a;->b(Landroid/content/Context;)Lv/a;

    move-result-object p1

    invoke-virtual {p1}, Lv/a;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lj/a;->F(Z)V

    return-void
.end method

.method public E(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/a;->o:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lj/a;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final F(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lj/a;->v:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/g;)V

    .line 3
    iget-object p1, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/g;)V

    .line 5
    iget-object p1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/g;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lj/a;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 7
    :goto_1
    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFitSystemWindows()V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_3
    :goto_2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    iget-boolean v3, p0, Lj/a;->v:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lj/a;->E:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lj/a;->D:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public H(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj/a;->x:I

    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/a;->B:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/a;->B:Z

    .line 3
    iget-object v1, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lj/a;->L(Z)V

    :cond_1
    return-void
.end method

.method public J()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/a;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj/a;->A:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lj/a;->L(Z)V

    :cond_0
    return-void
.end method

.method public K(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    .line 1
    iget-object v0, p0, Lj/a;->p:Lj/a$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lj/a$d;->finish()V

    .line 3
    :cond_0
    iget-object v0, p0, Lj/a;->h:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->t()V

    .line 4
    new-instance v0, Lj/a$d;

    invoke-direct {v0, p0, p1}, Lj/a$d;-><init>(Lj/a;Landroid/view/ActionMode$Callback;)V

    .line 5
    invoke-virtual {v0}, Lj/a$d;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Lj/a$d;->invalidate()V

    .line 7
    iget-object p1, p0, Lj/a;->h:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContextView;->q(Landroid/view/ActionMode;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lj/a;->o(Z)V

    .line 9
    iget-object v1, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v2, p0, Lj/a;->u:I

    if-ne v2, p1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 14
    :cond_1
    iget-object p1, p0, Lj/a;->h:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 15
    iput-object v0, p0, Lj/a;->p:Lj/a$d;

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final L(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj/a;->z:Z

    iget-boolean v1, p0, Lj/a;->A:Z

    iget-boolean v2, p0, Lj/a;->B:Z

    invoke-static {v0, v1, v2}, Lj/a;->p(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lj/a;->C:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lj/a;->C:Z

    .line 4
    invoke-virtual {p0, p1}, Lj/a;->v(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lj/a;->C:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lj/a;->C:Z

    .line 7
    invoke-virtual {p0, p1}, Lj/a;->u(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lj/a;->addTab(Landroid/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lj/a;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lj/a;->x()V

    .line 8
    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/g;->j(Landroid/app/ActionBar$Tab;IZ)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lj/a;->s(Landroid/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lj/a;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lj/a;->x()V

    .line 4
    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/g;->k(Landroid/app/ActionBar$Tab;Z)V

    .line 5
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lj/a;->s(Landroid/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lj/a;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    :cond_2
    return v2
.end method

.method public getNavigationMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 3

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a;->m:Lj/a$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/a$e;->getPosition()I

    move-result v2

    :cond_1
    return v2

    .line 3
    :cond_2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->m:Lj/a$e;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Lj/a;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    iget-object v1, p0, Lj/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010397

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lj/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 7
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lj/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lj/a;->b:Landroid/content/Context;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lj/a;->a:Landroid/content/Context;

    iput-object v0, p0, Lj/a;->b:Landroid/content/Context;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lj/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/a;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/a;->z:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lj/a;->L(Z)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/a;->C:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1
    new-instance v0, Lj/a$e;

    invoke-direct {v0, p0}, Lj/a$e;-><init>(Lj/a;)V

    return-object v0
.end method

.method public o(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lj/a;->I()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lj/a;->z()V

    .line 3
    :goto_0
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/AbsActionBarView;->h(I)V

    .line 4
    iget-object v0, p0, Lj/a;->h:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/AbsActionBarView;->h(I)V

    .line 5
    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->p()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/g;->m(I)V

    :cond_4
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->m:Lj/a$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lj/a;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/internal/widget/g;->t()V

    :cond_1
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lj/a;->n:I

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a;->r:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lj/a;->q:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lj/a;->q:Landroid/view/ActionMode;

    .line 4
    iput-object v0, p0, Lj/a;->r:Landroid/view/ActionMode$Callback;

    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj/a;->q()V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lj/a;->removeTabAt(I)V

    return-void
.end method

.method public removeTabAt(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a;->m:Lj/a$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/a$e;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lj/a;->n:I

    .line 3
    :goto_0
    iget-object v1, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/g;->u(I)V

    .line 4
    iget-object v1, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a$e;

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    .line 5
    invoke-virtual {v1, v2}, Lj/a$e;->b(I)V

    .line 6
    :cond_2
    iget-object v1, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 7
    iget-object v3, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/a$e;

    invoke-virtual {v3, v2}, Lj/a$e;->b(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-ne v0, p1, :cond_5

    .line 8
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/a$e;

    :goto_2
    invoke-virtual {p0, p1}, Lj/a;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_5
    return-void
.end method

.method public final s(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    .line 1
    check-cast p1, Lj/a$e;

    .line 2
    invoke-virtual {p1}, Lj/a$e;->a()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Lj/a$e;->b(I)V

    .line 4
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 6
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/a$e;

    invoke-virtual {v0, p2}, Lj/a$e;->b(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action Bar Tab must have a Callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj/a;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lj/a;->n:I

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lj/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lj/a;->m:Lj/a$e;

    if-ne v2, p1, :cond_2

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {v2}, Lj/a$e;->a()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lj/a;->m:Lj/a$e;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 6
    iget-object v1, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/g;->l(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/g;->setTabSelected(I)V

    .line 8
    iget-object v1, p0, Lj/a;->m:Lj/a$e;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Lj/a$e;->a()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lj/a;->m:Lj/a$e;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 10
    :cond_4
    check-cast p1, Lj/a$e;

    iput-object p1, p0, Lj/a;->m:Lj/a$e;

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lj/a$e;->a()Landroid/app/ActionBar$TabListener;

    move-result-object p1

    iget-object v1, p0, Lj/a;->m:Lj/a$e;

    invoke-interface {p1, v1, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 12
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 13
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_6
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj/a;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p2, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lj/a;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj/a;->o:Z

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 2

    .line 3
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lj/a;->o:Z

    .line 5
    :cond_0
    iget-object v1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lj/a;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lj/a;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lj/a;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lj/a;->setDisplayOptions(II)V

    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeActionContentDescription(I)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeActionContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeAsUpIndicator(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2
    iget-object p1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/ActionBarView;->setCallback(Landroid/app/ActionBar$OnNavigationListener;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lj/a;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lj/a;->n:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Lj/a;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 4
    iget-object v2, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eq v0, p1, :cond_1

    .line 5
    iget-boolean v0, p0, Lj/a;->v:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 8
    :cond_1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setNavigationMode(I)V

    const/4 v0, 0x0

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lj/a;->x()V

    .line 10
    iget-object v2, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget v2, p0, Lj/a;->n:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 12
    invoke-virtual {p0, v2}, Lj/a;->setSelectedNavigationItem(I)V

    .line 13
    iput v3, p0, Lj/a;->n:I

    .line 14
    :cond_3
    :goto_1
    iget-object v2, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    if-ne p1, v1, :cond_4

    iget-boolean p1, p0, Lj/a;->v:Z

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lj/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, p1}, Lj/a;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    :goto_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/a;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj/a;->z:Z

    .line 3
    invoke-virtual {p0, v0}, Lj/a;->L(Z)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj/a;->s:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lj/a;->s:Z

    .line 3
    iget-object v0, p0, Lj/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Lj/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lj/a;->D:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 3
    :cond_0
    iget v0, p0, Lj/a;->x:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lj/a;->E:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 4
    :cond_1
    iget-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    iget-object v3, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_0

    .line 9
    iget-object v5, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 11
    :cond_2
    iget-object p1, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v2, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 12
    iget-object v6, p0, Lj/a;->H:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 14
    iget-boolean v6, p0, Lj/a;->y:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lj/a;->j:Landroid/view/View;

    if-eqz v6, :cond_3

    new-array v4, v4, [F

    const/4 v8, 0x0

    aput v8, v4, v7

    aput v3, v4, v2

    .line 15
    invoke-static {v6, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 16
    :cond_3
    iget-object v3, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 17
    iget-object v3, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 18
    iget-object v1, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    new-array v2, v2, [F

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v7

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 19
    :cond_4
    iget-object p1, p0, Lj/a;->a:Landroid/content/Context;

    const v1, 0x10c0002

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 21
    iget-object p1, p0, Lj/a;->F:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    iput-object v0, p0, Lj/a;->D:Landroid/animation/Animator;

    .line 23
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 24
    :cond_5
    iget-object p1, p0, Lj/a;->F:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public v(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lj/a;->D:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 3
    :cond_0
    iget-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 4
    iget v0, p0, Lj/a;->x:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lj/a;->E:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 5
    :cond_1
    iget-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    iget-object v0, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    new-array p1, v4, [I

    .line 7
    fill-array-data p1, :array_0

    .line 8
    iget-object v5, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 10
    :cond_2
    iget-object p1, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12
    iget-object v5, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v2, [F

    aput v3, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 13
    iget-object v7, p0, Lj/a;->H:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 15
    iget-boolean v7, p0, Lj/a;->y:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lj/a;->j:Landroid/view/View;

    if-eqz v7, :cond_3

    new-array v4, v4, [F

    aput v0, v4, v1

    aput v3, v4, v2

    .line 16
    invoke-static {v7, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 17
    :cond_3
    iget-object v0, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget v4, p0, Lj/a;->u:I

    if-ne v4, v2, :cond_4

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    iget-object v0, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    new-array v2, v2, [F

    aput v3, v2, v1

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 21
    :cond_4
    iget-object v0, p0, Lj/a;->a:Landroid/content/Context;

    const v1, 0x10c0003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 23
    iget-object v0, p0, Lj/a;->G:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    iput-object p1, p0, Lj/a;->D:Landroid/animation/Animator;

    .line 25
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 26
    :cond_5
    iget-object p1, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 27
    iget-object p1, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 28
    iget-boolean p1, p0, Lj/a;->y:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lj/a;->j:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 29
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 30
    :cond_6
    iget-object p1, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    iget v4, p0, Lj/a;->u:I

    if-ne v4, v2, :cond_7

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 32
    iget-object p1, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 33
    iget-object p1, p0, Lj/a;->i:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 34
    :cond_7
    iget-object p1, p0, Lj/a;->G:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 35
    :goto_0
    iget-object p1, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_8

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public w(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lj/a;->y:Z

    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/internal/widget/g;

    iget-object v1, p0, Lj/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/g;-><init>(Landroid/content/Context;)V

    .line 3
    iget-boolean v1, p0, Lj/a;->v:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lj/a;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/g;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lj/a;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->requestFitSystemWindows()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_3
    :goto_0
    iget-object v1, p0, Lj/a;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/g;)V

    .line 12
    :goto_1
    iput-object v0, p0, Lj/a;->k:Lcom/android/internal/widget/g;

    return-void
.end method

.method public y()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/a;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj/a;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/a;->B:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj/a;->B:Z

    .line 3
    iget-object v1, p0, Lj/a;->e:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lj/a;->L(Z)V

    :cond_1
    return-void
.end method
