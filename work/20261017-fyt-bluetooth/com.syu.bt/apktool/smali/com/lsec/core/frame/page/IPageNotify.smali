.class public interface abstract Lcom/lsec/core/frame/page/IPageNotify;
.super Ljava/lang/Object;
.source "IPageNotify.java"


# virtual methods
.method public abstract AppClick(Lcom/lsec/core/frame/ctrl/JListApp;Landroid/content/pm/ResolveInfo;)V
.end method

.method public abstract GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
.end method

.method public abstract GridLongClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
.end method

.method public abstract GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V
.end method

.method public abstract InitAppGridView(Landroid/widget/GridView;)V
.end method

.method public abstract InitAppItem(Lcom/lsec/core/frame/ctrl/JListApp;Lcom/lsec/core/frame/ctrl/JPage;Landroid/content/pm/ResolveInfo;)V
.end method

.method public abstract InitChildItem(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
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
.end method

.method public abstract InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
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
.end method

.method public abstract InitGroupItem(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;ZI)V
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
.end method

.method public abstract ItemExPressed(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Z)V
.end method

.method public abstract ListExChildClick(Lcom/lsec/core/frame/ctrl/JListViewEx;)V
.end method

.method public abstract LoadGridItemWhenPullDown(Lcom/lsec/core/frame/ctrl/JGridView;)V
.end method

.method public abstract LoadGridItemWhenPullUp(Lcom/lsec/core/frame/ctrl/JGridView;)V
.end method

.method public abstract ResponseClick(Landroid/view/View;)V
.end method

.method public abstract ResponseLongClick(Landroid/view/View;)Z
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract init()V
.end method

.method public abstract listAppPressed(Lcom/lsec/core/frame/ctrl/JListApp;Lcom/lsec/core/frame/ctrl/JPage;Z)V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onKeyCodeBack()Z
.end method

.method public abstract onSizeChanged(IIII)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setPressed(Lcom/lsec/core/frame/ctrl/JButton;Z)V
.end method

.method public abstract touchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract viewPageNext(Landroid/support/v4/view/ViewPager;)V
.end method

.method public abstract viewPageNext(Lcom/lsec/core/frame/ctrl/JViewPagerVertical;)V
.end method

.method public abstract viewPagePrev(Landroid/support/v4/view/ViewPager;)V
.end method

.method public abstract viewPagePrev(Lcom/lsec/core/frame/ctrl/JViewPagerVertical;)V
.end method

.method public abstract viewPageScrolled(Landroid/support/v4/view/ViewPager;)V
.end method

.method public abstract viewPageScrolled(Lcom/lsec/core/frame/ctrl/JViewPagerVertical;)V
.end method
