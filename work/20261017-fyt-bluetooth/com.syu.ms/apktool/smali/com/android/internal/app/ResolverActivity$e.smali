.class public final Lcom/android/internal/app/ResolverActivity$e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:[Landroid/content/Intent;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/pm/ResolveInfo;

.field public final d:Landroid/content/Intent;

.field public final e:I

.field public final f:Landroid/view/LayoutInflater;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public final synthetic j:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/internal/app/ResolverActivity$e;->i:I

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$e;->d:Landroid/content/Intent;

    .line 4
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$e;->a:[Landroid/content/Intent;

    .line 5
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$e;->b:Ljava/util/List;

    .line 6
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$e;->e:I

    const-string p1, "layout_inflater"

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$e;->f:Landroid/view/LayoutInflater;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$e;->e()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverActivity$f;

    .line 2
    iget-object v0, p1, Lcom/android/internal/app/ResolverActivity$f;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/internal/app/ResolverActivity$b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->e(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/android/internal/app/ResolverActivity$f;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p1, Lcom/android/internal/app/ResolverActivity$f;->b:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$b;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/android/internal/app/ResolverActivity$f;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$b;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/android/internal/app/ResolverActivity$d;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$d;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/internal/app/ResolverActivity$b;

    aput-object p2, v2, v1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity$f;->c:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/android/internal/app/ResolverActivity$b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$e;->i:I

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$e;->getCount()I

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$e;->e()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$e;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$e;->c:Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p2, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$e;->c:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object p2, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ResolverActivity$e;->i:I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    new-instance p2, Lcom/android/internal/app/ResolverActivity$b;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$b;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->f(Lcom/android/internal/app/ResolverActivity;Z)Z

    const/4 v0, 0x0

    .line 5
    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->d(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p4

    if-nez p4, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_6

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-virtual {v2, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p2, 0x1

    :goto_0
    if-gt p4, p3, :cond_4

    .line 8
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 9
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->d(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 12
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    move v0, v1

    :cond_6
    :goto_2
    if-gt p2, p3, :cond_9

    .line 13
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 14
    iget-object p4, p0, Lcom/android/internal/app/ResolverActivity$e;->c:Landroid/content/pm/ResolveInfo;

    if-eqz p4, :cond_7

    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p4, p0, Lcom/android/internal/app/ResolverActivity$e;->c:Landroid/content/pm/ResolveInfo;

    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 15
    iget-object p4, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    iput p4, p0, Lcom/android/internal/app/ResolverActivity$e;->i:I

    :cond_7
    if-eqz v0, :cond_8

    .line 16
    iget-object p4, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$b;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$b;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_8
    iget-object p4, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$b;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->d(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$b;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method public final e()V
    .locals 14

    const-string v0, "ResolverActivity"

    const/high16 v1, 0x10000

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$e;->d:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->c:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->b:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    goto :goto_3

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->d(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$e;->d:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->c(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x40

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    or-int/2addr v1, v6

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_2
    if-ltz v1, :cond_4

    .line 8
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 9
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/app/ResolverActivity$e;->e:I

    iget-object v8, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v5, Landroid/content/pm/ComponentInfo;->exported:Z

    invoke-static {v6, v7, v8, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    if-ne v5, v2, :cond_2

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    .line 12
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_12

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 14
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    move v6, v4

    :goto_4
    if-ge v6, v1, :cond_8

    .line 15
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 16
    iget v8, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v9, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v8, v9, :cond_5

    iget-boolean v8, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v8, v7, :cond_7

    :cond_5
    :goto_5
    if-ge v6, v1, :cond_7

    .line 17
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    if-ne v7, v2, :cond_6

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    .line 19
    :cond_6
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    if-le v1, v4, :cond_9

    .line 20
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->d(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 21
    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 22
    :cond_9
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$e;->a:[Landroid/content/Intent;

    if-eqz v5, :cond_d

    move v5, v3

    .line 23
    :goto_6
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$e;->a:[Landroid/content/Intent;

    array-length v7, v6

    if-ge v5, v7, :cond_d

    .line 24
    aget-object v13, v6, v5

    if-nez v13, :cond_a

    goto :goto_7

    .line 25
    :cond_a
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v13, v6, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_b

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 27
    :cond_b
    new-instance v10, Landroid/content/pm/ResolveInfo;

    invoke-direct {v10}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 28
    iput-object v6, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 29
    instance-of v6, v13, Landroid/content/pm/LabeledIntent;

    if-eqz v6, :cond_c

    .line 30
    move-object v6, v13

    check-cast v6, Landroid/content/pm/LabeledIntent;

    .line 31
    invoke-virtual {v6}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 32
    invoke-virtual {v6}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v7

    iput v7, v10, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 33
    invoke-virtual {v6}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v10, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v6}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v6

    iput v6, v10, Landroid/content/pm/ResolveInfo;->icon:I

    .line 35
    :cond_c
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$b;

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity$b;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 36
    :cond_d
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 37
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->d(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 38
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v6, v3}, Lcom/android/internal/app/ResolverActivity;->f(Lcom/android/internal/app/ResolverActivity;Z)Z

    move-object v9, v0

    move v7, v3

    move v0, v4

    move-object v10, v5

    :goto_8
    if-ge v0, v1, :cond_11

    if-nez v10, :cond_e

    .line 39
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v10, v3

    .line 40
    :cond_e
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 41
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->d(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_f

    .line 42
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    :cond_f
    move-object v11, v5

    .line 43
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v8, v0, -0x1

    move-object v5, p0

    move-object v6, v2

    .line 44
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/app/ResolverActivity$e;->d(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    move v7, v0

    move-object v9, v3

    move-object v10, v11

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    add-int/lit8 v8, v1, -0x1

    move-object v5, p0

    move-object v6, v2

    .line 45
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/app/ResolverActivity$e;->d(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public f(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverActivity$b;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity$b;->a:Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity$e;->f:Landroid/view/LayoutInflater;

    const v0, 0x1090087

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/android/internal/app/ResolverActivity$f;

    invoke-direct {p3, p2}, Lcom/android/internal/app/ResolverActivity$f;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p3, Lcom/android/internal/app/ResolverActivity$f;->c:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$e;->j:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->g(Lcom/android/internal/app/ResolverActivity;)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverActivity$b;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ResolverActivity$e;->a(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$b;)V

    return-object p2
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverActivity$b;

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/internal/app/ResolverActivity$b;->e:Landroid/content/Intent;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$e;->d:Landroid/content/Intent;

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x3000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity$b;->a:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method
