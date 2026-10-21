.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;,
        Landroid/widget/TableLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private mInitialized:Z

.field private mMaxWidths:[I

.field private mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private mShrinkAllColumns:Z

.field private mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private mStretchAllColumns:Z

.field private mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    sget-object v0, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2a

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_0

    .line 7
    iput-boolean v2, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v1, :cond_2

    .line 11
    iput-boolean v2, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v0}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    :cond_3
    :goto_1
    const/4 p2, 0x2

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    invoke-static {p2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 15
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/TableLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method private findLargestCells(II)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/16 v6, 0x8

    .line 19
    .line 20
    if-ne v5, v6, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    instance-of v5, v4, Landroid/widget/TableRow;

    .line 24
    .line 25
    if-eqz v5, :cond_5

    .line 26
    .line 27
    check-cast v4, Landroid/widget/TableRow;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v6, -0x2

    .line 34
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-virtual {v4, p1, p2}, Landroid/widget/TableRow;->getColumnsWidths(II)[I

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    array-length v5, v4

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    array-length v1, v1

    .line 48
    if-eq v1, v5, :cond_2

    .line 49
    .line 50
    :cond_1
    new-array v1, v5, [I

    .line 51
    .line 52
    iput-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 55
    .line 56
    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 57
    .line 58
    .line 59
    move v1, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 62
    .line 63
    array-length v7, v6

    .line 64
    sub-int v8, v5, v7

    .line 65
    .line 66
    if-lez v8, :cond_4

    .line 67
    .line 68
    new-array v9, v5, [I

    .line 69
    .line 70
    iput-object v9, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 71
    .line 72
    array-length v10, v6

    .line 73
    invoke-static {v6, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 74
    .line 75
    .line 76
    array-length v9, v6

    .line 77
    iget-object v10, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 78
    .line 79
    array-length v6, v6

    .line 80
    invoke-static {v4, v9, v10, v6, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 84
    .line 85
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    move v7, v2

    .line 90
    :goto_1
    if-ge v7, v5, :cond_5

    .line 91
    .line 92
    aget v8, v6, v7

    .line 93
    .line 94
    aget v9, v4, v7

    .line 95
    .line 96
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    aput v8, v6, v7

    .line 101
    .line 102
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    return-void
.end method

.method private initTableLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    :cond_2
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p0, v2}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$1;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    .line 45
    .line 46
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 47
    .line 48
    .line 49
    iput-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    .line 50
    .line 51
    return-void
.end method

.method private mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    :goto_0
    sub-int/2addr p3, p4

    .line 13
    div-int/2addr p3, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_1
    if-ge v4, p4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    instance-of v6, v5, Landroid/widget/TableRow;

    .line 27
    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-nez p2, :cond_9

    .line 37
    .line 38
    move p2, v3

    .line 39
    move p4, p2

    .line 40
    :goto_2
    if-ge p2, v2, :cond_5

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    if-ge v4, v1, :cond_3

    .line 53
    .line 54
    aget v5, v0, v4

    .line 55
    .line 56
    add-int/2addr v5, p3

    .line 57
    aput v5, v0, v4

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    add-int/lit8 p4, p4, 0x1

    .line 61
    .line 62
    :cond_4
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    if-lez p4, :cond_8

    .line 66
    .line 67
    if-ge p4, v2, :cond_8

    .line 68
    .line 69
    mul-int/2addr p3, p4

    .line 70
    sub-int p2, v2, p4

    .line 71
    .line 72
    div-int/2addr p3, p2

    .line 73
    move p2, v3

    .line 74
    :goto_4
    if-ge p2, v2, :cond_8

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 77
    .line 78
    .line 79
    move-result p4

    .line 80
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_7

    .line 85
    .line 86
    if-ge p4, v1, :cond_7

    .line 87
    .line 88
    aget v4, v0, p4

    .line 89
    .line 90
    if-le p3, v4, :cond_6

    .line 91
    .line 92
    aput v3, v0, p4

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    add-int/2addr v4, p3

    .line 96
    aput v4, v0, p4

    .line 97
    .line 98
    :cond_7
    :goto_5
    add-int/lit8 p2, p2, 0x1

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    return-void

    .line 102
    :cond_9
    :goto_6
    if-ge v3, v2, :cond_a

    .line 103
    .line 104
    aget p1, v0, v3

    .line 105
    .line 106
    add-int/2addr p1, p3

    .line 107
    aput p1, v0, v3

    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_a
    return-void
.end method

.method private static parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\\s*,\\s*"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v1, p0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    aget-object v3, p0, v2

    .line 21
    .line 22
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ltz v3, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method

.method private requestRowsLayout()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method private shrinkAndStretchColumns(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget v4, v0, v2

    .line 12
    .line 13
    add-int/2addr v3, v4

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 22
    .line 23
    sub-int/2addr p1, v0

    .line 24
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 25
    .line 26
    sub-int/2addr p1, v0

    .line 27
    if-le v3, p1, :cond_3

    .line 28
    .line 29
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_3

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 42
    .line 43
    iget-boolean v1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 44
    .line 45
    invoke-direct {p0, v0, v1, p1, v3}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    if-ge v3, p1, :cond_5

    .line 50
    .line 51
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_5

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 64
    .line 65
    iget-boolean v1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 66
    .line 67
    invoke-direct {p0, v0, v1, p1, v3}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    .line 68
    .line 69
    .line 70
    :cond_5
    :goto_1
    return-void
.end method

.method private trackCollapsedColumns(Landroid/view/View;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/widget/TableRow;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroid/widget/TableRow;

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v3, v4}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/widget/TableLayout$LayoutParams;

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 5
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .locals 2

    .line 4
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isColumnCollapsed(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public isColumnShrinkable(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isColumnStretchable(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isShrinkAllColumns()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public isStretchAllColumns()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method public measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/TableRow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/widget/TableRow;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public measureVertical(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;->findLargestCells(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setColumnCollapsed(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Landroid/widget/TableRow;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    check-cast v2, Landroid/widget/TableRow;

    .line 22
    .line 23
    invoke-virtual {v2, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setColumnShrinkable(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setColumnStretchable(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->access$102(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setShrinkAllColumns(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return-void
.end method

.method public setStretchAllColumns(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return-void
.end method
