.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 3
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 4
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 5
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 6
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 12
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 13
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 14
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 15
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 17
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/widget/FrameLayout$LayoutParams;

    return p1
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "measurement:measureAllChildren"

    .line 5
    .line 6
    iget-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "padding:foregroundPaddingLeft"

    .line 12
    .line 13
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "padding:foregroundPaddingTop"

    .line 19
    .line 20
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "padding:foregroundPaddingRight"

    .line 26
    .line 27
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string v0, "padding:foregroundPaddingBottom"

    .line 33
    .line 34
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    sget-boolean v0, Landroid/view/View;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 6
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method public getPaddingLeftWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getPaddingRightWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public layoutChildren(IIIIZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr p3, p1

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sub-int/2addr p3, p1

    .line 15
    invoke-direct {p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    sub-int/2addr p4, p2

    .line 20
    invoke-direct {p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sub-int/2addr p4, p2

    .line 25
    const/4 p2, 0x0

    .line 26
    :goto_0
    if-ge p2, v0, :cond_8

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v4, 0x8

    .line 37
    .line 38
    if-eq v3, v4, :cond_7

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    .line 56
    const/4 v7, -0x1

    .line 57
    if-ne v6, v7, :cond_0

    .line 58
    .line 59
    const v6, 0x800033

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    and-int/lit8 v6, v6, 0x70

    .line 71
    .line 72
    and-int/lit8 v7, v7, 0x7

    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    if-eq v7, v8, :cond_3

    .line 76
    .line 77
    const/4 v8, 0x5

    .line 78
    if-eq v7, v8, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    if-nez p5, :cond_2

    .line 82
    .line 83
    sub-int v7, p3, v4

    .line 84
    .line 85
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 89
    .line 90
    add-int/2addr v7, v1

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    sub-int v7, p3, v1

    .line 93
    .line 94
    sub-int/2addr v7, v4

    .line 95
    div-int/lit8 v7, v7, 0x2

    .line 96
    .line 97
    add-int/2addr v7, v1

    .line 98
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 99
    .line 100
    add-int/2addr v7, v8

    .line 101
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 102
    .line 103
    :goto_2
    sub-int/2addr v7, v8

    .line 104
    :goto_3
    const/16 v8, 0x10

    .line 105
    .line 106
    if-eq v6, v8, :cond_6

    .line 107
    .line 108
    const/16 v8, 0x30

    .line 109
    .line 110
    if-eq v6, v8, :cond_5

    .line 111
    .line 112
    const/16 v8, 0x50

    .line 113
    .line 114
    if-eq v6, v8, :cond_4

    .line 115
    .line 116
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_4
    sub-int v6, p4, v5

    .line 120
    .line 121
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_5
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    .line 126
    :goto_4
    add-int/2addr v3, p1

    .line 127
    goto :goto_6

    .line 128
    :cond_6
    sub-int v6, p4, p1

    .line 129
    .line 130
    sub-int/2addr v6, v5

    .line 131
    div-int/lit8 v6, v6, 0x2

    .line 132
    .line 133
    add-int/2addr v6, p1

    .line 134
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 135
    .line 136
    add-int/2addr v6, v8

    .line 137
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 138
    .line 139
    :goto_5
    sub-int v3, v6, v3

    .line 140
    .line 141
    :goto_6
    add-int/2addr v4, v7

    .line 142
    add-int/2addr v5, v3

    .line 143
    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 144
    .line 145
    .line 146
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_8
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v9

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v12, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-ne v0, v12, :cond_1

    .line 18
    .line 19
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eq v0, v12, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v13, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v13, 0x1

    .line 29
    :goto_1
    iget-object v0, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, 0x0

    .line 38
    :goto_2
    const/4 v3, -0x1

    .line 39
    if-ge v14, v9, :cond_5

    .line 40
    .line 41
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-boolean v0, v6, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    if-eq v0, v1, :cond_4

    .line 56
    .line 57
    :cond_2
    const/16 v16, 0x0

    .line 58
    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    move-object/from16 v0, p0

    .line 62
    .line 63
    move-object v1, v2

    .line 64
    move-object/from16 v18, v2

    .line 65
    .line 66
    move/from16 v2, p1

    .line 67
    .line 68
    move v12, v3

    .line 69
    move/from16 v3, v16

    .line 70
    .line 71
    move v11, v4

    .line 72
    move/from16 v4, p2

    .line 73
    .line 74
    move v10, v5

    .line 75
    move/from16 v5, v17

    .line 76
    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    .line 86
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 91
    .line 92
    add-int/2addr v1, v2

    .line 93
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 94
    .line 95
    add-int/2addr v1, v2

    .line 96
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 105
    .line 106
    add-int/2addr v1, v2

    .line 107
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 108
    .line 109
    add-int/2addr v1, v2

    .line 110
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v11, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v13, :cond_4

    .line 123
    .line 124
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    .line 126
    if-eq v1, v12, :cond_3

    .line 127
    .line 128
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    .line 130
    if-ne v0, v12, :cond_4

    .line 131
    .line 132
    :cond_3
    iget-object v0, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 133
    .line 134
    move-object/from16 v1, v18

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 140
    .line 141
    const/high16 v12, 0x40000000    # 2.0f

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    move v12, v3

    .line 145
    move v11, v4

    .line 146
    move v10, v5

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    add-int/2addr v1, v0

    .line 156
    add-int/2addr v1, v15

    .line 157
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    add-int/2addr v0, v2

    .line 166
    add-int/2addr v0, v10

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    if-eqz v2, :cond_6

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    :cond_6
    invoke-static {v1, v7, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    shl-int/lit8 v2, v11, 0x10

    .line 210
    .line 211
    invoke-static {v0, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 216
    .line 217
    .line 218
    iget-object v0, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    const/4 v1, 0x1

    .line 225
    if-le v0, v1, :cond_9

    .line 226
    .line 227
    const/4 v1, 0x0

    .line 228
    :goto_3
    if-ge v1, v0, :cond_9

    .line 229
    .line 230
    iget-object v2, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 243
    .line 244
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    .line 246
    if-ne v4, v12, :cond_7

    .line 247
    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    sub-int/2addr v4, v5

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    sub-int/2addr v4, v5

    .line 262
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 263
    .line 264
    sub-int/2addr v4, v5

    .line 265
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 266
    .line 267
    sub-int/2addr v4, v5

    .line 268
    const/4 v5, 0x0

    .line 269
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    const/high16 v5, 0x40000000    # 2.0f

    .line 274
    .line 275
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    goto :goto_4

    .line 280
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    add-int/2addr v5, v4

    .line 289
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 290
    .line 291
    add-int/2addr v5, v4

    .line 292
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 293
    .line 294
    add-int/2addr v5, v4

    .line 295
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 296
    .line 297
    invoke-static {v7, v5, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    :goto_4
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    .line 303
    if-ne v5, v12, :cond_8

    .line 304
    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    sub-int/2addr v5, v9

    .line 314
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    sub-int/2addr v5, v9

    .line 319
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 320
    .line 321
    sub-int/2addr v5, v9

    .line 322
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 323
    .line 324
    sub-int/2addr v5, v3

    .line 325
    const/4 v9, 0x0

    .line 326
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    const/high16 v5, 0x40000000    # 2.0f

    .line 331
    .line 332
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    goto :goto_5

    .line 337
    :cond_8
    const/high16 v5, 0x40000000    # 2.0f

    .line 338
    .line 339
    const/4 v9, 0x0

    .line 340
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    .line 345
    .line 346
    .line 347
    move-result v11

    .line 348
    add-int/2addr v10, v11

    .line 349
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 350
    .line 351
    add-int/2addr v10, v11

    .line 352
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 353
    .line 354
    add-int/2addr v10, v11

    .line 355
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 356
    .line 357
    invoke-static {v8, v10, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    :goto_5
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 362
    .line 363
    .line 364
    add-int/lit8 v1, v1, 0x1

    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :cond_9
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_2

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->setForegroundGravity(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x77

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 38
    .line 39
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 42
    .line 43
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 46
    .line 47
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 54
    .line 55
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 56
    .line 57
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 58
    .line 59
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 60
    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
