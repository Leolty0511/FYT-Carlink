.class public Lc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/g$b;
    }
.end annotation


# static fields
.field public static i:Lc/g;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/Toast;

.field public c:Landroid/widget/TextView;

.field public d:Lc/g$b;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/g;->d:Lc/g$b;

    .line 3
    iput-object v0, p0, Lc/g;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/g;->f:Z

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/g;->g:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Lc/g$a;

    invoke-direct {v0, p0}, Lc/g$a;-><init>(Lc/g;)V

    iput-object v0, p0, Lc/g;->h:Ljava/lang/Runnable;

    .line 7
    iput-object p1, p0, Lc/g;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lc/g;->d()V

    return-void
.end method

.method public static g(Landroid/content/Context;)Lc/g;
    .locals 1

    .line 1
    sget-object v0, Lc/g;->i:Lc/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/g;

    invoke-direct {v0, p0}, Lc/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc/g;->i:Lc/g;

    .line 3
    :cond_0
    sget-object p0, Lc/g;->i:Lc/g;

    return-object p0
.end method


# virtual methods
.method public a(Lc/g$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/g;->g:Landroid/util/SparseArray;

    iget-object v1, p1, Lc/g$b;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public c(IIIF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 3
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 4
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public d()V
    .locals 14

    .line 1
    sget-object v0, La/b;->j:Ljava/lang/String;

    .line 2
    invoke-static {}, Lo1/u;->Q()Z

    move-result v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 4
    new-instance v4, Lc/g$b;

    sget-object v5, La/b;->p:Ljava/lang/String;

    invoke-direct {v4, v3, v2, v0, v5}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lc/g;->a(Lc/g$b;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v4, Lc/g$b;

    sget-object v5, La/b;->o:Ljava/lang/String;

    sget-object v6, La/b;->p:Ljava/lang/String;

    invoke-direct {v4, v3, v2, v5, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lc/g;->a(Lc/g$b;)V

    .line 6
    :goto_0
    new-instance v3, Lc/g$b;

    const/4 v4, 0x2

    sget-object v5, La/b;->k:Ljava/lang/String;

    sget-object v6, La/b;->l:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v2, v7, v5, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lc/g;->a(Lc/g$b;)V

    const/16 v2, 0x8

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lc/g$b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "com.syu.btav"

    invoke-direct {v1, v4, v5, v0, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/g;->a(Lc/g$b;)V

    .line 8
    new-instance v1, Lc/g$b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, La/b;->z:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0, v4}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/g;->a(Lc/g$b;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lc/g$b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, La/b;->k:Ljava/lang/String;

    sget-object v13, La/b;->l:Ljava/lang/String;

    const-string v12, "com.syu.bt.act.ActBtAvStart"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/g;->a(Lc/g$b;)V

    .line 10
    new-instance v0, Lc/g$b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, La/b;->y:Ljava/lang/String;

    sget-object v4, La/b;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/g;->a(Lc/g$b;)V

    :goto_1
    const/4 v0, 0x4

    .line 11
    new-instance v1, Lc/g$b;

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, La/b;->A:Ljava/lang/String;

    sget-object v5, La/b;->B:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4, v5}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/g;->a(Lc/g$b;)V

    .line 12
    new-instance v0, Lc/g$b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Navi"

    invoke-direct {v0, v1, v7, v2, v2}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/g;->a(Lc/g$b;)V

    return-void
.end method

.method public final e(Lc/g$b;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lc/g$b;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lo1/u;->b(I)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lc/g$b;->c:Ljava/lang/String;

    const-string v1, "Home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lc/g$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lc/e;->c(I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p1, Lc/g$b;->c:Ljava/lang/String;

    const-string v1, "Navi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lc/g$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Lu0/b;->J1:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->J0(Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p1, Lc/g$b;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object p1, p1, Lc/g$b;->e:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p1, Lc/g$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object p1, p1, Lc/g$b;->c:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->J0(Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public final f(Ljava/lang/String;I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lc/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_a

    .line 2
    iget-object v4, p0, Lc/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/g$b;

    .line 3
    iget-object v5, v4, Lc/g$b;->d:Ljava/lang/String;

    invoke-static {v5}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget-object v5, v4, Lc/g$b;->c:Ljava/lang/String;

    invoke-static {v5}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4
    invoke-virtual {p0, v4}, Lc/g;->j(Lc/g$b;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x2

    goto :goto_3

    :cond_0
    move v7, v1

    goto :goto_3

    .line 5
    :cond_1
    iget-object v5, v4, Lc/g$b;->c:Ljava/lang/String;

    invoke-static {v5}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 6
    iget-object v5, v4, Lc/g$b;->c:Ljava/lang/String;

    const-string v7, "Navi"

    .line 7
    invoke-static {v5, v7}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    sget-object v5, Lu0/b;->J1:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v7, v4, Lc/g$b;->c:Ljava/lang/String;

    const-string v8, "Home"

    invoke-static {v7, v8}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    invoke-static {p1}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, p1

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    if-eqz v5, :cond_0

    move v7, v6

    goto :goto_3

    :cond_5
    move v5, v1

    move v7, v5

    :goto_3
    if-eqz v5, :cond_7

    .line 12
    iget-object v5, v4, Lc/g$b;->b:Ljava/lang/Integer;

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p2, :cond_7

    goto :goto_4

    :cond_7
    move v6, v1

    :goto_4
    if-nez v6, :cond_8

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v7, 0x1

    :goto_5
    if-eqz v6, :cond_9

    if-ltz v7, :cond_9

    move-object v2, v4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    if-nez v2, :cond_b

    const/4 p1, -0x1

    goto :goto_6

    .line 13
    :cond_b
    iget-object p1, v2, Lc/g$b;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_6
    return p1
.end method

.method public final h(Lc/g$b;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lc/g$b;->c:Ljava/lang/String;

    const-string v2, "Navi"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Home"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p1, Lc/g$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v1, Lu0/b;->J1:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p1, Lc/g$b;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lc/g$b;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v5

    .line 6
    :goto_1
    :try_start_0
    iget-object v2, p1, Lc/g$b;->d:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 8
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    new-instance v5, Landroid/content/ComponentName;

    iget-object p1, p1, Lc/g$b;->d:Ljava/lang/String;

    invoke-direct {v5, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "android.intent.category.LAUNCHER"

    .line 10
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 14
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2, v0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 16
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_3

    move-object v4, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v4, v2

    goto :goto_4

    :cond_3
    move-object v4, v2

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 17
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    :cond_5
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 20
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_5
    return-object v4
.end method

.method public i()Z
    .locals 8

    .line 1
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lc/f;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------->> handleMode smodes.size() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Home"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lc/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_7

    .line 4
    iget-object v4, p0, Lc/g;->d:Lc/g$b;

    if-nez v4, :cond_2

    .line 5
    sget v4, Lu0/b;->D:I

    .line 6
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----------->> topApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, v5, v4}, Lc/g;->f(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, v4, Lc/g$b;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    const/4 v4, 0x0

    .line 10
    iput-object v4, p0, Lc/g;->e:Ljava/lang/String;

    .line 11
    :cond_3
    iget-object v4, p0, Lc/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_4

    move v2, v3

    .line 12
    :cond_4
    iget-object v4, p0, Lc/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/g$b;

    iput-object v4, p0, Lc/g;->d:Lc/g$b;

    .line 13
    invoke-virtual {p0, v4}, Lc/g;->h(Lc/g$b;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc/g;->e:Ljava/lang/String;

    add-int/2addr v2, v1

    .line 14
    iget-object v4, p0, Lc/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v2, v4, :cond_5

    move v2, v3

    .line 15
    :cond_5
    iget-object v4, p0, Lc/g;->e:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-eqz v4, :cond_7

    .line 16
    iget-boolean v1, p0, Lc/g;->f:Z

    if-eqz v1, :cond_6

    .line 17
    invoke-static {}, La/f;->n()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lc/g;->h:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {p0}, Lc/g;->run()V

    :cond_7
    :goto_2
    return v0
.end method

.method public j(Lc/g$b;)Z
    .locals 5

    .line 1
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lc/g$b;->c:Ljava/lang/String;

    .line 3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lc/g$b;->d:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 6
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 10
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 11
    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lc/g;->e:Ljava/lang/String;

    .line 12
    iget-object p1, p1, Lc/g$b;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    return v1
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/g;->f:Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/g;->b:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3
    iput-object v1, p0, Lc/g;->b:Landroid/widget/Toast;

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============>>> to mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/g;->d:Lc/g$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Home"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lc/g;->d:Lc/g$b;

    invoke-virtual {p0, v0}, Lc/g;->e(Lc/g$b;)V

    .line 6
    iput-object v1, p0, Lc/g;->d:Lc/g$b;

    return-void
.end method
