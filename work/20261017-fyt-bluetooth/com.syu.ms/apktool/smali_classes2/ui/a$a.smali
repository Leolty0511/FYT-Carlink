.class public Lui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/a;


# direct methods
.method public constructor <init>(Lui/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$a;->a:Lui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v1}, Lui/a;->g(Lui/a;)Landroid/widget/PopupWindow;

    move-result-object v1

    const v2, 0x800005

    const v3, 0x800003

    const/16 v4, 0x30

    const-string v5, "VOL"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_9

    const-string v1, "Control Bar =====>>> create window"

    .line 2
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    new-instance v8, Landroid/widget/PopupWindow;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v8}, Lui/a;->h(Lui/a;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v8, -0x2

    .line 4
    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5
    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    new-instance v8, Lui/a$a$a;

    invoke-direct {v8, v0}, Lui/a$a$a;-><init>(Lui/a$a;)V

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 9
    iget-object v8, v0, Lui/a$a;->a:Lui/a;

    iget-object v9, v8, Lui/a;->h:Lui/a$d;

    iget v10, v9, Lui/a$d;->d:I

    const/16 v11, 0x11

    const/16 v12, 0x50

    if-nez v10, :cond_3

    .line 10
    iget v9, v9, Lui/a$d;->c:I

    if-eq v9, v4, :cond_2

    if-eq v9, v12, :cond_2

    if-ne v9, v11, :cond_0

    goto :goto_0

    :cond_0
    if-eq v9, v3, :cond_1

    if-ne v9, v2, :cond_7

    .line 11
    :cond_1
    new-instance v9, Lui/a$i;

    iget-object v14, v0, Lui/a$a;->a:Lui/a;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v15

    const/16 v16, 0x1

    iget-object v10, v0, Lui/a$a;->a:Lui/a;

    iget-object v10, v10, Lui/a;->h:Lui/a$d;

    iget-object v11, v10, Lui/a$d;->a:Ljava/lang/String;

    iget-boolean v10, v10, Lui/a$d;->f:Z

    move-object v13, v9

    move-object/from16 v17, v11

    move/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Lui/a$i;-><init>(Lui/a;Landroid/content/Context;ILjava/lang/String;Z)V

    invoke-static {v8, v9}, Lui/a;->k(Lui/a;Landroid/view/View;)Landroid/view/View;

    goto :goto_2

    .line 12
    :cond_2
    :goto_0
    new-instance v9, Lui/a$i;

    iget-object v10, v0, Lui/a$a;->a:Lui/a;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v19

    const/16 v20, 0x0

    iget-object v11, v0, Lui/a$a;->a:Lui/a;

    iget-object v11, v11, Lui/a;->h:Lui/a$d;

    iget-object v12, v11, Lui/a$d;->a:Ljava/lang/String;

    iget-boolean v11, v11, Lui/a$d;->f:Z

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v21, v12

    move/from16 v22, v11

    invoke-direct/range {v17 .. v22}, Lui/a$i;-><init>(Lui/a;Landroid/content/Context;ILjava/lang/String;Z)V

    invoke-static {v8, v9}, Lui/a;->k(Lui/a;Landroid/view/View;)Landroid/view/View;

    goto :goto_2

    .line 13
    :cond_3
    iget v9, v9, Lui/a$d;->c:I

    if-eq v9, v4, :cond_6

    if-eq v9, v12, :cond_6

    if-ne v9, v11, :cond_4

    goto :goto_1

    :cond_4
    if-eq v9, v3, :cond_5

    if-ne v9, v2, :cond_7

    .line 14
    :cond_5
    new-instance v9, Lui/a$h;

    iget-object v10, v0, Lui/a$a;->a:Lui/a;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v11

    iget-object v12, v0, Lui/a$a;->a:Lui/a;

    iget-object v12, v12, Lui/a;->h:Lui/a$d;

    iget-object v12, v12, Lui/a$d;->a:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v6, v12}, Lui/a$h;-><init>(Lui/a;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v8, v9}, Lui/a;->k(Lui/a;Landroid/view/View;)Landroid/view/View;

    goto :goto_2

    .line 15
    :cond_6
    :goto_1
    new-instance v9, Lui/a$h;

    iget-object v10, v0, Lui/a$a;->a:Lui/a;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v11

    iget-object v12, v0, Lui/a$a;->a:Lui/a;

    iget-object v12, v12, Lui/a;->h:Lui/a$d;

    iget-object v12, v12, Lui/a$d;->a:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v7, v12}, Lui/a$h;-><init>(Lui/a;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v8, v9}, Lui/a;->k(Lui/a;Landroid/view/View;)Landroid/view/View;

    .line 16
    :cond_7
    :goto_2
    iget-object v8, v0, Lui/a$a;->a:Lui/a;

    iget-object v8, v8, Lui/a;->h:Lui/a$d;

    iget-object v8, v8, Lui/a$d;->n:Ljava/lang/String;

    invoke-static {v8}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 17
    iget-object v8, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v8}, Lui/a;->j(Lui/a;)Landroid/view/View;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lui/a$a;->a:Lui/a;

    iget-object v10, v10, Lui/a;->h:Lui/a$d;

    iget-object v10, v10, Lui/a$d;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lui/a$a;->a:Lui/a;

    iget-object v10, v10, Lui/a;->h:Lui/a$d;

    iget-object v10, v10, Lui/a$d;->n:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lo1/r0;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_8
    iget-object v8, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v8}, Lui/a;->j(Lui/a;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 19
    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v1}, Lui/a;->g(Lui/a;)Landroid/widget/PopupWindow;

    move-result-object v1

    const v8, 0x7f050001

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_9
    const-string v1, "====================>>> to show vol window"

    .line 20
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v1}, Lui/a;->g(Lui/a;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-static {v1}, La/e;->b(Ljava/lang/Object;)V

    .line 22
    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, "====================>>> RootView not attached!!"

    .line 23
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 25
    :cond_a
    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    iget-object v1, v1, Lui/a;->h:Lui/a$d;

    iget v1, v1, Lui/a$d;->c:I

    const/16 v5, 0x1e

    if-eq v1, v4, :cond_c

    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_b

    move v1, v7

    move v5, v1

    goto :goto_3

    :cond_b
    move v1, v7

    goto :goto_3

    :cond_c
    const/16 v1, 0x3c

    const-string v2, "sys.lsec.status_bar_height"

    .line 26
    invoke-static {v2, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    move v5, v7

    .line 27
    :goto_3
    iget-object v2, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v2}, Lui/a;->j(Lui/a;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    invoke-static {}, Lo1/q0;->v()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 29
    sget-boolean v2, Lu0/b;->h2:Z

    if-eqz v2, :cond_e

    .line 30
    invoke-static {v6}, Ly0/h;->R(I)V

    .line 31
    iget-object v2, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v2}, Lui/a;->g(Lui/a;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lui/a$a;->a:Lui/a;

    iget-object v4, v4, Lui/a;->h:Lui/a$d;

    iget v4, v4, Lui/a$d;->c:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 32
    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v1}, Lui/a;->l(Lui/a;)Lui/a$f;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v1}, Lui/a;->l(Lui/a;)Lui/a$f;

    move-result-object v1

    invoke-interface {v1, v6}, Lui/a$f;->a(Z)V

    goto :goto_4

    .line 33
    :cond_d
    invoke-static {v6}, Ly0/h;->R(I)V

    .line 34
    iget-object v2, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v2}, Lui/a;->g(Lui/a;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lui/a$a;->a:Lui/a;

    iget-object v4, v4, Lui/a;->h:Lui/a$d;

    iget v4, v4, Lui/a$d;->c:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 35
    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v1}, Lui/a;->l(Lui/a;)Lui/a$f;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v1}, Lui/a;->l(Lui/a;)Lui/a$f;

    move-result-object v1

    invoke-interface {v1, v6}, Lui/a$f;->a(Z)V

    .line 36
    :cond_e
    :goto_4
    iget-object v1, v0, Lui/a$a;->a:Lui/a;

    invoke-virtual {v1}, Lui/a;->o()V

    return-void
.end method
