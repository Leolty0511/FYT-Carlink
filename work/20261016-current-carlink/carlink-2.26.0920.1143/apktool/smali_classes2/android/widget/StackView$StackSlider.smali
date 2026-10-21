.class Landroid/widget/StackView$StackSlider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackSlider"
.end annotation


# static fields
.field static final BEGINNING_OF_STACK_MODE:I = 0x1

.field static final END_OF_STACK_MODE:I = 0x2

.field static final NORMAL_MODE:I


# instance fields
.field mMode:I

.field mView:Landroid/view/View;

.field mXProgress:F

.field mYProgress:F

.field final synthetic this$0:Landroid/widget/StackView;


# direct methods
.method public constructor <init>(Landroid/widget/StackView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 5
    iget-object p1, p2, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 6
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 7
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 8
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mMode:I

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method private cubic(F)F
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    double-to-float p1, v1

    div-float/2addr p1, v0

    return p1
.end method

.method private getDuration(ZF)F
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 11
    .line 12
    iget v2, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 13
    .line 14
    int-to-double v2, v2

    .line 15
    iget v0, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 16
    .line 17
    int-to-double v4, v0

    .line 18
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    double-to-float v0, v2

    .line 23
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 24
    .line 25
    invoke-static {v2}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-double v2, v2

    .line 30
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 31
    .line 32
    invoke-static {v4}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    int-to-float v4, v4

    .line 37
    const v5, 0x3ecccccd    # 0.4f

    .line 38
    .line 39
    .line 40
    mul-float/2addr v4, v5

    .line 41
    float-to-double v4, v4

    .line 42
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    double-to-float v2, v2

    .line 47
    cmpl-float v3, v0, v2

    .line 48
    .line 49
    if-lez v3, :cond_0

    .line 50
    .line 51
    move v0, v2

    .line 52
    :cond_0
    cmpl-float v3, p2, v1

    .line 53
    .line 54
    const/high16 v4, 0x43c80000    # 400.0f

    .line 55
    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    const/high16 p1, 0x3f800000    # 1.0f

    .line 61
    .line 62
    div-float/2addr v0, v2

    .line 63
    sub-float/2addr p1, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    div-float p1, v0, v2

    .line 66
    .line 67
    :goto_0
    mul-float/2addr p1, v4

    .line 68
    return p1

    .line 69
    :cond_2
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    div-float/2addr v0, p2

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    sub-float/2addr v2, v0

    .line 78
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    div-float v0, v2, p2

    .line 83
    .line 84
    :goto_1
    const/high16 p2, 0x42480000    # 50.0f

    .line 85
    .line 86
    cmpg-float p2, v0, p2

    .line 87
    .line 88
    if-ltz p2, :cond_5

    .line 89
    .line 90
    cmpl-float p2, v0, v4

    .line 91
    .line 92
    if-lez p2, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    return v0

    .line 96
    :cond_5
    :goto_2
    invoke-direct {p0, p1, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :cond_6
    return v1
.end method

.method private highlightAlphaInterpolator(F)F
    .locals 3

    .line 1
    const v0, 0x3ecccccd    # 0.4f

    .line 2
    .line 3
    .line 4
    cmpg-float v1, p1, v0

    .line 5
    .line 6
    const v2, 0x3f59999a    # 0.85f

    .line 7
    .line 8
    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    div-float/2addr p1, v0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    mul-float/2addr p1, v2

    .line 17
    return p1

    .line 18
    :cond_0
    sub-float/2addr p1, v0

    .line 19
    const v0, 0x3f19999a    # 0.6f

    .line 20
    .line 21
    .line 22
    div-float/2addr p1, v0

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    .line 25
    sub-float/2addr v0, p1

    .line 26
    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0
.end method

.method private rotationInterpolator(F)F
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, v0

    return p1
.end method

.method private viewAlphaInterpolator(F)F
    .locals 2

    const v0, 0x3e99999a    # 0.3f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const v0, 0x3f333333    # 0.7f

    div-float/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getDurationForNeutralPosition()F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method public getDurationForNeutralPosition(F)F
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p1

    return p1
.end method

.method public getDurationForOffscreenPosition()F
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method public getDurationForOffscreenPosition(F)F
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p1

    return p1
.end method

.method public getXProgress()F
    .locals 1

    iget v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    return v0
.end method

.method public getYProgress()F
    .locals 1

    iget v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    return v0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    return-void
.end method

.method public setXProgress(F)V
    .locals 3

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, -0x40000000    # -2.0f

    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 25
    .line 26
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 37
    .line 38
    const v2, 0x3e4ccccd    # 0.2f

    .line 39
    .line 40
    .line 41
    mul-float/2addr p1, v2

    .line 42
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 43
    .line 44
    invoke-static {v2}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v2, v2

    .line 49
    mul-float/2addr v2, p1

    .line 50
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 58
    .line 59
    invoke-static {v0}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    int-to-float v0, v0

    .line 64
    mul-float/2addr p1, v0

    .line 65
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v1, p1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public setYProgress(F)V
    .locals 10

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 13
    .line 14
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/widget/StackView$LayoutParams;

    .line 24
    .line 25
    iget-object v3, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 26
    .line 27
    invoke-static {v3}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/StackView$LayoutParams;

    .line 36
    .line 37
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 38
    .line 39
    invoke-static {v4}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    move v4, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v4, -0x1

    .line 49
    :goto_0
    iget v6, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 50
    .line 51
    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x2

    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    iget v6, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 61
    .line 62
    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v6}, Landroid/view/View;->getLayerType()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v6, v9, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v6}, Landroid/view/View;->getLayerType()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_3

    .line 89
    .line 90
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v6, v8, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_1
    iget v6, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 96
    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    const v1, 0x3e4ccccd    # 0.2f

    .line 100
    .line 101
    .line 102
    if-eq v6, v5, :cond_5

    .line 103
    .line 104
    if-eq v6, v9, :cond_4

    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_4
    mul-float/2addr p1, v1

    .line 109
    neg-int v0, v4

    .line 110
    int-to-float v0, v0

    .line 111
    mul-float/2addr v0, p1

    .line 112
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 113
    .line 114
    invoke-static {v1}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    int-to-float v1, v1

    .line 119
    mul-float/2addr v1, v0

    .line 120
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 128
    .line 129
    invoke-static {v1}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    int-to-float v1, v1

    .line 134
    mul-float/2addr v0, v1

    .line 135
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {v3, v0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 143
    .line 144
    invoke-static {v0}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_3

    .line 156
    .line 157
    :cond_5
    sub-float/2addr v0, p1

    .line 158
    mul-float/2addr v0, v1

    .line 159
    int-to-float p1, v4

    .line 160
    mul-float/2addr p1, v0

    .line 161
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 162
    .line 163
    invoke-static {v1}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    int-to-float v1, v1

    .line 168
    mul-float/2addr v1, p1

    .line 169
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 177
    .line 178
    invoke-static {v1}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    int-to-float v1, v1

    .line 183
    mul-float/2addr p1, v1

    .line 184
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    invoke-virtual {v3, p1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 192
    .line 193
    invoke-static {p1}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_3

    .line 205
    .line 206
    :cond_6
    neg-float v5, p1

    .line 207
    int-to-float v4, v4

    .line 208
    mul-float/2addr v5, v4

    .line 209
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 210
    .line 211
    invoke-static {v6}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    int-to-float v6, v6

    .line 216
    mul-float/2addr v6, v5

    .line 217
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    invoke-virtual {v2, v6}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 222
    .line 223
    .line 224
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 225
    .line 226
    invoke-static {v2}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    int-to-float v2, v2

    .line 231
    mul-float/2addr v5, v2

    .line 232
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-virtual {v3, v2}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 237
    .line 238
    .line 239
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 240
    .line 241
    invoke-static {v2}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 250
    .line 251
    .line 252
    sub-float/2addr v0, p1

    .line 253
    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->viewAlphaInterpolator(F)F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 258
    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    cmpl-float v2, v2, v1

    .line 264
    .line 265
    if-nez v2, :cond_7

    .line 266
    .line 267
    cmpl-float v2, v0, v1

    .line 268
    .line 269
    if-eqz v2, :cond_7

    .line 270
    .line 271
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 272
    .line 273
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_7

    .line 278
    .line 279
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_7
    cmpl-float v2, v0, v1

    .line 286
    .line 287
    if-nez v2, :cond_8

    .line 288
    .line 289
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    cmpl-float v1, v2, v1

    .line 296
    .line 297
    if-eqz v1, :cond_8

    .line 298
    .line 299
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 300
    .line 301
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_8

    .line 306
    .line 307
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 308
    .line 309
    const/4 v2, 0x4

    .line 310
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    :cond_8
    :goto_2
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 314
    .line 315
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 319
    .line 320
    const/high16 v1, 0x42b40000    # 90.0f

    .line 321
    .line 322
    mul-float/2addr v4, v1

    .line 323
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    mul-float/2addr v1, v4

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    .line 332
    .line 333
    invoke-static {v0}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    mul-float/2addr v4, p1

    .line 342
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationX(F)V

    .line 343
    .line 344
    .line 345
    :goto_3
    return-void
.end method
