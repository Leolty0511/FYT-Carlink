.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final MASK_TYPE:I

.field private final MASK_VALUE:I

.field private final MINUTE_INCREMENT:I

.field private final SHIFT_TYPE:I

.field private final SHIFT_VALUE:I

.field private final TYPE_HOUR:I

.field private final TYPE_MINUTE:I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    .line 21
    .line 22
    const/16 p1, 0xf

    .line 23
    .line 24
    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    .line 25
    .line 26
    const/16 p1, 0x8

    .line 27
    .line 28
    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    .line 29
    .line 30
    const/16 p1, 0xff

    .line 31
    .line 32
    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    .line 33
    .line 34
    const/4 p1, 0x5

    .line 35
    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    .line 36
    .line 37
    return-void
.end method

.method private adjustPicker(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 17
    .line 18
    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v2, 0x17

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v2, 0xc

    .line 33
    .line 34
    move v1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v3, 0x5

    .line 43
    div-int/2addr v0, v3

    .line 44
    const/16 v2, 0x37

    .line 45
    .line 46
    :goto_0
    add-int/2addr v0, p1

    .line 47
    mul-int/2addr v0, v3

    .line 48
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 53
    .line 54
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/widget/RadialTimePickerView;->access$900(Landroid/widget/RadialTimePickerView;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 28
    .line 29
    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    aget v1, v2, v1

    .line 34
    .line 35
    sub-int/2addr v0, v1

    .line 36
    int-to-float v0, v0

    .line 37
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 45
    .line 46
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 51
    .line 52
    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x0

    .line 57
    aget v1, v1, v2

    .line 58
    .line 59
    sub-int/2addr v0, v1

    .line 60
    int-to-float v0, v0

    .line 61
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 62
    .line 63
    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :goto_0
    int-to-float v1, v1

    .line 68
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 69
    .line 70
    invoke-static {v2, p1}, Landroid/widget/RadialTimePickerView;->access$1300(Landroid/widget/RadialTimePickerView;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    int-to-float p1, p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    if-ne v0, v1, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 79
    .line 80
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 85
    .line 86
    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    aget v1, v1, v2

    .line 91
    .line 92
    sub-int/2addr v0, v1

    .line 93
    int-to-float v0, v0

    .line 94
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 95
    .line 96
    invoke-static {v1, p1}, Landroid/widget/RadialTimePickerView;->access$1400(Landroid/widget/RadialTimePickerView;I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    int-to-float p1, p1

    .line 101
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 102
    .line 103
    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    int-to-float v1, v1

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/4 v0, 0x0

    .line 110
    move p1, v0

    .line 111
    move v1, p1

    .line 112
    :goto_1
    float-to-double v2, p1

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 118
    .line 119
    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->access$1500(Landroid/widget/RadialTimePickerView;)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    int-to-float p1, p1

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    double-to-float v4, v4

    .line 129
    mul-float/2addr v4, v0

    .line 130
    add-float/2addr v4, p1

    .line 131
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 132
    .line 133
    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->access$1600(Landroid/widget/RadialTimePickerView;)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    int-to-float p1, p1

    .line 138
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    double-to-float v2, v2

    .line 143
    mul-float/2addr v0, v2

    .line 144
    sub-float/2addr p1, v0

    .line 145
    sub-float v0, v4, v1

    .line 146
    .line 147
    float-to-int v0, v0

    .line 148
    sub-float v2, p1, v1

    .line 149
    .line 150
    float-to-int v2, v2

    .line 151
    add-float/2addr v4, v1

    .line 152
    float-to-int v3, v4

    .line 153
    add-float/2addr p1, v1

    .line 154
    float-to-int p1, p1

    .line 155
    invoke-virtual {p2, v0, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method private getCircularDiff(III)I
    .locals 0

    .line 1
    sub-int/2addr p1, p2

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    div-int/lit8 p2, p3, 0x2

    .line 7
    .line 8
    if-le p1, p2, :cond_0

    .line 9
    .line 10
    sub-int p1, p3, p1

    .line 11
    .line 12
    :cond_0
    return p1
.end method

.method private getTypeFromId(I)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x0

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method private getValueFromId(I)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getVirtualViewIdAfter(II)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    add-int/2addr p2, v0

    .line 5
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x17

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0xc

    .line 17
    .line 18
    :goto_0
    if-gt p2, v0, :cond_3

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 v0, 0x2

    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    rem-int/lit8 v1, p2, 0x5

    .line 35
    .line 36
    sub-int v1, p2, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x5

    .line 39
    .line 40
    if-ge p2, v0, :cond_2

    .line 41
    .line 42
    if-le v1, v0, :cond_2

    .line 43
    .line 44
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_2
    const/16 p2, 0x3c

    .line 50
    .line 51
    if-ge v1, p2, :cond_3

    .line 52
    .line 53
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_3
    const/high16 p1, -0x80000000

    .line 59
    .line 60
    return p1
.end method

.method private hour12To24(II)I
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, 0xc

    :cond_1
    :goto_0
    return p1
.end method

.method private hour24To12(I)I
    .locals 1

    const/16 v0, 0xc

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method private isVirtualViewSelected(II)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    :goto_0
    move v0, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x2

    .line 16
    if-ne p1, v2, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    return v0
.end method

.method private makeId(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->access$300(Landroid/widget/RadialTimePickerView;FFZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->access$400(II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    rem-int/lit16 v2, v2, 0x168

    .line 17
    .line 18
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 19
    .line 20
    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 27
    .line 28
    invoke-static {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->access$500(Landroid/widget/RadialTimePickerView;FF)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 33
    .line 34
    invoke-static {p2, v2, p1}, Landroid/widget/RadialTimePickerView;->access$600(Landroid/widget/RadialTimePickerView;IZ)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 39
    .line 40
    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    :goto_0
    invoke-direct {p0, v1, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 63
    .line 64
    invoke-static {p2, v0}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 69
    .line 70
    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/16 v1, 0x3c

    .line 75
    .line 76
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-direct {p0, v0, p2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-ge v2, p2, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move p1, v0

    .line 88
    :goto_1
    const/4 p2, 0x2

    .line 89
    invoke-direct {p0, p2, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    const/high16 p1, -0x80000000

    .line 95
    .line 96
    :goto_2
    return p1
.end method

.method public getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 18
    .line 19
    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v2, 0x17

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v2, 0xc

    .line 29
    .line 30
    :goto_0
    if-gt v0, v2, :cond_3

    .line 31
    .line 32
    invoke-direct {p0, v1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_1
    const/16 v2, 0x3c

    .line 50
    .line 51
    if-ge v1, v2, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-direct {p0, v2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    .line 59
    .line 60
    .line 61
    if-le v0, v1, :cond_2

    .line 62
    .line 63
    add-int/lit8 v3, v1, 0x5

    .line 64
    .line 65
    if-ge v0, v3, :cond_2

    .line 66
    .line 67
    invoke-direct {p0, v2, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    .line 72
    .line 73
    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/16 p3, 0x10

    .line 2
    .line 3
    if-ne p2, p3, :cond_2

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p3, 0x1

    .line 14
    if-ne p2, p3, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 26
    .line 27
    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->access$800(Landroid/widget/RadialTimePickerView;)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 38
    .line 39
    .line 40
    return p3

    .line 41
    :cond_1
    const/4 v0, 0x2

    .line 42
    if-ne p2, v0, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 47
    .line 48
    .line 49
    return p3

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    return p1
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/high16 v0, -0x80000000

    .line 54
    .line 55
    if-eq p1, v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 58
    .line 59
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    const/16 p1, 0x1000

    .line 10
    .line 11
    if-eq p2, p1, :cond_2

    .line 12
    .line 13
    const/16 p1, 0x2000

    .line 14
    .line 15
    if-eq p2, p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, -0x1

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 21
    .line 22
    .line 23
    return p3

    .line 24
    :cond_2
    invoke-direct {p0, p3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 25
    .line 26
    .line 27
    return p3
.end method
