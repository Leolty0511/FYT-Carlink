.class final Landroid/view/FocusFinder$FocusSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FocusSorter"
.end annotation


# instance fields
.field private mLastPoolRect:I

.field private mRectByView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRectPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRtlMult:I

.field private mSidesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTopsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance v0, Landroid/view/a;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1}, Landroid/view/a;-><init>(Landroid/view/FocusFinder$FocusSorter;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    .line 21
    .line 22
    new-instance v0, Landroid/view/a;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, p0, v1}, Landroid/view/a;-><init>(Landroid/view/FocusFinder$FocusSorter;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Landroid/view/FocusFinder$FocusSorter;Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder$FocusSorter;->lambda$new$1(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/view/FocusFinder$FocusSorter;Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder$FocusSorter;->lambda$new$0(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/graphics/Rect;

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/graphics/Rect;

    .line 20
    .line 21
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    sub-int/2addr p1, p2

    .line 33
    return p1

    .line 34
    :cond_1
    return v0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/graphics/Rect;

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/graphics/Rect;

    .line 20
    .line 21
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    sub-int/2addr p1, p2

    .line 33
    return p1

    .line 34
    :cond_1
    iget p1, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    .line 35
    .line 36
    mul-int/2addr p1, v0

    .line 37
    return p1
.end method


# virtual methods
.method public sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    sub-int v0, p3, p2

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 17
    .line 18
    :cond_1
    const/4 v1, 0x1

    .line 19
    if-eqz p5, :cond_2

    .line 20
    .line 21
    const/4 p5, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move p5, v1

    .line 24
    :goto_0
    iput p5, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    .line 25
    .line 26
    iget-object p5, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p5

    .line 32
    :goto_1
    if-ge p5, v0, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v3, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 p5, p5, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move p5, p2

    .line 48
    :goto_2
    if-ge p5, p3, :cond_4

    .line 49
    .line 50
    iget-object v2, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    .line 51
    .line 52
    iget v3, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    .line 53
    .line 54
    add-int/lit8 v4, v3, 0x1

    .line 55
    .line 56
    iput v4, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/graphics/Rect;

    .line 63
    .line 64
    aget-object v3, p1, p5

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    aget-object v3, p1, p5

    .line 70
    .line 71
    invoke-virtual {p4, v3, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 75
    .line 76
    aget-object v4, p1, p5

    .line 77
    .line 78
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    add-int/lit8 p5, p5, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    iget-object p4, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    .line 85
    .line 86
    invoke-static {p1, p2, v0, p4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 87
    .line 88
    .line 89
    iget-object p4, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 90
    .line 91
    aget-object p5, p1, p2

    .line 92
    .line 93
    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    check-cast p4, Landroid/graphics/Rect;

    .line 98
    .line 99
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    add-int/lit8 p5, p2, 0x1

    .line 102
    .line 103
    :goto_3
    if-ge p5, p3, :cond_7

    .line 104
    .line 105
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 106
    .line 107
    aget-object v2, p1, p5

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/graphics/Rect;

    .line 114
    .line 115
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 116
    .line 117
    if-lt v2, p4, :cond_6

    .line 118
    .line 119
    sub-int p4, p5, p2

    .line 120
    .line 121
    if-le p4, v1, :cond_5

    .line 122
    .line 123
    iget-object p4, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    .line 124
    .line 125
    invoke-static {p1, p2, p5, p4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    move p4, p2

    .line 131
    move p2, p5

    .line 132
    goto :goto_4

    .line 133
    :cond_6
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    :goto_4
    add-int/lit8 p5, p5, 0x1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    sub-int p3, p5, p2

    .line 143
    .line 144
    if-le p3, v1, :cond_8

    .line 145
    .line 146
    iget-object p3, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    .line 147
    .line 148
    invoke-static {p1, p2, p5, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    const/4 p1, 0x0

    .line 152
    iput p1, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    .line 153
    .line 154
    iget-object p1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 157
    .line 158
    .line 159
    return-void
.end method
