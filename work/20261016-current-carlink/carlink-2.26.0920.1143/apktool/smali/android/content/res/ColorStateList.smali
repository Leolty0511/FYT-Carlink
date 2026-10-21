.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final EMPTY:[[I

.field private static final TAG:Ljava/lang/String; = "ColorStateList"

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private mColors:[I

.field private mDefaultColor:I

.field private mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private mIsOpaque:Z

.field private mStateSpecs:[[I

.field private mThemeAttrs:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [[I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    new-array v2, v1, [I

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/content/res/ColorStateList$1;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 8
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 9
    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 10
    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 11
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 12
    iget-object p1, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    :cond_0
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 4
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 5
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/res/ColorStateList;)I
    .locals 0

    iget p0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return p0
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

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
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v1, :cond_4

    .line 11
    .line 12
    aget-object v5, v0, v3

    .line 13
    .line 14
    if-eqz v5, :cond_3

    .line 15
    .line 16
    sget-object v6, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    .line 17
    .line 18
    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    aget-object v6, v0, v3

    .line 23
    .line 24
    aget v6, v6, v2

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    iget-object v6, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 29
    .line 30
    aget v6, v6, v3

    .line 31
    .line 32
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    int-to-float v6, v6

    .line 37
    const/high16 v7, 0x437f0000    # 255.0f

    .line 38
    .line 39
    div-float/2addr v6, v7

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 42
    .line 43
    :goto_1
    aget-object v7, v0, v3

    .line 44
    .line 45
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    aput-object v7, v0, v3

    .line 50
    .line 51
    const/4 v8, 0x1

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    move v4, v8

    .line 55
    :cond_2
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 56
    .line 57
    aget v7, v7, v3

    .line 58
    .line 59
    invoke-virtual {v5, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 68
    .line 69
    invoke-direct {p0, v7, v6}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    aput v6, v8, v3

    .line 74
    .line 75
    iget v6, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    or-int/2addr v6, v7

    .line 82
    iput v6, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    .line 86
    .line 87
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-nez v4, :cond_5

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 94
    .line 95
    :cond_5
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 2
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 4
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "selector"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, ": invalid color state list tag "

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    add-int/2addr v2, v3

    .line 11
    const-class v4, [I

    .line 12
    .line 13
    const/16 v5, 0x14

    .line 14
    .line 15
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, [[I

    .line 20
    .line 21
    array-length v5, v4

    .line 22
    new-array v5, v5, [[I

    .line 23
    .line 24
    array-length v6, v4

    .line 25
    new-array v6, v6, [I

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/high16 v8, -0x10000

    .line 29
    .line 30
    move v9, v7

    .line 31
    move v10, v9

    .line 32
    move v11, v10

    .line 33
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    if-eq v12, v3, :cond_9

    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v13

    .line 43
    if-ge v13, v2, :cond_0

    .line 44
    .line 45
    const/4 v14, 0x3

    .line 46
    if-eq v12, v14, :cond_9

    .line 47
    .line 48
    :cond_0
    const/4 v14, 0x2

    .line 49
    if-ne v12, v14, :cond_8

    .line 50
    .line 51
    if-gt v13, v2, :cond_8

    .line 52
    .line 53
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    const-string/jumbo v13, "item"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    if-nez v12, :cond_1

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_1
    sget-object v12, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    .line 69
    .line 70
    move-object/from16 v13, p1

    .line 71
    .line 72
    move-object/from16 v14, p4

    .line 73
    .line 74
    invoke-static {v13, v14, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    const v3, -0xff01

    .line 83
    .line 84
    .line 85
    invoke-virtual {v12, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/high16 v7, 0x3f800000    # 1.0f

    .line 90
    .line 91
    move/from16 v17, v2

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    invoke-virtual {v12, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 99
    .line 100
    .line 101
    move-result v16

    .line 102
    or-int v9, v9, v16

    .line 103
    .line 104
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    .line 106
    .line 107
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    new-array v2, v12, [I

    .line 112
    .line 113
    move/from16 v18, v9

    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v13, 0x0

    .line 117
    :goto_1
    if-ge v9, v12, :cond_4

    .line 118
    .line 119
    move/from16 v19, v12

    .line 120
    .line 121
    invoke-interface {v1, v9}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    const v14, 0x10101a5

    .line 126
    .line 127
    .line 128
    if-eq v12, v14, :cond_3

    .line 129
    .line 130
    const v14, 0x101031f

    .line 131
    .line 132
    .line 133
    if-eq v12, v14, :cond_3

    .line 134
    .line 135
    add-int/lit8 v14, v13, 0x1

    .line 136
    .line 137
    move/from16 v20, v14

    .line 138
    .line 139
    const/4 v14, 0x0

    .line 140
    invoke-interface {v1, v9, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 141
    .line 142
    .line 143
    move-result v21

    .line 144
    if-eqz v21, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    neg-int v12, v12

    .line 148
    :goto_2
    aput v12, v2, v13

    .line 149
    .line 150
    move/from16 v13, v20

    .line 151
    .line 152
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 153
    .line 154
    move-object/from16 v14, p4

    .line 155
    .line 156
    move/from16 v12, v19

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    invoke-static {v2, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-direct {v0, v3, v7}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v11, :cond_5

    .line 168
    .line 169
    array-length v7, v2

    .line 170
    if-nez v7, :cond_6

    .line 171
    .line 172
    :cond_5
    move v8, v3

    .line 173
    :cond_6
    if-eqz v15, :cond_7

    .line 174
    .line 175
    const/4 v10, 0x1

    .line 176
    :cond_7
    invoke-static {v6, v11, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-static {v5, v11, v15}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    move-object v5, v3

    .line 185
    check-cast v5, [[I

    .line 186
    .line 187
    invoke-static {v4, v11, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object v4, v2

    .line 192
    check-cast v4, [[I

    .line 193
    .line 194
    add-int/lit8 v11, v11, 0x1

    .line 195
    .line 196
    move/from16 v2, v17

    .line 197
    .line 198
    move/from16 v9, v18

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_8
    :goto_3
    move/from16 v17, v2

    .line 202
    .line 203
    move/from16 v2, v17

    .line 204
    .line 205
    :goto_4
    const/4 v3, 0x1

    .line 206
    const/4 v7, 0x0

    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_9
    iput v9, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 210
    .line 211
    iput v8, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 212
    .line 213
    if-eqz v10, :cond_a

    .line 214
    .line 215
    new-array v1, v11, [[I

    .line 216
    .line 217
    iput-object v1, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 218
    .line 219
    const/4 v2, 0x0

    .line 220
    invoke-static {v5, v2, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_a
    const/4 v2, 0x0

    .line 225
    const/4 v1, 0x0

    .line 226
    iput-object v1, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 227
    .line 228
    :goto_5
    new-array v1, v11, [I

    .line 229
    .line 230
    iput-object v1, v0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 231
    .line 232
    new-array v3, v11, [[I

    .line 233
    .line 234
    iput-object v3, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 235
    .line 236
    invoke-static {v6, v2, v1, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 240
    .line 241
    invoke-static {v4, v2, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    .line 243
    .line 244
    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method private modulateColorAlpha(IF)I
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v0, p2, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    mul-float/2addr v0, p2

    .line 14
    const/high16 p2, 0x3f000000    # 0.5f

    .line 15
    .line 16
    add-float/2addr v0, p2

    .line 17
    float-to-int p2, v0

    .line 18
    const/4 v0, 0x0

    .line 19
    const/16 v1, 0xff

    .line 20
    .line 21
    invoke-static {p2, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const v0, 0xffffff

    .line 26
    .line 27
    .line 28
    and-int/2addr p1, v0

    .line 29
    shl-int/lit8 p2, p2, 0x18

    .line 30
    .line 31
    or-int/2addr p1, p2

    .line 32
    return p1
.end method

.method private onColorsChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lez v2, :cond_3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    aget v5, v1, v4

    .line 11
    .line 12
    add-int/lit8 v6, v2, -0x1

    .line 13
    .line 14
    :goto_0
    if-lez v6, :cond_1

    .line 15
    .line 16
    aget-object v7, v0, v6

    .line 17
    .line 18
    array-length v7, v7

    .line 19
    if-nez v7, :cond_0

    .line 20
    .line 21
    aget v5, v1, v6

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v6, v6, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    move v0, v4

    .line 28
    :goto_2
    if-ge v0, v2, :cond_4

    .line 29
    .line 30
    aget v6, v1, v0

    .line 31
    .line 32
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/16 v7, 0xff

    .line 37
    .line 38
    if-eq v6, v7, :cond_2

    .line 39
    .line 40
    move v3, v4

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    const/high16 v5, -0x10000

    .line 46
    .line 47
    :cond_4
    :goto_3
    iput v5, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 48
    .line 49
    iput-boolean v3, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 50
    .line 51
    return-void
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    sget-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object v2

    .line 26
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    sub-int/2addr v1, v2

    .line 35
    :goto_0
    if-ltz v1, :cond_3

    .line 36
    .line 37
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 58
    .line 59
    sget-object v3, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 60
    .line 61
    new-array v2, v2, [I

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    aput p0, v2, v4

    .line 65
    .line 66
    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 67
    .line 68
    .line 69
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return-object v1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorForState([II)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 18
    .line 19
    aget p1, p1, v1

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return p2
.end method

.method public getColors()[I
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 13
    .line 14
    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public getStates()[[I
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 2

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method public hasState(I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_3

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    array-length v5, v4

    .line 11
    move v6, v2

    .line 12
    :goto_1
    if-ge v6, v5, :cond_2

    .line 13
    .line 14
    aget v7, v4, v6

    .line 15
    .line 16
    if-eq v7, p1, :cond_1

    .line 17
    .line 18
    not-int v8, p1

    .line 19
    if-ne v7, v8, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_2
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    return v2
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public isStateful()Z
    .locals 4

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    aget-object v0, v0, v2

    array-length v0, v0

    if-lez v0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ColorStateList{mThemeAttrs="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "mChangingConfigurations="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "mStateSpecs="

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 35
    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "mColors="

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 50
    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string/jumbo v1, "mDefaultColor="

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 65
    .line 66
    const/16 v2, 0x7d

    .line 67
    .line 68
    invoke-static {v0, v1, v2}, Landroid/app/m;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v1, v0, [I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 10
    .line 11
    aget v3, v3, v2

    .line 12
    .line 13
    const v4, 0xffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr v3, v4

    .line 17
    shl-int/lit8 v4, p1, 0x18

    .line 18
    .line 19
    or-int/2addr v3, v4

    .line 20
    aput v3, v1, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 28
    .line 29
    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p2, "ColorStateList"

    .line 8
    .line 9
    const-string v0, "Wrote partially-resolved ColorStateList to parcel!"

    .line 10
    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 15
    .line 16
    array-length p2, p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-ge v0, p2, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 24
    .line 25
    aget-object v1, v1, v0

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
