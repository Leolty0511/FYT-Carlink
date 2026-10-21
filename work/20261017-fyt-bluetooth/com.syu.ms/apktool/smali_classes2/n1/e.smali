.class public Ln1/e;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/view/WindowManager$LayoutParams;

.field public b:Landroid/graphics/Paint;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Lo1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    invoke-static {p1, p1}, La/i;->e(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Ln1/e;->a:Landroid/view/WindowManager$LayoutParams;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ln1/e;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln1/e;->c:Z

    .line 5
    iput-boolean v0, p0, Ln1/e;->d:Z

    const/16 v0, 0x19

    .line 6
    iput v0, p0, Ln1/e;->e:I

    .line 7
    new-instance v0, Lo1/c;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    iput-object v0, p0, Ln1/e;->f:Lo1/c;

    .line 8
    iget-object v0, p0, Ln1/e;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v0, p0, Ln1/e;->b:Landroid/graphics/Paint;

    iget v1, p0, Ln1/e;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget-object v0, p0, Ln1/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln1/e;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln1/e;->c:Z

    .line 3
    invoke-virtual {p0, v0}, Ln1/e;->i(Z)V

    .line 4
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, La/f;->y()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Ln1/e;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final i(Z)V
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param0"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object p1

    const/16 v1, 0x97

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "sys.emmc.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/syu/jni/ControlNative;->Setflashflag(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 9

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v3

    const/16 v4, 0x96

    invoke-virtual {v3, v4, v2, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    const-string v2, "param0"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const-string v0, "sys.emmc.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->Getpid()[I

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 7
    array-length v0, v2

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const/4 v4, 0x1

    .line 11
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 12
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    add-int/lit8 v6, v4, -0x1

    aget v6, v2, v6

    if-ne v5, v6, :cond_5

    .line 13
    iget-object v5, p0, Ln1/e;->f:Lo1/c;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lo1/c;->d(Ljava/lang/Comparable;I)I

    move-result v7

    aget v8, v2, v4

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln1/e;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln1/e;->c:Z

    .line 3
    sget-object v1, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v1, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0, v0}, Ln1/e;->i(Z)V

    .line 5
    invoke-static {}, La/f;->y()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ln1/e;->e:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iget-object v2, p0, Ln1/e;->b:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3
    iget-boolean v0, p0, Ln1/e;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v1, p0, Ln1/e;->d:Z

    .line 5
    invoke-virtual {p0}, Ln1/e;->j()V

    .line 6
    :cond_0
    iget-object v0, p0, Ln1/e;->f:Lo1/c;

    invoke-virtual {v0}, Lo1/c;->h()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    move v0, v1

    .line 7
    :goto_0
    iget-object v2, p0, Ln1/e;->f:Lo1/c;

    invoke-virtual {v2}, Lo1/c;->h()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    iget-object v4, p0, Ln1/e;->f:Lo1/c;

    invoke-virtual {v4, v0}, Lo1/c;->e(I)Ljava/lang/Comparable;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v4, p0, Ln1/e;->f:Lo1/c;

    invoke-virtual {v4, v0}, Lo1/c;->i(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "%s:%d"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v0, 0x2

    iget v5, p0, Ln1/e;->e:I

    add-int/lit8 v5, v5, 0x5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Ln1/e;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln1/e;->d:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
