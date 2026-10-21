.class public Landroid/widget/TableRow;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableRow$ChildrenTracker;,
        Landroid/widget/TableRow$LayoutParams;
    }
.end annotation


# instance fields
.field private mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

.field private mColumnToChildIndex:Landroid/util/SparseIntArray;

.field private mColumnWidths:[I

.field private mConstrainedColumnWidths:[I

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 3
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 6
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    return-void
.end method

.method public static synthetic access$302(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 0

    iput-object p1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method private initTableRow()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2
    .line 3
    new-instance v1, Landroid/widget/TableRow$ChildrenTracker;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;Landroid/widget/TableRow$1;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/widget/TableRow$ChildrenTracker;->access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    .line 17
    .line 18
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private mapIndexAndColumns()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    if-ge v3, v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 30
    .line 31
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 32
    .line 33
    if-lt v6, v4, :cond_0

    .line 34
    .line 35
    move v4, v6

    .line 36
    :cond_0
    move v6, v2

    .line 37
    :goto_1
    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 38
    .line 39
    if-ge v6, v7, :cond_1

    .line 40
    .line 41
    add-int/lit8 v7, v4, 0x1

    .line 42
    .line 43
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    move v4, v7

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iput v4, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 54
    .line 55
    :cond_3
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/widget/TableRow$LayoutParams;

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TableRow;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 5
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;
    .locals 2

    .line 4
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TableRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/TableRow$LayoutParams;

    .line 6
    .line 7
    iget p1, p1, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    return p1
.end method

.method public getColumnsWidths(II)[I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    new-array v1, v0, [I

    .line 13
    .line 14
    iput-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 15
    .line 16
    :cond_1
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v0, :cond_6

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-eqz v4, :cond_5

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    if-eq v5, v6, :cond_5

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 41
    .line 42
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    if-ne v6, v7, :cond_4

    .line 46
    .line 47
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    .line 49
    const/4 v7, -0x2

    .line 50
    if-eq v6, v7, :cond_3

    .line 51
    .line 52
    const/4 v7, -0x1

    .line 53
    if-eq v6, v7, :cond_2

    .line 54
    .line 55
    const/high16 v7, 0x40000000    # 2.0f

    .line 56
    .line 57
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {p1, v2, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    :goto_1
    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 83
    .line 84
    add-int/2addr v4, v6

    .line 85
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 86
    .line 87
    add-int/2addr v4, v5

    .line 88
    aput v4, v1, v3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    aput v2, v1, v3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    aput v2, v1, v3

    .line 95
    .line 96
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    return-object v1
.end method

.method public getLocationOffset(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow$LayoutParams;

    invoke-static {p1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public getNextLocationOffset(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow$LayoutParams;

    invoke-static {p1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 9
    .line 10
    return v0
.end method

.method public measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    check-cast p3, Landroid/widget/TableRow$LayoutParams;

    .line 10
    .line 11
    iget p4, p3, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v2, p4, :cond_0

    .line 19
    .line 20
    add-int v4, p2, v2

    .line 21
    .line 22
    aget v4, v0, v4

    .line 23
    .line 24
    add-int/2addr v3, v4

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget p2, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 29
    .line 30
    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    const/high16 v0, -0x80000000

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 40
    .line 41
    :goto_1
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 42
    .line 43
    sub-int v2, v3, v2

    .line 44
    .line 45
    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 46
    .line 47
    sub-int/2addr v2, v4

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 57
    .line 58
    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 59
    .line 60
    add-int/2addr v2, v4

    .line 61
    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    .line 63
    add-int/2addr v2, v4

    .line 64
    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 65
    .line 66
    add-int/2addr v2, v4

    .line 67
    add-int/2addr v2, p6

    .line 68
    iget p6, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    .line 70
    invoke-static {p5, v2, p6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 71
    .line 72
    .line 73
    move-result p5

    .line 74
    invoke-virtual {p1, v0, p5}, Landroid/view/View;->measure(II)V

    .line 75
    .line 76
    .line 77
    const/4 p5, 0x1

    .line 78
    if-eqz p4, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    sub-int/2addr v3, p1

    .line 89
    aput v3, p4, p5

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-static {p2, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    and-int/lit8 p1, p1, 0x7

    .line 100
    .line 101
    if-eq p1, p5, :cond_3

    .line 102
    .line 103
    const/4 p2, 0x5

    .line 104
    if-eq p1, p2, :cond_2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    aget p2, p2, p5

    .line 116
    .line 117
    aput p2, p1, v1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    aget p2, p2, p5

    .line 129
    .line 130
    div-int/lit8 p2, p2, 0x2

    .line 131
    .line 132
    aput p2, p1, v1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    aput v1, p2, p5

    .line 144
    .line 145
    aput v1, p1, v1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 149
    .line 150
    .line 151
    :goto_2
    return-void
.end method

.method public measureNullChild(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    aget p1, v0, p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    return-void
.end method

.method public setColumnCollapsed(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/16 p2, 0x8

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public setColumnsWidthConstraints([I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "columnWidths should be >= getVirtualChildCount()"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v0, p1}, Landroid/widget/TableRow$ChildrenTracker;->access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
