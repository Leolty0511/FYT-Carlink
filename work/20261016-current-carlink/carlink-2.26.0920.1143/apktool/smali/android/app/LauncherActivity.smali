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
.field mIconResizer:Landroid/app/LauncherActivity$IconResizer;

.field mIntent:Landroid/content/Intent;

.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private updateAlertTitle()V
    .locals 2

    .line 1
    const v0, 0x102019b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private updateButtonText()V
    .locals 2

    .line 1
    const v0, 0x1020019

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/Button;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/app/LauncherActivity$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Landroid/app/LauncherActivity$1;-><init>(Landroid/app/LauncherActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public getTargetIntent()Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    check-cast v0, Landroid/app/LauncherActivity$ActivityAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/app/LauncherActivity$ActivityAdapter;->intentForPosition(I)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public itemForPosition(I)Landroid/app/LauncherActivity$ListItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    check-cast v0, Landroid/app/LauncherActivity$ActivityAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/app/LauncherActivity$ActivityAdapter;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
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

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->onSortResultList(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 31
    .line 32
    new-instance v5, Landroid/app/LauncherActivity$ListItem;

    .line 33
    .line 34
    iget-object v6, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-direct {v5, v6, v4, v7}, Landroid/app/LauncherActivity$ListItem;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/app/LauncherActivity$IconResizer;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    const-string v0, "android.hardware.type.watch"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x5

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/app/LauncherActivity;->onSetContentView()V

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroid/app/LauncherActivity$IconResizer;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Landroid/app/LauncherActivity$IconResizer;-><init>(Landroid/app/LauncherActivity;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroid/app/LauncherActivity;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    .line 35
    .line 36
    new-instance p1, Landroid/content/Intent;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getTargetIntent()Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroid/app/LauncherActivity$ActivityAdapter;

    .line 52
    .line 53
    iget-object v2, p0, Landroid/app/LauncherActivity;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    .line 54
    .line 55
    invoke-direct {p1, p0, v2}, Landroid/app/LauncherActivity$ActivityAdapter;-><init>(Landroid/app/LauncherActivity;Landroid/app/LauncherActivity$IconResizer;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateButtonText()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_1

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 86
    .line 87
    .line 88
    :cond_1
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

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
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

    iget-object v0, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onSetContentView()V
    .locals 1

    const v0, 0x1090025

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
