.class public Lui/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/c;


# direct methods
.method public constructor <init>(Lui/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c$a;->a:Lui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lui/c$a;->a:Lui/c;

    invoke-static {v0}, Lui/c;->g(Lui/c;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lui/c$a;->a:Lui/c;

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lui/c;->h(Lui/c;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v2, -0x2

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    new-instance v2, Lui/c$d;

    iget-object v3, p0, Lui/c$a;->a:Lui/c;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lui/c$d;-><init>(Lui/c;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lui/c$a;->a:Lui/c;

    invoke-static {v0}, Lui/c;->g(Lui/c;)Landroid/widget/PopupWindow;

    move-result-object v0

    const v2, 0x7f050001

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lui/c$a;->a:Lui/c;

    invoke-static {v0}, Lui/c;->g(Lui/c;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {v0}, La/e;->b(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 12
    sget-boolean v0, Lu0/b;->h2:Z

    if-eqz v0, :cond_3

    .line 13
    invoke-static {v2}, Ly0/h;->R(I)V

    .line 14
    iget-object v0, p0, Lui/c$a;->a:Lui/c;

    invoke-static {v0}, Lui/c;->g(Lui/c;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v2}, Ly0/h;->R(I)V

    .line 16
    iget-object v0, p0, Lui/c$a;->a:Lui/c;

    invoke-static {v0}, Lui/c;->g(Lui/c;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x11

    invoke-static {}, La/f;->i()I

    move-result v5

    shr-int/lit8 v2, v5, 0x1

    rsub-int v2, v2, 0xd6

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, Lui/c$a;->a:Lui/c;

    invoke-static {v0}, Lui/c;->i(Lui/c;)V

    return-void
.end method
