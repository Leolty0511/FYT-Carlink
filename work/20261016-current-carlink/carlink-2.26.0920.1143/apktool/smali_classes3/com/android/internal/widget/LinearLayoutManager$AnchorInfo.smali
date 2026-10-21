.class Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field mValid:Z

.field final synthetic this$0:Lcom/android/internal/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public assignCoordinateFromPadding()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 23
    .line 24
    return-void
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 42
    .line 43
    return-void
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v0

    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sub-int/2addr v1, v0

    .line 46
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sub-int/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 56
    .line 57
    if-lez v1, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 68
    .line 69
    sub-int/2addr v3, v0

    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 79
    .line 80
    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 81
    .line 82
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    sub-int/2addr p1, v0

    .line 87
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    add-int/2addr p1, v0

    .line 92
    sub-int/2addr v3, p1

    .line 93
    if-gez v3, :cond_2

    .line 94
    .line 95
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 96
    .line 97
    neg-int v0, v3

    .line 98
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v0, p1

    .line 103
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 115
    .line 116
    iget-object v3, v3, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    sub-int v3, v1, v3

    .line 123
    .line 124
    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 125
    .line 126
    if-lez v3, :cond_2

    .line 127
    .line 128
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 129
    .line 130
    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 131
    .line 132
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    add-int/2addr v4, v1

    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 138
    .line 139
    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    sub-int/2addr v1, v0

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    sub-int/2addr v1, p1

    .line 155
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    sub-int/2addr p1, v0

    .line 168
    sub-int/2addr p1, v4

    .line 169
    if-gez p1, :cond_2

    .line 170
    .line 171
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 172
    .line 173
    neg-int p1, p1

    .line 174
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    sub-int/2addr v0, p1

    .line 179
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 180
    .line 181
    :cond_2
    :goto_0
    return-void
.end method

.method public isViewValidAsAnchor(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-ge p1, p2, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 12
    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
