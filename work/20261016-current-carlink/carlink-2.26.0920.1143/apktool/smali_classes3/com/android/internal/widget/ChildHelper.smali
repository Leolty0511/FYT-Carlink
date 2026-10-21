.class Lcom/android/internal/widget/ChildHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ChildHelper$Callback;,
        Lcom/android/internal/widget/ChildHelper$Bucket;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChildrenHelper"


# instance fields
.field final mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

.field final mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

.field final mHiddenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ChildHelper$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 5
    .line 6
    new-instance p1, Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/android/internal/widget/ChildHelper$Bucket;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method private getOffset(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    move v2, p1

    .line 12
    :goto_0
    if-ge v2, v1, :cond_3

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sub-int v3, v2, v3

    .line 21
    .line 22
    sub-int v3, p1, v3

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    :goto_1
    iget-object p1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ChildHelper$Bucket;->get(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    return v2

    .line 38
    :cond_2
    add-int/2addr v2, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    return v0
.end method

.method private hideViewInternal(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->onEnteredHiddenState(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private unhideViewInternal(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method


# virtual methods
.method public addView(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    invoke-interface {p2}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ChildHelper;->getOffset(I)I

    move-result p2

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p3, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    invoke-interface {p3, p1, p2}, Lcom/android/internal/widget/ChildHelper$Callback;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ChildHelper;->getOffset(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 15
    .line 16
    invoke-virtual {v0, p2, p4}, Lcom/android/internal/widget/ChildHelper$Bucket;->insert(IZ)V

    .line 17
    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p4, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 25
    .line 26
    invoke-interface {p4, p1, p2, p3}, Lcom/android/internal/widget/ChildHelper$Callback;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->getOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper$Bucket;->remove(I)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->detachViewFromParent(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public findHiddenNonRemovedView(I)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/view/View;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 19
    .line 20
    invoke-interface {v3, v2}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v4, p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->getOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getChildCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    invoke-interface {v0}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUnfilteredChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getUnfilteredChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    invoke-interface {v0}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildCount()I

    move-result v0

    return v0
.end method

.method public hide(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->set(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "view is not a child, cannot hide "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper$Bucket;->get(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sub-int/2addr p1, v0

    .line 27
    return p1
.end method

.method public isHidden(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAllViewsUnfiltered()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :goto_0
    if-ltz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/view/View;

    .line 25
    .line 26
    invoke-interface {v1, v2}, Lcom/android/internal/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/android/internal/widget/ChildHelper$Callback;->removeAllViews()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->remove(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/android/internal/widget/ChildHelper$Callback;->removeViewAt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->getOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper$Bucket;->remove(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->removeViewAt(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public removeViewIfHidden(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->get(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->remove(I)Z

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/android/internal/widget/ChildHelper$Callback;->removeViewAt(I)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unhide(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper;->mCallback:Lcom/android/internal/widget/ChildHelper$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->get(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper;->mBucket:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->clear(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "trying to unhide a view that was not hidden"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "view is not a child, cannot hide "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method
