.class public abstract Landroid/app/LauncherActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LauncherActivity$IconResizer;,
        Landroid/app/LauncherActivity$ActivityAdapter;,
        Landroid/app/LauncherActivity$ListItem;
    }
.end annotation


# instance fields
.field public mIconResizer:Landroid/app/LauncherActivity$IconResizer;

.field public mIntent:Landroid/content/Intent;

.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private updateAlertTitle()V
    .locals 2

    const v0, 0x1020280

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateButtonText()V
    .locals 2

    const v0, 0x1020019

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/app/LauncherActivity$1;

    invoke-direct {v1, p0}, Landroid/app/LauncherActivity$1;-><init>(Landroid/app/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTargetIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/app/LauncherActivity$ActivityAdapter;

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/LauncherActivity$ActivityAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public itemForPosition(I)Landroid/app/LauncherActivity$ListItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/app/LauncherActivity$ActivityAdapter;

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/LauncherActivity$ActivityAdapter;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object p1

    return-object p1
.end method

.method public makeListItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->onSortResultList(Ljava/util/List;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 6
    new-instance v5, Landroid/app/LauncherActivity$ListItem;

    iget-object v6, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Landroid/app/LauncherActivity$ListItem;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/app/LauncherActivity$IconResizer;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, 0x5

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/LauncherActivity;->onSetContentView()V

    .line 6
    new-instance v0, Landroid/app/LauncherActivity$IconResizer;

    invoke-direct {v0, p0}, Landroid/app/LauncherActivity$IconResizer;-><init>(Landroid/app/LauncherActivity;)V

    iput-object v0, p0, Landroid/app/LauncherActivity;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    new-instance v0, Landroid/app/LauncherActivity$ActivityAdapter;

    iget-object v1, p0, Landroid/app/LauncherActivity;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    invoke-direct {v0, p0, v1}, Landroid/app/LauncherActivity$ActivityAdapter;-><init>(Landroid/app/LauncherActivity;Landroid/app/LauncherActivity$IconResizer;)V

    iput-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 12
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    .line 13
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateButtonText()V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public onEvaluateShowIcons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onSetContentView()V
    .locals 1

    const v0, 0x1090021

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public onSortResultList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v1, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 4
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    return-void
.end method
