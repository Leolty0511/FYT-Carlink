.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 1.8f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 17
    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 21
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 22
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 23
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 24
    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 25
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 26
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 29
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 3
    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 6
    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 7
    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 8
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 9
    div-int/lit8 p4, p4, 0xa

    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 10
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 11
    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 12
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 13
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 14
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 8

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 33
    new-instance p2, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {p2, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    .line 34
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 35
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 36
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 37
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    const/16 v0, 0xc

    .line 38
    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const p4, 0x7fffffff

    :cond_0
    move v0, p1

    move v1, v0

    move v2, v1

    move v3, v2

    .line 39
    :goto_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 40
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v2, p4, :cond_1

    .line 41
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v5, v3

    add-int/2addr v5, p5

    iget v6, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v5, v6, :cond_2

    .line 42
    :cond_1
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v2, p1

    move v3, v2

    .line 43
    :cond_2
    new-instance v5, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v5, p2}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 44
    iput v3, v5, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 45
    iput v1, v5, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 46
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x1

    new-array v7, v6, [I

    aput v4, v7, p1

    .line 47
    iput-object v7, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    add-int/2addr v2, v6

    .line 48
    iget v4, v5, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v5, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 49
    iget-object v4, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v4, p2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v3, v4, :cond_3

    .line 52
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_4
    iget p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 54
    iget-object p1, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return p0
.end method

.method public static synthetic access$100(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return p0
.end method

.method public static synthetic access$200(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return p0
.end method

.method public static synthetic access$300(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return p0
.end method

.method public static synthetic access$400(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return p0
.end method

.method public static synthetic access$500(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return p0
.end method

.method private computeNearestNeighbors()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0xa

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0xa

    .line 10
    .line 11
    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, 0x5

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    div-int/lit8 v0, v0, 0x5

    .line 22
    .line 23
    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 24
    .line 25
    const/16 v0, 0x32

    .line 26
    .line 27
    new-array v0, v0, [[I

    .line 28
    .line 29
    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 30
    .line 31
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    new-array v0, v0, [I

    .line 38
    .line 39
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 40
    .line 41
    mul-int/lit8 v1, v1, 0xa

    .line 42
    .line 43
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 44
    .line 45
    mul-int/lit8 v2, v2, 0x5

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move v4, v3

    .line 49
    :goto_0
    if-ge v4, v1, :cond_4

    .line 50
    .line 51
    move v5, v3

    .line 52
    :goto_1
    if-ge v5, v2, :cond_3

    .line 53
    .line 54
    move v6, v3

    .line 55
    move v7, v6

    .line 56
    :goto_2
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-ge v6, v8, :cond_2

    .line 63
    .line 64
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Landroid/inputmethodservice/Keyboard$Key;

    .line 71
    .line 72
    invoke-virtual {v8, v4, v5}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 77
    .line 78
    if-lt v9, v10, :cond_0

    .line 79
    .line 80
    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 81
    .line 82
    add-int/2addr v9, v4

    .line 83
    add-int/lit8 v9, v9, -0x1

    .line 84
    .line 85
    invoke-virtual {v8, v9, v5}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 90
    .line 91
    if-lt v9, v10, :cond_0

    .line 92
    .line 93
    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 94
    .line 95
    add-int/2addr v9, v4

    .line 96
    add-int/lit8 v9, v9, -0x1

    .line 97
    .line 98
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 99
    .line 100
    add-int/2addr v10, v5

    .line 101
    add-int/lit8 v10, v10, -0x1

    .line 102
    .line 103
    invoke-virtual {v8, v9, v10}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 108
    .line 109
    if-lt v9, v10, :cond_0

    .line 110
    .line 111
    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 112
    .line 113
    add-int/2addr v9, v5

    .line 114
    add-int/lit8 v9, v9, -0x1

    .line 115
    .line 116
    invoke-virtual {v8, v4, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 121
    .line 122
    if-ge v8, v9, :cond_1

    .line 123
    .line 124
    :cond_0
    add-int/lit8 v8, v7, 0x1

    .line 125
    .line 126
    aput v6, v0, v7

    .line 127
    .line 128
    move v7, v8

    .line 129
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    new-array v6, v7, [I

    .line 133
    .line 134
    invoke-static {v0, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 135
    .line 136
    .line 137
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 138
    .line 139
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 140
    .line 141
    div-int v9, v5, v8

    .line 142
    .line 143
    mul-int/lit8 v9, v9, 0xa

    .line 144
    .line 145
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 146
    .line 147
    div-int v10, v4, v10

    .line 148
    .line 149
    add-int/2addr v10, v9

    .line 150
    aput-object v6, v7, v10

    .line 151
    .line 152
    add-int/2addr v5, v8

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 155
    .line 156
    add-int/2addr v4, v5

    .line 157
    goto :goto_0

    .line 158
    :cond_4
    return-void
.end method

.method public static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return p3

    .line 8
    :cond_0
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_1
    const/4 v1, 0x6

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    int-to-float p3, p3

    .line 22
    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 13

    .line 1
    const-string v0, "Keyboard"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    move-object v8, v1

    .line 10
    move v2, v7

    .line 11
    move v9, v2

    .line 12
    move v10, v9

    .line 13
    :goto_0
    move v11, v10

    .line 14
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v12, 0x1

    .line 19
    if-eq v3, v12, :cond_c

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-ne v3, v4, :cond_9

    .line 23
    .line 24
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "Row"

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v4, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget v4, v3, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 50
    .line 51
    if-eq v4, v5, :cond_1

    .line 52
    .line 53
    move v4, v12

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    move v4, v7

    .line 56
    :goto_2
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-direct {p0, p2}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 59
    .line 60
    .line 61
    move-object v8, v3

    .line 62
    move v10, v7

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v8, v3

    .line 65
    move v11, v7

    .line 66
    move v10, v12

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string v4, "Key"

    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_8

    .line 75
    .line 76
    move-object v1, p0

    .line 77
    move-object v2, p1

    .line 78
    move-object v3, v8

    .line 79
    move v4, v11

    .line 80
    move v5, v9

    .line 81
    move-object v6, p2

    .line 82
    invoke-virtual/range {v1 .. v6}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 92
    .line 93
    aget v2, v2, v7

    .line 94
    .line 95
    const/4 v3, -0x1

    .line 96
    if-ne v2, v3, :cond_6

    .line 97
    .line 98
    move v2, v7

    .line 99
    :goto_3
    iget-object v3, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 100
    .line 101
    array-length v4, v3

    .line 102
    if-ge v2, v4, :cond_5

    .line 103
    .line 104
    aget-object v4, v3, v2

    .line 105
    .line 106
    if-nez v4, :cond_4

    .line 107
    .line 108
    aput-object v1, v3, v2

    .line 109
    .line 110
    iget-object v3, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 111
    .line 112
    iget-object v4, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    sub-int/2addr v4, v12

    .line 119
    aput v4, v3, v2

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    :goto_4
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    const/4 v3, -0x6

    .line 132
    if-ne v2, v3, :cond_7

    .line 133
    .line 134
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_5
    iget-object v2, v8, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move v2, v12

    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_0

    .line 152
    .line 153
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_9
    const/4 v4, 0x3

    .line 159
    if-ne v3, v4, :cond_0

    .line 160
    .line 161
    if-eqz v2, :cond_b

    .line 162
    .line 163
    iget v2, v1, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    .line 164
    .line 165
    iget v3, v1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 166
    .line 167
    add-int/2addr v2, v3

    .line 168
    add-int/2addr v11, v2

    .line 169
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 170
    .line 171
    if-le v11, v2, :cond_a

    .line 172
    .line 173
    iput v11, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 174
    .line 175
    :cond_a
    move v2, v7

    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_b
    if-eqz v10, :cond_0

    .line 179
    .line 180
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 181
    .line 182
    add-int/2addr v9, v3

    .line 183
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    add-int/2addr v9, v3

    .line 186
    move v10, v7

    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :catch_0
    move-exception p1

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v1, "Parse error:"

    .line 193
    .line 194
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    .line 209
    .line 210
    :cond_c
    iget p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 211
    .line 212
    sub-int/2addr v9, p1

    .line 213
    iput v9, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 214
    .line 215
    return-void
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lcom/android/internal/R$styleable;->Keyboard:[I

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget p2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 12
    .line 13
    div-int/lit8 v0, p2, 0xa

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p1, v1, p2, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 21
    .line 22
    iget p2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 23
    .line 24
    const/16 v0, 0x32

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {p1, v2, p2, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 32
    .line 33
    const/4 p2, 0x2

    .line 34
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 35
    .line 36
    invoke-static {p1, p2, v0, v1}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 44
    .line 45
    invoke-static {p1, p2, v0, v1}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 50
    .line 51
    iget p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 52
    .line 53
    int-to-float p2, p2

    .line 54
    sget v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    .line 55
    .line 56
    mul-float/2addr p2, v0

    .line 57
    float-to-int p2, p2

    .line 58
    mul-int/2addr p2, p2

    .line 59
    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 2

    .line 1
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Row"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :cond_1
    return-void
.end method


# virtual methods
.method public createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 7

    new-instance v6, Landroid/inputmethodservice/Keyboard$Key;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method public createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .locals 1

    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method public getHorizontalGap()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method public getKeyHeight()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method public getKeyWidth()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-ltz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    if-ltz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ge p2, v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 25
    .line 26
    div-int/2addr p2, v0

    .line 27
    mul-int/lit8 p2, p2, 0xa

    .line 28
    .line 29
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 30
    .line 31
    div-int/2addr p1, v0

    .line 32
    add-int/2addr p1, p2

    .line 33
    const/16 p2, 0x32

    .line 34
    .line 35
    if-ge p1, p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 38
    .line 39
    aget-object p1, p2, p1

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    new-array p1, p1, [I

    .line 44
    .line 45
    return-object p1
.end method

.method public getShiftKeyIndex()I
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method public getVerticalGap()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method public final resize(II)V
    .locals 9

    .line 1
    iget-object p2, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    if-ge v1, p2, :cond_3

    .line 10
    .line 11
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/inputmethodservice/Keyboard$Row;

    .line 18
    .line 19
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    move v4, v0

    .line 26
    move v5, v4

    .line 27
    move v6, v5

    .line 28
    :goto_1
    if-ge v4, v3, :cond_1

    .line 29
    .line 30
    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 37
    .line 38
    if-lez v4, :cond_0

    .line 39
    .line 40
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    .line 41
    .line 42
    add-int/2addr v5, v8

    .line 43
    :cond_0
    iget v7, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 44
    .line 45
    add-int/2addr v6, v7

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int v4, v5, v6

    .line 50
    .line 51
    if-le v4, p1, :cond_2

    .line 52
    .line 53
    sub-int v4, p1, v5

    .line 54
    .line 55
    int-to-float v4, v4

    .line 56
    int-to-float v5, v6

    .line 57
    div-float/2addr v4, v5

    .line 58
    move v5, v0

    .line 59
    move v6, v5

    .line 60
    :goto_2
    if-ge v5, v3, :cond_2

    .line 61
    .line 62
    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 69
    .line 70
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 71
    .line 72
    int-to-float v8, v8

    .line 73
    mul-float/2addr v8, v4

    .line 74
    float-to-int v8, v8

    .line 75
    iput v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 76
    .line 77
    iput v6, v7, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 78
    .line 79
    iget v7, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    .line 80
    .line 81
    add-int/2addr v8, v7

    .line 82
    add-int/2addr v6, v8

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 90
    .line 91
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return-void
.end method

.method public setKeyHeight(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return-void
.end method

.method public setKeyWidth(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return-void
.end method

.method public setShifted(Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    iput-boolean p1, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 18
    .line 19
    if-eq v0, p1, :cond_2

    .line 20
    .line 21
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_2
    return v2
.end method

.method public setVerticalGap(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return-void
.end method
