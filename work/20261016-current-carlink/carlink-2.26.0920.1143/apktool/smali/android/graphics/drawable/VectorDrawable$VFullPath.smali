.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VFullPath"
.end annotation


# static fields
.field private static final FILL_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_ALPHA_INDEX:I = 0x4

.field private static final FILL_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_COLOR_INDEX:I = 0x3

.field private static final FILL_TYPE_INDEX:I = 0xb

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_ALPHA_INDEX:I = 0x2

.field private static final STROKE_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_COLOR_INDEX:I = 0x1

.field private static final STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final STROKE_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_WIDTH_INDEX:I = 0x0

.field private static final TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final TRIM_PATH_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_END_INDEX:I = 0x6

.field private static final TRIM_PATH_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final TRIM_PATH_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_START_INDEX:I = 0x5

.field private static final sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFillColors:Landroid/content/res/ComplexColor;

.field private final mNativePtr:J

.field private mPropertyData:[B

.field mStrokeColors:Landroid/content/res/ComplexColor;

.field private mThemeAttrs:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;

    .line 9
    .line 10
    const-string/jumbo v1, "strokeWidth"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;

    .line 19
    .line 20
    const-string/jumbo v1, "strokeColor"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;

    .line 29
    .line 30
    const-string/jumbo v1, "strokeAlpha"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    .line 37
    .line 38
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;

    .line 39
    .line 40
    const-string v1, "fillColor"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    .line 46
    .line 47
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;

    .line 48
    .line 49
    const-string v1, "fillAlpha"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    .line 55
    .line 56
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;

    .line 57
    .line 58
    const-string/jumbo v1, "trimPathStart"

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    .line 65
    .line 66
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;

    .line 67
    .line 68
    const-string/jumbo v1, "trimPathEnd"

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    .line 75
    .line 76
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;

    .line 77
    .line 78
    const-string/jumbo v1, "trimPathOffset"

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    .line 85
    .line 86
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;

    .line 87
    .line 88
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;-><init>()V

    .line 89
    .line 90
    .line 91
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 3
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 4
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->access$4800()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 7
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 8
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$4900(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 9
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 10
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 11
    iget-object p1, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    return-void
.end method

.method public static synthetic access$4000()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    return-object v0
.end method

.method public static synthetic access$4100()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method public static synthetic access$4200()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method public static synthetic access$4300()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method public static synthetic access$4400()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method public static synthetic access$4500()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    return-object v0
.end method

.method public static synthetic access$4600()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    return-object v0
.end method

.method public static synthetic access$4700()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    return-object v0
.end method

.method private canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 6
    .line 7
    const/16 v3, 0x30

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-array v2, v3, [B

    .line 12
    .line 13
    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 14
    .line 15
    :cond_0
    iget-wide v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 16
    .line 17
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 18
    .line 19
    invoke-static {v4, v5, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->access$5200(J[BI)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_b

    .line 24
    .line 25
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 26
    .line 27
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x4

    .line 44
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/16 v7, 0x8

    .line 49
    .line 50
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    const/16 v9, 0xc

    .line 55
    .line 56
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const/16 v11, 0x10

    .line 61
    .line 62
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    const/16 v12, 0x14

    .line 67
    .line 68
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    const/16 v13, 0x18

    .line 73
    .line 74
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    const/16 v14, 0x1c

    .line 79
    .line 80
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    const/16 v15, 0x20

    .line 85
    .line 86
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    const/16 v5, 0x24

    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    const/16 v7, 0x28

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    const/16 v9, 0x2c

    .line 103
    .line 104
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iget v9, v0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 111
    .line 112
    .line 113
    move-result v16

    .line 114
    or-int v9, v9, v16

    .line 115
    .line 116
    iput v9, v0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 117
    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    iput-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_1

    .line 129
    .line 130
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    .line 131
    .line 132
    move/from16 v16, v10

    .line 133
    .line 134
    iget-wide v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 135
    .line 136
    invoke-static {v9, v10, v3}, Landroid/graphics/drawable/VectorDrawable;->access$2000(JLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    move/from16 v16, v10

    .line 141
    .line 142
    :goto_0
    const/4 v3, 0x2

    .line 143
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_2

    .line 148
    .line 149
    new-instance v9, Landroid/util/PathParser$PathData;

    .line 150
    .line 151
    invoke-direct {v9, v3}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iput-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 155
    .line 156
    iget-wide v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 157
    .line 158
    move/from16 v17, v6

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-static {v9, v10, v3, v6}, Landroid/graphics/drawable/VectorDrawable;->access$3900(JLjava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    move/from16 v17, v6

    .line 169
    .line 170
    :goto_1
    const/4 v3, 0x1

    .line 171
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const/4 v6, 0x0

    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    instance-of v9, v3, Landroid/content/res/GradientColor;

    .line 179
    .line 180
    if-eqz v9, :cond_3

    .line 181
    .line 182
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 183
    .line 184
    move-object v9, v3

    .line 185
    check-cast v9, Landroid/content/res/GradientColor;

    .line 186
    .line 187
    invoke-virtual {v9}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    goto :goto_3

    .line 192
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->isStateful()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eqz v9, :cond_4

    .line 197
    .line 198
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    iput-object v6, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 202
    .line 203
    :goto_2
    move-object v9, v6

    .line 204
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    move/from16 v23, v10

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_5
    move-object v9, v6

    .line 212
    move/from16 v23, v16

    .line 213
    .line 214
    :goto_4
    const/4 v3, 0x3

    .line 215
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    if-eqz v3, :cond_8

    .line 220
    .line 221
    instance-of v10, v3, Landroid/content/res/GradientColor;

    .line 222
    .line 223
    if-eqz v10, :cond_6

    .line 224
    .line 225
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 226
    .line 227
    move-object v6, v3

    .line 228
    check-cast v6, Landroid/content/res/GradientColor;

    .line 229
    .line 230
    invoke-virtual {v6}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    goto :goto_5

    .line 235
    :cond_6
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->isStateful()Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-eqz v10, :cond_7

    .line 240
    .line 241
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_7
    iput-object v6, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 245
    .line 246
    :goto_5
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    move v10, v2

    .line 251
    move/from16 v21, v3

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_8
    move v10, v2

    .line 255
    move/from16 v21, v17

    .line 256
    .line 257
    :goto_6
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 258
    .line 259
    const-wide/16 v16, 0x0

    .line 260
    .line 261
    if-eqz v9, :cond_9

    .line 262
    .line 263
    invoke-virtual {v9}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 264
    .line 265
    .line 266
    move-result-wide v18

    .line 267
    move-wide/from16 v32, v18

    .line 268
    .line 269
    move/from16 v18, v10

    .line 270
    .line 271
    move-wide/from16 v9, v32

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_9
    move/from16 v18, v10

    .line 275
    .line 276
    move-wide/from16 v9, v16

    .line 277
    .line 278
    :goto_7
    invoke-static {v2, v3, v9, v10}, Landroid/graphics/drawable/VectorDrawable;->access$5300(JJ)V

    .line 279
    .line 280
    .line 281
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 282
    .line 283
    if-eqz v6, :cond_a

    .line 284
    .line 285
    invoke-virtual {v6}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 286
    .line 287
    .line 288
    move-result-wide v16

    .line 289
    :cond_a
    move-wide/from16 v9, v16

    .line 290
    .line 291
    invoke-static {v2, v3, v9, v10}, Landroid/graphics/drawable/VectorDrawable;->access$5400(JJ)V

    .line 292
    .line 293
    .line 294
    const/16 v2, 0xc

    .line 295
    .line 296
    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 297
    .line 298
    .line 299
    move-result v24

    .line 300
    const/16 v2, 0x8

    .line 301
    .line 302
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 303
    .line 304
    .line 305
    move-result v29

    .line 306
    const/16 v2, 0x9

    .line 307
    .line 308
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 309
    .line 310
    .line 311
    move-result v30

    .line 312
    const/16 v2, 0xa

    .line 313
    .line 314
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 315
    .line 316
    .line 317
    move-result v28

    .line 318
    const/16 v2, 0xb

    .line 319
    .line 320
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 321
    .line 322
    .line 323
    move-result v22

    .line 324
    const/4 v2, 0x4

    .line 325
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 326
    .line 327
    .line 328
    move-result v20

    .line 329
    const/4 v2, 0x6

    .line 330
    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 331
    .line 332
    .line 333
    move-result v26

    .line 334
    const/4 v2, 0x7

    .line 335
    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 336
    .line 337
    .line 338
    move-result v27

    .line 339
    const/4 v2, 0x5

    .line 340
    invoke-virtual {v1, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 341
    .line 342
    .line 343
    move-result v25

    .line 344
    const/16 v2, 0xd

    .line 345
    .line 346
    move/from16 v3, v18

    .line 347
    .line 348
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 349
    .line 350
    .line 351
    move-result v31

    .line 352
    iget-wide v1, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 353
    .line 354
    move-wide/from16 v18, v1

    .line 355
    .line 356
    invoke-static/range {v18 .. v31}, Landroid/graphics/drawable/VectorDrawable;->access$5500(JFIFIFFFFFIII)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 361
    .line 362
    const-string v2, "Error: inconsistent property count"

    .line 363
    .line 364
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 24
    .line 25
    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 38
    .line 39
    instance-of v2, v0, Landroid/content/res/GradientColor;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 44
    .line 45
    check-cast v0, Landroid/content/res/GradientColor;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->access$5300(JJ)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    instance-of v2, v0, Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v2, v3, v0}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 81
    .line 82
    instance-of v0, p1, Landroid/content/res/GradientColor;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 87
    .line 88
    check-cast p1, Landroid/content/res/GradientColor;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->access$5400(JJ)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    instance-of v0, p1, Landroid/content/res/ColorStateList;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_1
    return-void
.end method

.method public canApplyTheme()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 14
    .line 15
    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_2
    :goto_0
    return v1
.end method

.method public getFillAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6200(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFillColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6100(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method public getNativeSize()I
    .locals 1

    const/16 v0, 0x108

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/util/Property;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public getPropertyIndex(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getStrokeAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5900(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStrokeColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5600(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5700(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTrimPathEnd()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6600(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTrimPathOffset()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6800(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTrimPathStart()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6400(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    instance-of v1, v0, Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    .line 2
    .line 3
    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onStateChange([I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    instance-of v0, v0, Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 16
    .line 17
    check-cast v3, Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eq v0, v3, :cond_0

    .line 24
    .line 25
    move v4, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v4, v2

    .line 28
    :goto_0
    or-int/2addr v4, v2

    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 32
    .line 33
    invoke-static {v5, v6, v3}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v2

    .line 38
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    instance-of v0, v0, Landroid/content/res/ColorStateList;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 51
    .line 52
    check-cast v3, Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eq v0, p1, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move v1, v2

    .line 62
    :goto_2
    or-int/2addr v4, v1

    .line 63
    if-eq v0, p1, :cond_4

    .line 64
    .line 65
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 66
    .line 67
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return v4
.end method

.method public setFillAlpha(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6300(JF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6000(JF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5800(JF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6700(JF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6900(JF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6500(JF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
