.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$d;,
        Lcom/android/internal/app/ResolverActivity$c;,
        Lcom/android/internal/app/ResolverActivity$f;,
        Lcom/android/internal/app/ResolverActivity$e;,
        Lcom/android/internal/app/ResolverActivity$b;
    }
.end annotation


# instance fields
.field public c:I

.field public d:Lcom/android/internal/app/ResolverActivity$e;

.field public e:Landroid/content/pm/PackageManager;

.field public f:Z

.field public g:Z

.field public h:Landroid/widget/ListView;

.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public final p:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->n:I

    .line 3
    new-instance v0, Lcom/android/internal/app/ResolverActivity$a;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$a;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->p:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method public static synthetic b(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/internal/app/ResolverActivity;->f:Z

    return p0
.end method

.method public static synthetic d(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->e:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static synthetic e(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/internal/app/ResolverActivity;->g:Z

    return p0
.end method

.method public static synthetic f(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->g:Z

    return p1
.end method

.method public static synthetic g(Lcom/android/internal/app/ResolverActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/app/ResolverActivity;->l:I

    return p0
.end method


# virtual methods
.method public h(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->k:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public i(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->h(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->e:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->h(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ResolverActivity"

    const-string v2, "Couldn\'t find resources for package"

    .line 5
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final j()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public k(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const v0, 0x103031d

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 2
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->c:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->c:I

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->e:Landroid/content/pm/PackageManager;

    .line 6
    iput-boolean p6, p0, Lcom/android/internal/app/ResolverActivity;->f:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0042

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->m:I

    .line 8
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->b:Lcom/android/internal/app/AlertController$b;

    .line 9
    iput-object p3, p1, Lcom/android/internal/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 10
    iget-object p3, p0, Lcom/android/internal/app/ResolverActivity;->p:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, p0, v0, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/android/internal/app/ResolverActivity;->o:Z

    const-string v0, "activity"

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 13
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->k:I

    .line 14
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->l:I

    .line 15
    new-instance v0, Lcom/android/internal/app/ResolverActivity$e;

    iget v8, p0, Lcom/android/internal/app/ResolverActivity;->c:I

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$e;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    .line 16
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$e;->getCount()I

    move-result p2

    .line 17
    iget p4, p0, Lcom/android/internal/app/ResolverActivity;->c:I

    if-ltz p4, :cond_6

    invoke-static {p4}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result p4

    if-eqz p4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-le p2, p3, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p4, 0x1090088

    const/4 p5, 0x0

    invoke-virtual {p2, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/app/AlertController$b;->v:Landroid/view/View;

    const p1, 0x1020314

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    .line 20
    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    new-instance p2, Lcom/android/internal/app/ResolverActivity$c;

    invoke-direct {p2, p0}, Lcom/android/internal/app/ResolverActivity$c;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    if-eqz p6, :cond_3

    .line 23
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_1

    :cond_1
    if-ne p2, p3, :cond_2

    .line 24
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$e;->intentForPosition(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 25
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->p:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->o:Z

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x10403ff

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/app/AlertController$b;->h:Ljava/lang/CharSequence;

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->a()V

    if-eqz p6, :cond_5

    const p1, 0x1020291

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x1020315

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity;->i:Landroid/widget/Button;

    const p2, 0x1020316

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->j:Landroid/widget/Button;

    goto :goto_2

    .line 34
    :cond_4
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->f:Z

    .line 35
    :goto_2
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$e;->b()I

    move-result v3

    if-ltz v3, :cond_5

    .line 36
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    invoke-virtual {p1, v3, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_5
    return-void

    .line 38
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public l(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->f:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.category.DEFAULT"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 9
    iget v2, p1, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int/2addr v2, v3

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v8, "ResolverActivity"

    const/high16 v5, 0x600000

    if-ne v2, v5, :cond_2

    .line 11
    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 12
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 13
    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    :cond_2
    :goto_1
    if-eqz v3, :cond_a

    .line 14
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    if-ne v2, v5, :cond_3

    .line 15
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "file"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "content"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 16
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 17
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_5

    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PatternMatcher;

    .line 21
    invoke-virtual {v6, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 22
    invoke-virtual {v6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 23
    :cond_5
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 24
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter$AuthorityEntry;

    .line 26
    invoke-virtual {v5, v3}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 27
    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v2

    .line 28
    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-ltz v2, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v0, v5, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_8
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 30
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-eqz v2, :cond_a

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 33
    invoke-virtual {v3, v2}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 34
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_a
    if-eqz v0, :cond_e

    .line 35
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 36
    new-array v2, v1, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    move v6, v3

    :goto_2
    if-ge v3, v1, :cond_c

    .line 37
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    iget-object v4, v4, Lcom/android/internal/app/ResolverActivity$e;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 38
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v9, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v3

    .line 39
    iget v4, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-le v4, v6, :cond_b

    move v6, v4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    if-eqz p3, :cond_d

    .line 40
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v0, v6, v2, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_3

    .line 41
    :cond_d
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object v2, p2

    move-object v5, v0

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setLastChosenActivity\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_3
    if-eqz p2, :cond_f

    .line 43
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_f
    return-void
.end method

.method public m(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public n(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity$e;->f(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ResolverActivity$e;->intentForPosition(I)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->l(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    const v1, 0x1020315

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/ResolverActivity;->n(IZ)V

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->j()Landroid/content/Intent;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "android.intent.category.HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10403fa

    goto :goto_0

    :cond_0
    const v0, 0x10403f9

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->k(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, p2

    .line 2
    :goto_0
    iget-boolean p5, p0, Lcom/android/internal/app/ResolverActivity;->f:Z

    if-eqz p5, :cond_3

    if-eqz p4, :cond_1

    iget p5, p0, Lcom/android/internal/app/ResolverActivity;->n:I

    if-eq p5, p1, :cond_3

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity;->i:Landroid/widget/Button;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity;->j:Landroid/widget/Button;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p4, :cond_2

    .line 5
    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 6
    :cond_2
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->n:I

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0, p3, p2}, Lcom/android/internal/app/ResolverActivity;->n(IZ)V

    :goto_1
    return-void
.end method

.method public onRestart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->o:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->p:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->o:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->d:Lcom/android/internal/app/ResolverActivity$e;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$e;->c()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->f:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->n:I

    .line 5
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->j:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->o:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->p:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->o:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
