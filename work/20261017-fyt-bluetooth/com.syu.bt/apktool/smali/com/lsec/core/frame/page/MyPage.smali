.class public Lcom/lsec/core/frame/page/MyPage;
.super Ljava/lang/Object;
.source "MyPage.java"

# interfaces
.implements Lcom/lsec/core/frame/page/IPageNotify;


# instance fields
.field private page:Lcom/lsec/core/frame/ctrl/JPage;

.field public uiApp:Lcom/lsec/core/frame/app/MyUi;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V
    .locals 0
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "uiApp"    # Lcom/lsec/core/frame/app/MyUi;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lsec/core/frame/page/MyPage;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 24
    iput-object p2, p0, Lcom/lsec/core/frame/page/MyPage;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 25
    return-void
.end method


# virtual methods
.method public AppClick(Lcom/lsec/core/frame/ctrl/JListApp;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "listApp"    # Lcom/lsec/core/frame/ctrl/JListApp;
    .param p2, "app"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 89
    return-void
.end method

.method public GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 94
    return-void
.end method

.method public GridLongClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 99
    return-void
.end method

.method public GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 0
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "jPage"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 109
    return-void
.end method

.method public InitAppGridView(Landroid/widget/GridView;)V
    .locals 0
    .param p1, "mGridView"    # Landroid/widget/GridView;

    .prologue
    .line 54
    return-void
.end method

.method public InitAppItem(Lcom/lsec/core/frame/ctrl/JListApp;Lcom/lsec/core/frame/ctrl/JPage;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "listApp"    # Lcom/lsec/core/frame/ctrl/JListApp;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 59
    return-void
.end method

.method public InitChildItem(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 0
    .param p1, "listViewEx"    # Lcom/lsec/core/frame/ctrl/JListViewEx;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p4, "childPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JListViewEx;",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 0
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public InitGroupItem(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;ZI)V
    .locals 0
    .param p1, "listViewEx"    # Lcom/lsec/core/frame/ctrl/JListViewEx;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p4, "isExpanded"    # Z
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JListViewEx;",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public ItemExPressed(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 0
    .param p1, "listViewEx"    # Lcom/lsec/core/frame/ctrl/JListViewEx;
    .param p2, "jPage"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 114
    return-void
.end method

.method public ListExChildClick(Lcom/lsec/core/frame/ctrl/JListViewEx;)V
    .locals 0
    .param p1, "listViewEx"    # Lcom/lsec/core/frame/ctrl/JListViewEx;

    .prologue
    .line 104
    return-void
.end method

.method public LoadGridItemWhenPullDown(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 175
    return-void
.end method

.method public LoadGridItemWhenPullUp(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 180
    return-void
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    return-void
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    return-void
.end method

.method public getPage()Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lsec/core/frame/page/MyPage;->page:Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lsec/core/frame/page/MyPage;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lsec/core/frame/page/MyPage;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public listAppPressed(Lcom/lsec/core/frame/ctrl/JListApp;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 0
    .param p1, "listApp"    # Lcom/lsec/core/frame/ctrl/JListApp;
    .param p2, "jPage"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 119
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onKeyCodeBack()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 165
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public setPressed(Lcom/lsec/core/frame/ctrl/JButton;Z)V
    .locals 0
    .param p1, "jButton"    # Lcom/lsec/core/frame/ctrl/JButton;
    .param p2, "pressed"    # Z

    .prologue
    .line 49
    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 193
    return-void
.end method

.method public viewPageNext(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 129
    return-void
.end method

.method public viewPageNext(Lcom/lsec/core/frame/ctrl/JViewPagerVertical;)V
    .locals 0
    .param p1, "mPager"    # Lcom/lsec/core/frame/ctrl/JViewPagerVertical;

    .prologue
    .line 144
    return-void
.end method

.method public viewPagePrev(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 124
    return-void
.end method

.method public viewPagePrev(Lcom/lsec/core/frame/ctrl/JViewPagerVertical;)V
    .locals 0
    .param p1, "mPager"    # Lcom/lsec/core/frame/ctrl/JViewPagerVertical;

    .prologue
    .line 139
    return-void
.end method

.method public viewPageScrolled(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 134
    return-void
.end method

.method public viewPageScrolled(Lcom/lsec/core/frame/ctrl/JViewPagerVertical;)V
    .locals 0
    .param p1, "mPager"    # Lcom/lsec/core/frame/ctrl/JViewPagerVertical;

    .prologue
    .line 149
    return-void
.end method
