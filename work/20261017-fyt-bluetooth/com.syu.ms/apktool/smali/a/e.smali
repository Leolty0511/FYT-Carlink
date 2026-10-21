.class public La/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, La/e;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, La/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p0, "VOL"

    const-string v0, "====================>>> addRootView"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, La/f;->y()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, La/f;->t()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static c(I)V
    .locals 3

    .line 1
    sget v0, La/b;->e0:I

    if-eq v0, p0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 2
    sget v2, Lu0/b;->n4:I

    if-eq v2, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v1, v0}, Ly0/h;->Y(IZ)V

    .line 3
    :cond_2
    sput p0, La/b;->e0:I

    if-ne p0, v1, :cond_3

    .line 4
    sget-object p0, Ln0/j4;->d:Ln0/c4;

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Ln0/c4;->M2()V

    .line 6
    :cond_3
    sget-object p0, La/d;->a:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_4
    return-void
.end method

.method public static d()V
    .locals 2

    .line 1
    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, La/f;->y()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    sget-object v0, La/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static e(I)V
    .locals 1

    .line 1
    sget v0, La/b;->f0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, La/b;->f0:I

    .line 3
    invoke-static {}, Ly0/h;->M()V

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, La/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    invoke-static {}, La/f;->s()Landroid/view/View;

    move-result-object p0

    const-string v0, "VOL"

    const-string v1, "====================>>> removeRootView"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, La/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, La/f;->y()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static g()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lu0/d;->v(I)V

    .line 2
    sget v1, Lu0/b;->b:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    :cond_0
    sget v1, Lu0/b;->R:I

    sput v1, Lu0/b;->T:I

    .line 5
    invoke-static {}, La/i;->V()V

    .line 6
    invoke-static {}, Lg/e;->a()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "command"

    const-string/jumbo v2, "send_hot_start_cmd"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, La/f;->m()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    const-string v3, "io_ctrl_command"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 10
    :cond_1
    invoke-static {}, Ly0/h;->P()V

    .line 11
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->O()V

    .line 12
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Ln0/c4;->M2()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x1
        0xaa
        0x60
    .end array-data
.end method
