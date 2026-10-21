.class public Lui/a;
.super Lui/b$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/a$f;,
        Lui/a$g;,
        Lui/a$d;,
        Lui/a$e;,
        Lui/a$h;,
        Lui/a$i;
    }
.end annotation


# instance fields
.field public final b:Z

.field public c:Landroid/widget/PopupWindow;

.field public d:Landroid/view/View;

.field public e:Z

.field public f:I

.field public g:I

.field public h:Lui/a$d;

.field public i:Lui/a$f;

.field public j:Lui/a$g;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lui/a$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lui/b$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lui/a;->b:Z

    .line 3
    iput-boolean v0, p0, Lui/a;->e:Z

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lui/a;->f:I

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lui/a;->g:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lui/a;->j:Lui/a$g;

    .line 7
    new-instance v0, Lui/a$a;

    invoke-direct {v0, p0}, Lui/a$a;-><init>(Lui/a;)V

    iput-object v0, p0, Lui/a;->k:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lui/a$b;

    invoke-direct {v0, p0}, Lui/a$b;-><init>(Lui/a;)V

    iput-object v0, p0, Lui/a;->l:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lui/a$c;

    invoke-direct {v0, p0}, Lui/a$c;-><init>(Lui/a;)V

    iput-object v0, p0, Lui/a;->m:Ljava/lang/Runnable;

    .line 10
    iput-object p1, p0, Lui/a;->h:Lui/a$d;

    return-void
.end method

.method public static synthetic g(Lui/a;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/a;->c:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic h(Lui/a;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a;->c:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method public static synthetic i(Lui/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lui/a;->f:I

    return p1
.end method

.method public static synthetic j(Lui/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/a;->d:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic k(Lui/a;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a;->d:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic l(Lui/a;)Lui/a$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/a;->i:Lui/a$f;

    return-object p0
.end method


# virtual methods
.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui/a;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/a;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "VOL"

    const-string v1, "====>>> Control Bar show"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lui/a;->c:Landroid/widget/PopupWindow;

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

.method public m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lui/a;->c:Landroid/widget/PopupWindow;

    return-void
.end method

.method public n(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lui/a;->m()V

    .line 2
    iget-object v0, p0, Lui/a;->j:Lui/a$g;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lui/a;->h:Lui/a$d;

    invoke-interface {v0, p1, p2}, Lui/a$g;->b(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lui/a$d;->p(Ljava/lang/String;)Lui/a$d;

    .line 4
    iget-object p1, p0, Lui/a;->h:Lui/a$d;

    iget-object p2, p0, Lui/a;->j:Lui/a$g;

    invoke-interface {p2}, Lui/a$g;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lui/a$d;->t(I)Lui/a$d;

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget v0, p0, Lui/a;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lui/a;->f:I

    .line 2
    iget-boolean v0, p0, Lui/a;->e:Z

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lui/a;->e:Z

    .line 4
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public p(Lui/a$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a;->j:Lui/a$g;

    return-void
.end method

.method public q(Lui/a$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a;->i:Lui/a$f;

    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lui/a;->g:I

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget v0, p0, Lui/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lui/a;->f:I

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lui/b$a;->hide()V

    .line 3
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lui/a;->e:Z

    :cond_0
    return-void
.end method

.method public s(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lui/a;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lui/a$e;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lui/a$e;

    invoke-interface {v0, p1, p2}, Lui/a$e;->f(IZ)V

    :cond_0
    return-void
.end method
