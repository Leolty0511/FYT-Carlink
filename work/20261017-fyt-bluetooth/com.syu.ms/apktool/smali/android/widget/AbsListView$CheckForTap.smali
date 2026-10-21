.class final Landroid/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckForTap"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3
    iget v2, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6
    iget-boolean v3, v2, Landroid/widget/AdapterView;->mDataChanged:Z

    const/4 v4, 0x2

    if-nez v3, :cond_4

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 8
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 9
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 10
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v2, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 11
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 12
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 13
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    .line 14
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    instance-of v3, v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    .line 17
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 18
    :cond_0
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v1

    if-nez v1, :cond_2

    .line 20
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    new-instance v2, Landroid/widget/AbsListView$CheckForLongPress;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    invoke-static {v1, v2}, Landroid/widget/AbsListView;->access$702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;

    .line 21
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 22
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 23
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v4, v0, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1

    .line 24
    :cond_4
    iput v4, v2, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_5
    :goto_1
    return-void
.end method
