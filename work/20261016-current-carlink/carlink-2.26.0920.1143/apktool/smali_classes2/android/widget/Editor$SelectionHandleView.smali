.class Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$1;)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 14
    .line 15
    iput-boolean p2, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    new-array p2, p2, [I

    .line 19
    .line 20
    iput-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 21
    .line 22
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 23
    .line 24
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    mul-int/lit8 p1, p1, 0x4

    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 44
    .line 45
    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 3

    .line 2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p2, -0x1

    .line 3
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 4
    :goto_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p3

    .line 5
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-ne p3, v1, :cond_2

    .line 6
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p1

    :goto_1
    return p1
.end method

.method private isStartHandle()Z
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(IZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    if-ge p1, v0, :cond_2

    .line 36
    .line 37
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_8

    .line 42
    .line 43
    if-gt p1, v0, :cond_8

    .line 44
    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 47
    .line 48
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_7

    .line 59
    .line 60
    if-eq p1, v0, :cond_7

    .line 61
    .line 62
    invoke-virtual {p0, v1, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    xor-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    invoke-direct {p0, v1, v0, v3}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 77
    .line 78
    invoke-virtual {p0, v1, v4}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    cmpg-float v5, v4, v3

    .line 83
    .line 84
    if-gez v5, :cond_3

    .line 85
    .line 86
    cmpg-float v5, p1, v3

    .line 87
    .line 88
    if-ltz v5, :cond_4

    .line 89
    .line 90
    :cond_3
    cmpl-float v4, v4, v3

    .line 91
    .line 92
    if-lez v4, :cond_7

    .line 93
    .line 94
    cmpl-float p1, p1, v3

    .line 95
    .line 96
    if-lez p1, :cond_7

    .line 97
    .line 98
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    add-int/lit8 p1, p1, -0x1

    .line 110
    .line 111
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    :goto_1
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getRunRange(I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    goto :goto_2

    .line 130
    :cond_6
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    :goto_2
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 139
    .line 140
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    xor-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    invoke-static {p1, v0, v1}, Landroid/widget/Editor;->access$6000(Landroid/widget/Editor;IZ)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    :cond_8
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 21
    .line 22
    aget p2, p2, v2

    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr v0, p2

    .line 35
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 36
    .line 37
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    sub-int/2addr v0, p2

    .line 46
    int-to-float p2, v0

    .line 47
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 48
    .line 49
    sub-float/2addr p2, v0

    .line 50
    cmpl-float p1, p1, p2

    .line 51
    .line 52
    if-lez p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v1, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 58
    .line 59
    aget p2, p2, v2

    .line 60
    .line 61
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v0, p2

    .line 72
    int-to-float p2, v0

    .line 73
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 74
    .line 75
    add-float/2addr p2, v0

    .line 76
    cmpg-float p1, p1, p2

    .line 77
    .line 78
    if-gez p1, :cond_0

    .line 79
    .line 80
    :goto_0
    return v1
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result p1

    return p1
.end method

.method public getHorizontalGravity(Z)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    return p1
.end method

.method public getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    div-int/lit8 p1, p1, 0x4

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    mul-int/lit8 p1, p1, 0x3

    .line 19
    .line 20
    div-int/lit8 p1, p1, 0x4

    .line 21
    .line 22
    return p1
.end method

.method public getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, p2, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1, v1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, p2, p3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int v4, v1, v3

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int v5, p3, v3

    .line 39
    .line 40
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ge v4, v5, :cond_1

    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    if-le v4, v5, :cond_2

    .line 48
    .line 49
    return p3

    .line 50
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 58
    .line 59
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 p2, -0x1

    .line 72
    if-ne p1, p2, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move v0, v2

    .line 76
    :goto_1
    if-ne v3, v0, :cond_5

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    move v1, p3

    .line 80
    :goto_2
    return v1
.end method

.method public isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :goto_0
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 13
    .line 14
    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    .line 16
    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 17
    .line 18
    :cond_0
    return v0
.end method

.method public positionAtCursorOffset(IZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 2
    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {p2}, Landroid/widget/Editor;->access$5900(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-boolean p1, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 23
    .line 24
    return-void
.end method

.method public updatePosition(FFZ)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-direct {p0, p1, p3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 43
    .line 44
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 51
    .line 52
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 62
    .line 63
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 72
    .line 73
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 74
    .line 75
    invoke-static {v2, v0, v3, p2}, Landroid/widget/Editor;->access$5500(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    if-ge v2, v1, :cond_4

    .line 90
    .line 91
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_5

    .line 96
    .line 97
    if-gt v2, v1, :cond_5

    .line 98
    .line 99
    :cond_4
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 108
    .line 109
    invoke-static {v1, v2}, Landroid/widget/Editor;->access$5700(Landroid/widget/Editor;I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 114
    .line 115
    invoke-static {v3, v2}, Landroid/widget/Editor;->access$5800(Landroid/widget/Editor;I)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 120
    .line 121
    const/high16 v5, -0x40800000    # -1.0f

    .line 122
    .line 123
    cmpl-float v4, v4, v5

    .line 124
    .line 125
    if-nez v4, :cond_6

    .line 126
    .line 127
    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 128
    .line 129
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {p0, v0, v4}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-virtual {p0, v0, v2}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-virtual {v0, v2}, Landroid/text/Layout;->isLevelBoundary(I)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    const/4 v8, 0x0

    .line 146
    const/4 v9, 0x1

    .line 147
    if-nez v7, :cond_33

    .line 148
    .line 149
    if-eqz v5, :cond_7

    .line 150
    .line 151
    if-eqz v6, :cond_33

    .line 152
    .line 153
    :cond_7
    if-nez v5, :cond_8

    .line 154
    .line 155
    if-eqz v6, :cond_8

    .line 156
    .line 157
    goto/16 :goto_10

    .line 158
    .line 159
    :cond_8
    iget-boolean v5, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 160
    .line 161
    const/4 v10, 0x0

    .line 162
    if-eqz v5, :cond_9

    .line 163
    .line 164
    if-nez v7, :cond_9

    .line 165
    .line 166
    invoke-direct {p0, v2, p3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 167
    .line 168
    .line 169
    iput v8, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 170
    .line 171
    iput-boolean v10, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 172
    .line 173
    return-void

    .line 174
    :cond_9
    iget v5, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 175
    .line 176
    sub-float v5, p1, v5

    .line 177
    .line 178
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_a

    .line 183
    .line 184
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 185
    .line 186
    if-ge p2, v7, :cond_b

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_a
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 190
    .line 191
    if-le p2, v7, :cond_b

    .line 192
    .line 193
    :goto_1
    move v7, v9

    .line 194
    goto :goto_2

    .line 195
    :cond_b
    move v7, v10

    .line 196
    :goto_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    if-ne v6, v11, :cond_c

    .line 201
    .line 202
    cmpl-float v5, v5, v8

    .line 203
    .line 204
    if-lez v5, :cond_d

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_c
    cmpg-float v5, v5, v8

    .line 208
    .line 209
    if-gez v5, :cond_d

    .line 210
    .line 211
    :goto_3
    move v5, v9

    .line 212
    goto :goto_4

    .line 213
    :cond_d
    move v5, v10

    .line 214
    :goto_4
    or-int/2addr v5, v7

    .line 215
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 216
    .line 217
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v7}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-eqz v7, :cond_15

    .line 226
    .line 227
    invoke-direct {p0, p1, v6}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_15

    .line 232
    .line 233
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_e

    .line 238
    .line 239
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 240
    .line 241
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-nez v7, :cond_10

    .line 250
    .line 251
    :cond_e
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-nez v7, :cond_15

    .line 256
    .line 257
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 258
    .line 259
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    if-eqz v6, :cond_f

    .line 264
    .line 265
    const/4 v11, -0x1

    .line 266
    goto :goto_5

    .line 267
    :cond_f
    move v11, v9

    .line 268
    :goto_5
    invoke-virtual {v7, v11}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eqz v7, :cond_15

    .line 273
    .line 274
    :cond_10
    if-eqz v5, :cond_12

    .line 275
    .line 276
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-eqz v7, :cond_11

    .line 281
    .line 282
    if-lt v2, v4, :cond_13

    .line 283
    .line 284
    :cond_11
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    if-nez v7, :cond_12

    .line 289
    .line 290
    if-gt v2, v4, :cond_13

    .line 291
    .line 292
    :cond_12
    if-nez v5, :cond_15

    .line 293
    .line 294
    :cond_13
    iput v8, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 295
    .line 296
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-ne v6, p1, :cond_14

    .line 301
    .line 302
    iget p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 303
    .line 304
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    goto :goto_6

    .line 309
    :cond_14
    iget p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 310
    .line 311
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    :goto_6
    invoke-direct {p0, p1, p3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_15
    if-eqz v5, :cond_25

    .line 320
    .line 321
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_16

    .line 326
    .line 327
    move v4, v3

    .line 328
    goto :goto_7

    .line 329
    :cond_16
    move v4, v1

    .line 330
    :goto_7
    iget-boolean v5, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 331
    .line 332
    if-eqz v5, :cond_18

    .line 333
    .line 334
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-eqz v5, :cond_17

    .line 339
    .line 340
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 341
    .line 342
    if-ge p2, v5, :cond_19

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_17
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 346
    .line 347
    if-le p2, v5, :cond_19

    .line 348
    .line 349
    :cond_18
    :goto_8
    invoke-virtual {p0, v0, v4}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-ne v6, v5, :cond_19

    .line 354
    .line 355
    move v10, v9

    .line 356
    :cond_19
    if-eqz v10, :cond_20

    .line 357
    .line 358
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-eq v5, p2, :cond_1b

    .line 363
    .line 364
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_1a

    .line 369
    .line 370
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineStart(I)I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    goto :goto_9

    .line 375
    :cond_1a
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineEnd(I)I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    :cond_1b
    :goto_9
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_1c

    .line 384
    .line 385
    sub-int v4, v1, v4

    .line 386
    .line 387
    div-int/lit8 v4, v4, 0x2

    .line 388
    .line 389
    sub-int v4, v1, v4

    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_1c
    const/4 v5, 0x2

    .line 393
    invoke-static {v4, v3, v5, v3}, Landroid/app/m;->b(IIII)I

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    :goto_a
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_1e

    .line 402
    .line 403
    if-le v2, v4, :cond_1d

    .line 404
    .line 405
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 406
    .line 407
    if-ge p2, v5, :cond_1e

    .line 408
    .line 409
    :cond_1d
    move v1, v3

    .line 410
    goto :goto_b

    .line 411
    :cond_1e
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-nez v3, :cond_1f

    .line 416
    .line 417
    if-ge v2, v4, :cond_21

    .line 418
    .line 419
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 420
    .line 421
    if-le p2, v3, :cond_1f

    .line 422
    .line 423
    goto :goto_b

    .line 424
    :cond_1f
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 425
    .line 426
    goto :goto_b

    .line 427
    :cond_20
    move v1, v2

    .line 428
    :cond_21
    :goto_b
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-eqz v3, :cond_22

    .line 433
    .line 434
    if-lt v1, v2, :cond_23

    .line 435
    .line 436
    :cond_22
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-nez v3, :cond_24

    .line 441
    .line 442
    if-le v1, v2, :cond_24

    .line 443
    .line 444
    :cond_23
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 449
    .line 450
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    sub-float/2addr v2, v0

    .line 459
    iput v2, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 460
    .line 461
    goto :goto_e

    .line 462
    :cond_24
    iput v8, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 463
    .line 464
    goto :goto_e

    .line 465
    :cond_25
    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 466
    .line 467
    sub-float v4, p1, v4

    .line 468
    .line 469
    invoke-virtual {p0, v0, p2, v4}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-eqz v5, :cond_26

    .line 478
    .line 479
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 480
    .line 481
    if-gt v4, v5, :cond_28

    .line 482
    .line 483
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 484
    .line 485
    if-le p2, v5, :cond_27

    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_26
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 489
    .line 490
    if-lt v4, v5, :cond_28

    .line 491
    .line 492
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 493
    .line 494
    if-ge p2, v5, :cond_27

    .line 495
    .line 496
    goto :goto_c

    .line 497
    :cond_27
    move v5, v10

    .line 498
    goto :goto_d

    .line 499
    :cond_28
    :goto_c
    move v5, v9

    .line 500
    :goto_d
    if-eqz v5, :cond_2e

    .line 501
    .line 502
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 503
    .line 504
    if-eq p2, v5, :cond_2d

    .line 505
    .line 506
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-eqz v4, :cond_29

    .line 511
    .line 512
    move v1, v3

    .line 513
    :cond_29
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    if-eqz v3, :cond_2a

    .line 518
    .line 519
    if-lt v1, v2, :cond_2b

    .line 520
    .line 521
    :cond_2a
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    if-nez v3, :cond_2c

    .line 526
    .line 527
    if-le v1, v2, :cond_2c

    .line 528
    .line 529
    :cond_2b
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 534
    .line 535
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    sub-float/2addr v2, v0

    .line 544
    iput v2, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 545
    .line 546
    goto :goto_e

    .line 547
    :cond_2c
    iput v8, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 548
    .line 549
    :goto_e
    move v2, v1

    .line 550
    goto :goto_f

    .line 551
    :cond_2d
    move v2, v4

    .line 552
    goto :goto_f

    .line 553
    :cond_2e
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-eqz v1, :cond_2f

    .line 558
    .line 559
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 560
    .line 561
    if-lt v4, v1, :cond_30

    .line 562
    .line 563
    :cond_2f
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    if-nez v1, :cond_31

    .line 568
    .line 569
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 570
    .line 571
    if-le v4, v1, :cond_31

    .line 572
    .line 573
    :cond_30
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 574
    .line 575
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 584
    .line 585
    invoke-virtual {p0, v0, v3}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    sub-float/2addr v1, v0

    .line 590
    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 591
    .line 592
    :cond_31
    move v9, v10

    .line 593
    :goto_f
    if-eqz v9, :cond_32

    .line 594
    .line 595
    iput p2, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 596
    .line 597
    invoke-direct {p0, v2, p3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 598
    .line 599
    .line 600
    :cond_32
    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 601
    .line 602
    return-void

    .line 603
    :cond_33
    :goto_10
    iput-boolean v9, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 604
    .line 605
    iput v8, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 606
    .line 607
    invoke-direct {p0, v2, p3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 608
    .line 609
    .line 610
    return-void
.end method

.method public updateSelection(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/text/Spannable;

    .line 18
    .line 19
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/text/Spannable;

    .line 44
    .line 45
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 46
    .line 47
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 62
    .line 63
    invoke-static {p1}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 70
    .line 71
    invoke-static {p1}, Landroid/widget/Editor;->access$5600(Landroid/widget/Editor;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method
