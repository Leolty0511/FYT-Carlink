.class public Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "JListApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/JListApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRelatedListApp:Lcom/lsec/core/frame/ctrl/JListApp;

.field public start:I

.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JListApp;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JListApp;Landroid/content/Context;Ljava/util/ArrayList;Lcom/lsec/core/frame/ctrl/JListApp;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "listApp"    # Lcom/lsec/core/frame/ctrl/JListApp;
    .param p5, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/lsec/core/frame/ctrl/JListApp;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 230
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListApp;

    .line 231
    invoke-direct {p0, p2, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mPageInfos:Ljava/util/ArrayList;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->apps:Ljava/util/ArrayList;

    .line 228
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->start:I

    .line 232
    iput-object p3, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->apps:Ljava/util/ArrayList;

    .line 233
    iput p5, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->start:I

    .line 234
    invoke-virtual {p0, p4}, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->setRelatedListApp(Lcom/lsec/core/frame/ctrl/JListApp;)V

    .line 235
    return-void
.end method


# virtual methods
.method public getRelatedListApp()Lcom/lsec/core/frame/ctrl/JListApp;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mRelatedListApp:Lcom/lsec/core/frame/ctrl/JListApp;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 247
    const/4 v7, 0x0

    .line 248
    .local v7, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 249
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez p2, :cond_3

    .line 250
    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListApp;

    iget-object v8, v8, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v8, v8, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListApp;

    invoke-static {v10}, Lcom/lsec/core/frame/ctrl/JListApp;->access$0(Lcom/lsec/core/frame/ctrl/JListApp;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    .line 251
    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/app/MyUiItem;

    .line 252
    .local v2, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 257
    .end local v2    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :goto_0
    const/4 v0, 0x0

    .line 258
    .local v0, "bContainsInPageInfos":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v3, "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 269
    :goto_2
    if-nez v0, :cond_1

    .line 270
    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mRelatedListApp:Lcom/lsec/core/frame/ctrl/JListApp;

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->setListApp(Lcom/lsec/core/frame/ctrl/JListApp;)V

    .line 271
    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 272
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 273
    .local v5, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v5    # "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    :cond_1
    invoke-virtual {v7, p1}, Lcom/lsec/core/frame/ctrl/JPage;->setChildTag(I)V

    .line 278
    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mRelatedListApp:Lcom/lsec/core/frame/ctrl/JListApp;

    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JListApp;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v4

    .line 279
    .local v4, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v4, :cond_2

    .line 280
    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mRelatedListApp:Lcom/lsec/core/frame/ctrl/JListApp;

    invoke-interface {v4, v8, v7, v1}, Lcom/lsec/core/frame/page/IPageNotify;->InitAppItem(Lcom/lsec/core/frame/ctrl/JListApp;Lcom/lsec/core/frame/ctrl/JPage;Landroid/content/pm/ResolveInfo;)V

    .line 282
    :cond_2
    move-object p2, v7

    .line 283
    return-object p2

    .end local v0    # "bContainsInPageInfos":Z
    .end local v3    # "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_3
    move-object v7, p2

    .line 255
    check-cast v7, Lcom/lsec/core/frame/ctrl/JPage;

    goto :goto_0

    .line 259
    .restart local v0    # "bContainsInPageInfos":Z
    .restart local v3    # "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 260
    .local v6, "pageReferenceTmp":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_5

    .line 261
    const/4 v0, 0x1

    .line 262
    goto :goto_2

    .line 265
    :cond_5
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    .line 266
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 289
    return-void
.end method

.method public setRelatedListApp(Lcom/lsec/core/frame/ctrl/JListApp;)V
    .locals 0
    .param p1, "listApp"    # Lcom/lsec/core/frame/ctrl/JListApp;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->mRelatedListApp:Lcom/lsec/core/frame/ctrl/JListApp;

    .line 239
    return-void
.end method
