.class public Lui/e;
.super Lui/b$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/e$e;,
        Lui/e$d;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/PopupWindow;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Z

.field public f:I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lui/b$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lui/e;->e:Z

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lui/e;->f:I

    const/16 v0, 0xff

    .line 4
    iput v0, p0, Lui/e;->g:I

    .line 5
    new-instance v0, Lui/e$a;

    invoke-direct {v0, p0}, Lui/e$a;-><init>(Lui/e;)V

    iput-object v0, p0, Lui/e;->h:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lui/e$b;

    invoke-direct {v0, p0}, Lui/e$b;-><init>(Lui/e;)V

    iput-object v0, p0, Lui/e;->i:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lui/e$c;

    invoke-direct {v0, p0}, Lui/e$c;-><init>(Lui/e;)V

    iput-object v0, p0, Lui/e;->j:Ljava/lang/Runnable;

    const-string v0, "ui/vol/hog_htop/"

    .line 8
    iput-object v0, p0, Lui/e;->k:Ljava/lang/String;

    const/16 v0, 0x1f3

    .line 9
    iput v0, p0, Lui/e;->l:I

    const/16 v0, 0x64

    .line 10
    iput v0, p0, Lui/e;->m:I

    const/16 v0, 0x28

    .line 11
    iput v0, p0, Lui/e;->n:I

    const/16 v0, 0x50

    .line 12
    iput v0, p0, Lui/e;->o:I

    const/16 v0, 0x15e

    .line 13
    iput v0, p0, Lui/e;->p:I

    const/16 v0, 0xc

    .line 14
    iput v0, p0, Lui/e;->q:I

    const/16 v0, 0x29

    .line 15
    iput v0, p0, Lui/e;->r:I

    .line 16
    iput v0, p0, Lui/e;->s:I

    const/16 v0, 0x4f

    .line 17
    iput v0, p0, Lui/e;->t:I

    const/16 v0, 0x3f

    .line 18
    iput v0, p0, Lui/e;->u:I

    return-void
.end method

.method public static synthetic g(Lui/e;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/e;->b:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic h(Lui/e;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/e;->b:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method public static synthetic i(Lui/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lui/e;->f:I

    return p1
.end method

.method public static synthetic j(Lui/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lui/e;->o()V

    return-void
.end method

.method public static synthetic k(Lui/e;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/e;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic l(Lui/e;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/e;->c:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic m(Lui/e;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lui/e;->d:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic n(Lui/e;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lui/e;->d:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lui/e;->g:I

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lui/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui/e;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/e;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lui/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/e;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lui/e;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lui/e;->b:Landroid/widget/PopupWindow;

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

.method public final o()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lui/e;->f:I

    .line 2
    iget-boolean v0, p0, Lui/e;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lui/e;->e:Z

    .line 4
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget v0, p0, Lui/e;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lui/e;->f:I

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lui/b$a;->hide()V

    .line 3
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lui/e;->e:Z

    :cond_0
    return-void
.end method
