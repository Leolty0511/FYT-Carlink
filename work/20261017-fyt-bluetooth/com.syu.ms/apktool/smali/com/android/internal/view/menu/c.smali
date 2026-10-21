.class public Lcom/android/internal/view/menu/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/c$b;,
        Lcom/android/internal/view/menu/c$a;
    }
.end annotation


# static fields
.field public static final x:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/res/Resources;

.field public c:Z

.field public d:Z

.field public e:Lcom/android/internal/view/menu/c$a;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:I

.field public m:Landroid/view/ContextMenu$ContextMenuInfo;

.field public n:Ljava/lang/CharSequence;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/view/View;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/view/menu/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public w:Lcom/android/internal/view/menu/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/view/menu/c;->x:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/internal/view/menu/c;->l:I

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->q:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->r:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->s:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->t:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/c;->u:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    iput-object p1, p0, Lcom/android/internal/view/menu/c;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/c;->b:Landroid/content/res/Resources;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/c;->g:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/internal/view/menu/c;->h:Z

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/c;->i:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/c;->j:Ljava/util/ArrayList;

    .line 16
    iput-boolean p1, p0, Lcom/android/internal/view/menu/c;->k:Z

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->R(Z)V

    return-void
.end method

.method public static l(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/d;

    .line 3
    invoke-virtual {v1}, Lcom/android/internal/view/menu/d;->c()I

    move-result v1

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static v(I)I
    .locals 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    .line 1
    sget-object v1, Lcom/android/internal/view/menu/c;->x:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/c;->d:Z

    return v0
.end method

.method public B(Lcom/android/internal/view/menu/d;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/c;->k:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-void
.end method

.method public C(Lcom/android/internal/view/menu/d;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/c;->h:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-void
.end method

.method public D(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/c;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/internal/view/menu/c;->h:Z

    .line 3
    iput-boolean v1, p0, Lcom/android/internal/view/menu/c;->k:Z

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->g(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/view/menu/c;->r:Z

    :goto_0
    return-void
.end method

.method public E(Landroid/view/MenuItem;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/view/menu/c;->F(Landroid/view/MenuItem;Lcom/android/internal/view/menu/f;I)Z

    move-result p1

    return p1
.end method

.method public F(Landroid/view/MenuItem;Lcom/android/internal/view/menu/f;I)Z
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->h()Z

    move-result v2

    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->expandActionView()Z

    move-result p1

    or-int/2addr v2, p1

    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/c;->d(Z)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_7

    .line 10
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/c;->d(Z)V

    goto :goto_2

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/c;->d(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_5

    .line 13
    new-instance p3, Lcom/android/internal/view/menu/h;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1, p0, v0}, Lcom/android/internal/view/menu/h;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)V

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/d;->q(Lcom/android/internal/view/menu/h;)V

    .line 14
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p3

    check-cast p3, Lcom/android/internal/view/menu/h;

    if-eqz v4, :cond_6

    .line 15
    invoke-virtual {p1, p3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 16
    :cond_6
    invoke-virtual {p0, p3, p2}, Lcom/android/internal/view/menu/c;->h(Lcom/android/internal/view/menu/h;Lcom/android/internal/view/menu/f;)Z

    move-result p1

    or-int/2addr v2, p1

    if-nez v2, :cond_7

    .line 17
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/c;->d(Z)V

    :cond_7
    :goto_2
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method public final G(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->D(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public H(Lcom/android/internal/view/menu/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/c;->e:Lcom/android/internal/view/menu/c$a;

    return-void
.end method

.method public I(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/c;->m:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public J(I)Lcom/android/internal/view/menu/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/view/menu/c;->l:I

    return-object p0
.end method

.method public K(Landroid/view/MenuItem;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 3
    iget-object v4, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/d;

    .line 4
    invoke-virtual {v4}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 5
    invoke-virtual {v4}, Lcom/android/internal/view/menu/d;->j()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/view/menu/d;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v4, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    .line 7
    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/d;->m(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public L(I)Lcom/android/internal/view/menu/c;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/menu/c;->N(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public M(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/c;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/menu/c;->N(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final N(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->w()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 2
    iput-object p5, p0, Lcom/android/internal/view/menu/c;->p:Landroid/view/View;

    .line 3
    iput-object v1, p0, Lcom/android/internal/view/menu/c;->n:Ljava/lang/CharSequence;

    .line 4
    iput-object v1, p0, Lcom/android/internal/view/menu/c;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    if-lez p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/c;->n:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    iput-object p2, p0, Lcom/android/internal/view/menu/c;->n:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 7
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/c;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 8
    iput-object p4, p0, Lcom/android/internal/view/menu/c;->o:Landroid/graphics/drawable/Drawable;

    .line 9
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/android/internal/view/menu/c;->p:Landroid/view/View;

    :goto_2
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-void
.end method

.method public O(I)Lcom/android/internal/view/menu/c;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/menu/c;->N(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public P(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/c;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/menu/c;->N(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public Q(Landroid/view/View;)Lcom/android/internal/view/menu/c;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/menu/c;->N(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final R(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/internal/view/menu/c;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/internal/view/menu/c;->b:Landroid/content/res/Resources;

    const v1, 0x111003e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->d:Z

    return-void
.end method

.method public S()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->q:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/internal/view/menu/c;->r:Z

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->r:Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/c;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->q:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->r:Z

    :cond_0
    return-void
.end method

.method public final a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 10

    .line 1
    invoke-static {p3}, Lcom/android/internal/view/menu/c;->v(I)I

    move-result v8

    .line 2
    new-instance v9, Lcom/android/internal/view/menu/d;

    iget v7, p0, Lcom/android/internal/view/menu/c;->l:I

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v8

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/view/menu/d;-><init>(Lcom/android/internal/view/menu/c;IIIILjava/lang/CharSequence;I)V

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/c;->m:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v9, p1}, Lcom/android/internal/view/menu/d;->p(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-static {p1, v8}, Lcom/android/internal/view/menu/c;->l(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-object v9
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/c;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/c;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/c;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/c;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 5
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 6
    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/internal/view/menu/c;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    .line 9
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    .line 10
    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/c;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/c;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/c;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/d;

    .line 4
    new-instance p2, Lcom/android/internal/view/menu/h;

    iget-object p3, p0, Lcom/android/internal/view/menu/c;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/view/menu/h;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/d;->q(Lcom/android/internal/view/menu/h;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/c;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/internal/view/menu/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->a:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/view/menu/f;->e(Landroid/content/Context;Lcom/android/internal/view/menu/c;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/internal/view/menu/c;->k:Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->e:Lcom/android/internal/view/menu/c$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/android/internal/view/menu/c$a;->onMenuModeChange(Lcom/android/internal/view/menu/c;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->w:Lcom/android/internal/view/menu/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/c;->e(Lcom/android/internal/view/menu/d;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/internal/view/menu/c;->o:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object v0, p0, Lcom/android/internal/view/menu/c;->n:Ljava/lang/CharSequence;

    .line 3
    iput-object v0, p0, Lcom/android/internal/view/menu/c;->p:Landroid/view/View;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/c;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/c;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->t:Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/f;

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2, p0, p1}, Lcom/android/internal/view/menu/f;->onCloseMenu(Lcom/android/internal/view/menu/c;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/internal/view/menu/c;->t:Z

    return-void
.end method

.method public e(Lcom/android/internal/view/menu/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/view/menu/c;->w:Lcom/android/internal/view/menu/d;

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->T()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/f;

    if-nez v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v3, p0, p1}, Lcom/android/internal/view/menu/f;->a(Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->S()V

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/internal/view/menu/c;->w:Lcom/android/internal/view/menu/d;

    :cond_4
    :goto_1
    return v1
.end method

.method public f(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->e:Lcom/android/internal/view/menu/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/c$a;->onMenuItemSelected(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/d;

    .line 3
    invoke-virtual {v2}, Lcom/android/internal/view/menu/d;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    .line 4
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/view/menu/d;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/android/internal/view/menu/d;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->T()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/f;

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/f;->b(Z)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->S()V

    return-void
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public final h(Lcom/android/internal/view/menu/h;Lcom/android/internal/view/menu/f;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2, p1}, Lcom/android/internal/view/menu/f;->d(Lcom/android/internal/view/menu/h;)Z

    move-result v1

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/f;

    if-nez v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    .line 6
    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/f;->d(Lcom/android/internal/view/menu/h;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method public hasVisibleItems()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/d;

    .line 3
    invoke-virtual {v3}, Lcom/android/internal/view/menu/d;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public i(Lcom/android/internal/view/menu/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->T()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/f;

    if-nez v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v3, p0, p1}, Lcom/android/internal/view/menu/f;->f(Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->S()V

    if-eqz v1, :cond_4

    .line 8
    iput-object p1, p0, Lcom/android/internal/view/menu/c;->w:Lcom/android/internal/view/menu/d;

    :cond_4
    return v1
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/c;->n(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/d;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/c;->k(II)I

    move-result p1

    return p1
.end method

.method public k(II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/d;

    .line 3
    invoke-virtual {v1}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public m(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/d;

    .line 3
    invoke-virtual {v2}, Lcom/android/internal/view/menu/d;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public n(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/d;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->u:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/menu/c;->o(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 6
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 7
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/d;

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->z()Z

    move-result v4

    move v6, v5

    :goto_0
    if-ge v6, p2, :cond_7

    .line 11
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/d;

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v7}, Lcom/android/internal/view/menu/d;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/android/internal/view/menu/d;->getNumericShortcut()C

    move-result v8

    .line 13
    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-ne v8, v10, :cond_3

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_5

    :cond_3
    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_4

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/16 v8, 0x43

    if-ne p1, v8, :cond_6

    :cond_5
    return-object v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method public o(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/view/menu/d;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->z()Z

    move-result v0

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 3
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 4
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_0

    if-eq p2, v4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_5

    .line 6
    iget-object v7, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/d;

    .line 7
    invoke-virtual {v7}, Lcom/android/internal/view/menu/d;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8
    invoke-virtual {v7}, Lcom/android/internal/view/menu/d;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/c;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/view/menu/c;->o(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v7}, Lcom/android/internal/view/menu/d;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/android/internal/view/menu/d;->getNumericShortcut()C

    move-result v8

    :goto_1
    and-int/lit8 v9, v1, 0x5

    if-nez v9, :cond_4

    if-eqz v8, :cond_4

    .line 10
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-eq v8, v10, :cond_3

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_3

    if-eqz v0, :cond_4

    const/16 v9, 0x8

    if-ne v8, v9, :cond_4

    if-ne p2, v4, :cond_4

    :cond_3
    invoke-virtual {v7}, Lcom/android/internal/view/menu/d;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 11
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public p()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->y()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/android/internal/view/menu/c;->k:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/f;

    if-nez v5, :cond_1

    .line 5
    iget-object v5, p0, Lcom/android/internal/view/menu/c;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v5}, Lcom/android/internal/view/menu/f;->c()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    .line 7
    iget-object v1, p0, Lcom/android/internal/view/menu/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, p0, Lcom/android/internal/view/menu/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/d;

    .line 11
    invoke-virtual {v4}, Lcom/android/internal/view/menu/d;->i()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iget-object v5, p0, Lcom/android/internal/view/menu/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_3
    iget-object v5, p0, Lcom/android/internal/view/menu/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->y()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_5
    iput-boolean v2, p0, Lcom/android/internal/view/menu/c;->k:Z

    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/c;->E(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/c;->n(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/view/menu/c;->E(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/c;->d(Z)V

    :cond_1
    return p1
.end method

.method public q()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->p()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public r()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public removeGroup(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->j(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/d;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/view/menu/c;->G(IZ)V

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->D(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->m(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/c;->G(IZ)V

    return-void
.end method

.method public s()Lcom/android/internal/view/menu/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->w:Lcom/android/internal/view/menu/d;

    return-object v0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/d;

    .line 3
    invoke-virtual {v2}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {v2, p3}, Lcom/android/internal/view/menu/d;->n(Z)V

    .line 5
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/d;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/d;

    .line 3
    invoke-virtual {v2}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/d;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 2
    iget-object v4, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/d;

    .line 3
    invoke-virtual {v4}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 4
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/d;->r(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/c;->D(Z)V

    :cond_2
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/c;->c:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public t()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/c;->p()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/c;->s:Z

    return v0
.end method

.method public w()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method public x()Lcom/android/internal/view/menu/c;
    .locals 0

    return-object p0
.end method

.method public y()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/c;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/c;->g:Ljava/util/ArrayList;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/android/internal/view/menu/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/d;

    .line 5
    invoke-virtual {v3}, Lcom/android/internal/view/menu/d;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/view/menu/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/view/menu/c;->h:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/internal/view/menu/c;->k:Z

    .line 8
    iget-object v0, p0, Lcom/android/internal/view/menu/c;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/c;->c:Z

    return v0
.end method
