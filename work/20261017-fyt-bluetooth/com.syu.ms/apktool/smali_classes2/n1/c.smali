.class public Ln1/c;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/c$b;,
        Ln1/c$c;
    }
.end annotation


# static fields
.field public static g:Z = false


# instance fields
.field public a:Lo1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln1/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Landroid/graphics/Paint;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lo1/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lo1/c;-><init>(I)V

    iput-object p1, p0, Ln1/c;->a:Lo1/c;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ln1/c;->b:Ljava/util/ArrayList;

    .line 4
    iput-boolean v0, p0, Ln1/c;->c:Z

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ln1/c;->d:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ln1/c;->e:Z

    const-string v1, ""

    .line 7
    iput-object v1, p0, Ln1/c;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static synthetic h(Ln1/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ln1/c;->c:Z

    return p0
.end method

.method public static synthetic i(Ln1/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln1/c;->k()V

    return-void
.end method

.method public static synthetic j(Ln1/c;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Ln1/c;->b:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln1/c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    invoke-static {v0, v0}, La/i;->e(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5
    invoke-static {}, La/f;->y()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ln1/c;->c:Z

    :goto_0
    return-void
.end method

.method public l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V
    .locals 15

    move-object v12, p0

    .line 1
    sget-boolean v0, Ln1/c;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v13, v12, Ln1/c;->a:Lo1/c;

    monitor-enter v13

    .line 3
    :try_start_0
    iget-object v0, v12, Ln1/c;->a:Lo1/c;

    const/4 v1, 0x1

    move-object/from16 v4, p2

    invoke-virtual {v0, v4, v1}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    .line 4
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v14, Ln1/c$b;

    const/4 v11, 0x0

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Ln1/c$b;-><init>(Ln1/c;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIIILn1/c$a;)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln1/c;->a:Lo1/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln1/c;->a:Lo1/c;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lo1/c;->d(Ljava/lang/Comparable;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Ln1/c;->a:Lo1/c;

    invoke-virtual {v1, p1}, Lo1/c;->g(Ljava/lang/Comparable;)V

    .line 4
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v1

    new-instance v2, Ln1/c$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Ln1/c$c;-><init>(Ln1/c;Ljava/lang/String;Ln1/c$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Ln1/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/c$b;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-static {v4}, Ln1/c$b;->a(Ln1/c$b;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v3, v0, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 5
    iget-object v6, p0, Ln1/c;->d:Landroid/graphics/Paint;

    invoke-static {v4}, Ln1/c$b;->b(Ln1/c$b;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    invoke-static {v4}, Ln1/c$b;->b(Ln1/c$b;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 7
    invoke-static {v4}, Ln1/c$b;->c(Ln1/c$b;)I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {v4}, Ln1/c$b;->d(Ln1/c$b;)I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-eqz v6, :cond_2

    .line 8
    invoke-static {v4}, Ln1/c$b;->e(Ln1/c$b;)Landroid/graphics/Paint$Align;

    move-result-object v6

    .line 9
    iget-object v7, p0, Ln1/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 10
    iget-object v7, p0, Ln1/c;->d:Landroid/graphics/Paint;

    invoke-static {v4}, Ln1/c$b;->c(Ln1/c$b;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    iget-object v7, p0, Ln1/c;->d:Landroid/graphics/Paint;

    invoke-static {v4}, Ln1/c$b;->d(Ln1/c$b;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-static {v4}, Ln1/c$b;->a(Ln1/c$b;)I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v7

    invoke-static {v4}, Ln1/c$b;->c(Ln1/c$b;)I

    move-result v7

    shr-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    .line 13
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v6, v7, :cond_0

    .line 14
    invoke-static {v4}, Ln1/c$b;->f(Ln1/c$b;)Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x41200000    # 10.0f

    int-to-float v3, v3

    iget-object v7, p0, Ln1/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 15
    :cond_0
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v6, v7, :cond_1

    .line 16
    invoke-static {v4}, Ln1/c$b;->f(Ln1/c$b;)Ljava/lang/String;

    move-result-object v4

    shr-int/lit8 v6, v0, 0x1

    int-to-float v6, v6

    int-to-float v3, v3

    iget-object v7, p0, Ln1/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {v4}, Ln1/c$b;->f(Ln1/c$b;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v0, -0xa

    int-to-float v6, v6

    int-to-float v3, v3

    iget-object v7, p0, Ln1/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v3, v5

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln1/c;->f:Ljava/lang/String;

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    new-instance v0, Ln1/c$a;

    invoke-direct {v0, p0}, Ln1/c$a;-><init>(Ln1/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
