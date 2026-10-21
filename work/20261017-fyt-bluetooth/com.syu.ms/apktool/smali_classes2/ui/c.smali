.class public Lui/c;
.super Lui/b$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/c$e;,
        Lui/c$d;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/PopupWindow;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public final r:Ljava/lang/String;

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lui/b$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lui/c;->e:Z

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lui/c;->f:I

    .line 4
    iput v0, p0, Lui/c;->g:I

    const/16 v0, 0xff

    .line 5
    iput v0, p0, Lui/c;->h:I

    .line 6
    new-instance v0, Lui/c$a;

    invoke-direct {v0, p0}, Lui/c$a;-><init>(Lui/c;)V

    iput-object v0, p0, Lui/c;->o:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lui/c$b;

    invoke-direct {v0, p0}, Lui/c$b;-><init>(Lui/c;)V

    iput-object v0, p0, Lui/c;->p:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lui/c$c;

    invoke-direct {v0, p0}, Lui/c$c;-><init>(Lui/c;)V

    iput-object v0, p0, Lui/c;->q:Ljava/lang/Runnable;

    const-string v0, "ui/guesture/"

    .line 9
    iput-object v0, p0, Lui/c;->r:Ljava/lang/String;

    const/16 v0, 0xd8

    .line 10
    iput v0, p0, Lui/c;->s:I

    const/16 v1, 0xd6

    .line 11
    iput v1, p0, Lui/c;->t:I

    const/16 v2, 0x28

    .line 12
    iput v2, p0, Lui/c;->u:I

    const/16 v2, 0x14

    .line 13
    iput v2, p0, Lui/c;->v:I

    const/16 v2, 0xae

    .line 14
    iput v2, p0, Lui/c;->w:I

    const/4 v2, 0x4

    .line 15
    iput v2, p0, Lui/c;->x:I

    .line 16
    iput v0, p0, Lui/c;->y:I

    .line 17
    iput v1, p0, Lui/c;->z:I

    return-void
.end method

.method public static synthetic g(Lui/c;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->b:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic h(Lui/c;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->b:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method public static synthetic i(Lui/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lui/c;->A()V

    return-void
.end method

.method public static synthetic j(Lui/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lui/c;->h:I

    return p0
.end method

.method public static synthetic k(Lui/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic l(Lui/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->c:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic m(Lui/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic n(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->n:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic o(Lui/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic p(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->i:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic q(Lui/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->j:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic r(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->j:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic s(Lui/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic t(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->k:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic u(Lui/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic v(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->l:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic w(Lui/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->m:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic x(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->m:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic y(Lui/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/c;->d:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic z(Lui/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c;->d:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget v0, p0, Lui/c;->g:I

    iput v0, p0, Lui/c;->f:I

    .line 2
    iget-boolean v0, p0, Lui/c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lui/c;->e:Z

    .line 4
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShowMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lui/c;->h:I

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lui/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui/c;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/c;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lui/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/c;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/c;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lui/c;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lui/c;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lui/c;->f:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTickRemain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lui/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lui/c;->f:I

    if-gtz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lui/b$a;->hide()V

    .line 5
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lui/c;->e:Z

    :cond_0
    return-void
.end method
