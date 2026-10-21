.class public Landroid/app/TabActivity;
.super Landroid/app/ActivityGroup;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    .line 9
    .line 10
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x10900f0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 5
    .line 6
    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    return-object v0
.end method

.method public onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    instance-of v0, p1, Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 2
    .line 3
    .line 4
    const v0, 0x1020012

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TabHost;

    .line 12
    .line 13
    iput-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, -0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 5
    .line 6
    .line 7
    const-string v0, "currentTab"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-gez p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    .line 39
    .line 40
    if-ltz p1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "currentTab"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 4
    iput p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    return-void
.end method
