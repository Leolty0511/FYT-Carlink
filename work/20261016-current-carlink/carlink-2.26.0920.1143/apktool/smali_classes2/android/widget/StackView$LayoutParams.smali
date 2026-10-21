.class Landroid/widget/StackView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutParams"
.end annotation


# instance fields
.field private final globalInvalidateRect:Landroid/graphics/Rect;

.field horizontalOffset:I

.field private final invalidateRect:Landroid/graphics/Rect;

.field private final invalidateRectf:Landroid/graphics/RectF;

.field mView:Landroid/view/View;

.field private final parentRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/StackView;

.field verticalOffset:I


# direct methods
.method public constructor <init>(Landroid/widget/StackView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 13
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 19
    iput p1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 20
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 7
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iput p1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 10
    iput p1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 11
    iput-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInvalidateRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    instance-of p2, p2, Landroid/view/View;

    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    instance-of v0, v0, Landroid/view/View;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    if-nez p2, :cond_1

    .line 71
    .line 72
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sub-int/2addr v0, v1

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    sub-int/2addr v1, v3

    .line 92
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/view/View;

    .line 100
    .line 101
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    add-int/2addr v4, v3

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    add-int/2addr v5, v3

    .line 129
    invoke-virtual {p2, v0, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 133
    .line 134
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 135
    .line 136
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 137
    .line 138
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 139
    .line 140
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    invoke-virtual {p1, v0, v1, v3, p2}, Landroid/view/View;->invalidate(IIII)V

    .line 143
    .line 144
    .line 145
    move p2, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 148
    .line 149
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 150
    .line 151
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 152
    .line 153
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 156
    .line 157
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->invalidate(IIII)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_1
    return-void
.end method

.method public resetInvalidateRect()V
    .locals 2

    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    iget v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    return-void
.end method

.method public setOffsets(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 2
    .line 3
    sub-int v0, p1, v0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 6
    .line 7
    iget p1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 8
    .line 9
    sub-int p1, p2, p1

    .line 10
    .line 11
    iput p2, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 12
    .line 13
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    add-int/2addr p2, v0

    .line 27
    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v1, v0

    .line 44
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v1, p1

    .line 61
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    add-int/2addr v2, p1

    .line 78
    iget-object p1, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 89
    .line 90
    int-to-float p2, p2

    .line 91
    int-to-float v1, v1

    .line 92
    int-to-float v0, v0

    .line 93
    int-to-float p1, p1

    .line 94
    invoke-virtual {v2, p2, v1, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 98
    .line 99
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 100
    .line 101
    neg-float p2, p2

    .line 102
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 103
    .line 104
    neg-float v0, v0

    .line 105
    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 120
    .line 121
    neg-float p2, p2

    .line 122
    neg-float v0, v0

    .line 123
    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 127
    .line 128
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 129
    .line 130
    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 131
    .line 132
    float-to-double v0, p2

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    double-to-int p2, v0

    .line 138
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 139
    .line 140
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 141
    .line 142
    float-to-double v0, v0

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    double-to-int v0, v0

    .line 148
    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 149
    .line 150
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 151
    .line 152
    float-to-double v1, v1

    .line 153
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    double-to-int v1, v1

    .line 158
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 159
    .line 160
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 161
    .line 162
    float-to-double v2, v2

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 164
    .line 165
    .line 166
    move-result-wide v2

    .line 167
    double-to-int v2, v2

    .line 168
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 172
    .line 173
    iget-object p2, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 174
    .line 175
    invoke-virtual {p0, p1, p2}, Landroid/widget/StackView$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 176
    .line 177
    .line 178
    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    iget v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    return-void
.end method
