.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATTERN_STORAGE:I = 0x800

.field private static final NO_MATCH:I = -0x1

.field private static final PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final TOKEN_TYPE_ANY:I = 0x1

.field private static final TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final TOKEN_TYPE_LITERAL:I = 0x0

.field private static final TOKEN_TYPE_SET:I = 0x2

.field private static final sParsedPatternScratch:[I


# instance fields
.field private final mParsedPattern:[I

.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 6
    .line 7
    new-instance v0, Landroid/os/PatternMatcher$1;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 4
    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    :goto_0
    return-void
.end method

.method private static isParsedModifier(I)Z
    .locals 1

    const/4 v0, -0x8

    if-eq p0, v0, :cond_1

    const/4 v0, -0x7

    if-eq p0, v0, :cond_1

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    const/4 v0, -0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static matchAdvancedPattern([ILjava/lang/String;)Z
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    array-length v10, v9

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v11

    .line 8
    const/4 v12, 0x0

    .line 9
    move v0, v12

    .line 10
    move v1, v0

    .line 11
    move v2, v1

    .line 12
    move v13, v2

    .line 13
    :goto_0
    const/4 v3, 0x1

    .line 14
    if-ge v0, v10, :cond_a

    .line 15
    .line 16
    aget v4, v9, v0

    .line 17
    .line 18
    const/4 v5, -0x4

    .line 19
    const/4 v6, 0x2

    .line 20
    const/4 v14, -0x1

    .line 21
    if-eq v4, v5, :cond_3

    .line 22
    .line 23
    const/4 v1, -0x2

    .line 24
    if-eq v4, v1, :cond_0

    .line 25
    .line 26
    if-eq v4, v14, :cond_0

    .line 27
    .line 28
    add-int/lit8 v1, v0, 0x1

    .line 29
    .line 30
    move v15, v0

    .line 31
    move/from16 v16, v2

    .line 32
    .line 33
    move v4, v12

    .line 34
    goto :goto_4

    .line 35
    :cond_0
    if-ne v4, v14, :cond_1

    .line 36
    .line 37
    move v1, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v1, 0x3

    .line 40
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 41
    .line 42
    :goto_2
    add-int/2addr v0, v3

    .line 43
    if-ge v0, v10, :cond_2

    .line 44
    .line 45
    aget v4, v9, v0

    .line 46
    .line 47
    const/4 v5, -0x3

    .line 48
    if-eq v4, v5, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    add-int/lit8 v4, v0, -0x1

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    move v15, v2

    .line 56
    move/from16 v16, v4

    .line 57
    .line 58
    move v4, v1

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    move v15, v1

    .line 63
    move/from16 v16, v2

    .line 64
    .line 65
    move v4, v3

    .line 66
    :goto_3
    move v1, v0

    .line 67
    :goto_4
    if-lt v1, v10, :cond_4

    .line 68
    .line 69
    :goto_5
    move/from16 v17, v1

    .line 70
    .line 71
    move v5, v3

    .line 72
    move v6, v5

    .line 73
    goto :goto_6

    .line 74
    :cond_4
    aget v0, v9, v1

    .line 75
    .line 76
    const/4 v2, -0x8

    .line 77
    const v5, 0x7fffffff

    .line 78
    .line 79
    .line 80
    if-eq v0, v2, :cond_7

    .line 81
    .line 82
    const/4 v2, -0x7

    .line 83
    if-eq v0, v2, :cond_6

    .line 84
    .line 85
    const/4 v2, -0x5

    .line 86
    if-eq v0, v2, :cond_5

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    aget v0, v9, v1

    .line 92
    .line 93
    add-int/2addr v1, v3

    .line 94
    aget v2, v9, v1

    .line 95
    .line 96
    add-int/2addr v1, v6

    .line 97
    move v5, v0

    .line 98
    move/from16 v17, v1

    .line 99
    .line 100
    move v6, v2

    .line 101
    goto :goto_6

    .line 102
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    move/from16 v17, v1

    .line 105
    .line 106
    move v6, v5

    .line 107
    move v5, v12

    .line 108
    goto :goto_6

    .line 109
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    move/from16 v17, v1

    .line 112
    .line 113
    move v6, v5

    .line 114
    move v5, v3

    .line 115
    :goto_6
    if-le v5, v6, :cond_8

    .line 116
    .line 117
    return v12

    .line 118
    :cond_8
    move-object/from16 v0, p1

    .line 119
    .line 120
    move v1, v13

    .line 121
    move v2, v11

    .line 122
    move v3, v4

    .line 123
    move v4, v5

    .line 124
    move v5, v6

    .line 125
    move-object/from16 v6, p0

    .line 126
    .line 127
    move v7, v15

    .line 128
    move/from16 v8, v16

    .line 129
    .line 130
    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-ne v0, v14, :cond_9

    .line 135
    .line 136
    return v12

    .line 137
    :cond_9
    add-int/2addr v13, v0

    .line 138
    move v1, v15

    .line 139
    move/from16 v2, v16

    .line 140
    .line 141
    move/from16 v0, v17

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    if-lt v0, v10, :cond_b

    .line 146
    .line 147
    if-lt v13, v11, :cond_b

    .line 148
    .line 149
    move v12, v3

    .line 150
    :cond_b
    return v12
.end method

.method private static matchChar(Ljava/lang/String;III[III)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lt p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 p2, 0x1

    .line 6
    if-eqz p3, :cond_8

    .line 7
    .line 8
    if-eq p3, p2, :cond_7

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p3, v1, :cond_4

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq p3, v1, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    if-ge p5, p6, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    aget v1, p4, p5

    .line 24
    .line 25
    if-lt p3, v1, :cond_2

    .line 26
    .line 27
    add-int/lit8 v1, p5, 0x1

    .line 28
    .line 29
    aget v1, p4, v1

    .line 30
    .line 31
    if-gt p3, v1, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    add-int/lit8 p5, p5, 0x2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    return p2

    .line 38
    :cond_4
    :goto_1
    if-ge p5, p6, :cond_6

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    aget v1, p4, p5

    .line 45
    .line 46
    if-lt p3, v1, :cond_5

    .line 47
    .line 48
    add-int/lit8 v1, p5, 0x1

    .line 49
    .line 50
    aget v1, p4, v1

    .line 51
    .line 52
    if-gt p3, v1, :cond_5

    .line 53
    .line 54
    return p2

    .line 55
    :cond_5
    add-int/lit8 p5, p5, 0x2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_6
    return v0

    .line 59
    :cond_7
    return p2

    .line 60
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    aget p1, p4, p5

    .line 65
    .line 66
    if-ne p0, p1, :cond_9

    .line 67
    .line 68
    move v0, p2

    .line 69
    :cond_9
    return v0
.end method

.method private static matchChars(Ljava/lang/String;IIIII[III)I
    .locals 9

    const/4 v0, 0x0

    move v1, p5

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v3, p1, v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, p4

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method public static matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-gtz p0, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    move v5, v1

    .line 26
    move v6, v5

    .line 27
    :goto_0
    const/16 v7, 0x2a

    .line 28
    .line 29
    const/16 v8, 0x2e

    .line 30
    .line 31
    if-ge v5, v0, :cond_11

    .line 32
    .line 33
    if-ge v6, v3, :cond_11

    .line 34
    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    if-ge v5, v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v9, v1

    .line 45
    :goto_1
    const/16 v10, 0x5c

    .line 46
    .line 47
    if-ne v4, v10, :cond_3

    .line 48
    .line 49
    move v11, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move v11, v1

    .line 52
    :goto_2
    if-eqz v11, :cond_5

    .line 53
    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    if-ge v5, v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move v4, v1

    .line 64
    :goto_3
    move v12, v9

    .line 65
    move v9, v4

    .line 66
    move v4, v12

    .line 67
    :cond_5
    if-ne v9, v7, :cond_f

    .line 68
    .line 69
    if-nez v11, :cond_c

    .line 70
    .line 71
    if-ne v4, v8, :cond_c

    .line 72
    .line 73
    add-int/lit8 v4, v0, -0x1

    .line 74
    .line 75
    if-lt v5, v4, :cond_6

    .line 76
    .line 77
    return v2

    .line 78
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-ne v4, v10, :cond_8

    .line 85
    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    if-ge v5, v0, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    goto :goto_4

    .line 95
    :cond_7
    move v4, v1

    .line 96
    :cond_8
    :goto_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-ne v7, v4, :cond_9

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    if-lt v6, v3, :cond_8

    .line 106
    .line 107
    :goto_5
    if-ne v6, v3, :cond_a

    .line 108
    .line 109
    return v1

    .line 110
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    if-ge v5, v0, :cond_b

    .line 113
    .line 114
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    goto :goto_6

    .line 119
    :cond_b
    move v4, v1

    .line 120
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_c
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eq v7, v4, :cond_d

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    if-lt v6, v3, :cond_c

    .line 133
    .line 134
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    if-ge v5, v0, :cond_e

    .line 137
    .line 138
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    goto :goto_0

    .line 143
    :cond_e
    move v4, v1

    .line 144
    goto :goto_0

    .line 145
    :cond_f
    if-eq v4, v8, :cond_10

    .line 146
    .line 147
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eq v7, v4, :cond_10

    .line 152
    .line 153
    return v1

    .line 154
    :cond_10
    add-int/lit8 v6, v6, 0x1

    .line 155
    .line 156
    move v4, v9

    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_11
    if-lt v5, v0, :cond_12

    .line 160
    .line 161
    if-lt v6, v3, :cond_12

    .line 162
    .line 163
    return v2

    .line 164
    :cond_12
    add-int/lit8 v0, v0, -0x2

    .line 165
    .line 166
    if-ne v5, v0, :cond_13

    .line 167
    .line 168
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-ne p1, v8, :cond_13

    .line 173
    .line 174
    add-int/2addr v5, v2

    .line 175
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    if-ne p0, v7, :cond_13

    .line 180
    .line 181
    return v2

    .line 182
    :cond_13
    return v1
.end method

.method public static matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-nez p3, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_1
    const/4 v1, 0x1

    .line 13
    if-ne p3, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_2
    const/4 v1, 0x2

    .line 21
    if-ne p3, v1, :cond_3

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_3
    const/4 p1, 0x3

    .line 29
    if-ne p3, p1, :cond_4

    .line 30
    .line 31
    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_4
    return v0
.end method

.method public static declared-synchronized parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .locals 14

    .line 1
    const-class v0, Landroid/os/PatternMatcher;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    move v6, v5

    .line 13
    move v7, v6

    .line 14
    :goto_0
    if-ge v3, v1, :cond_18

    .line 15
    .line 16
    const/16 v8, 0x7fd

    .line 17
    .line 18
    if-gt v5, v8, :cond_17

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    const/16 v9, 0x2a

    .line 25
    .line 26
    const/16 v10, 0x7d

    .line 27
    .line 28
    const/4 v11, 0x1

    .line 29
    if-eq v8, v9, :cond_b

    .line 30
    .line 31
    const/16 v9, 0x2b

    .line 32
    .line 33
    if-eq v8, v9, :cond_9

    .line 34
    .line 35
    const/16 v9, 0x2e

    .line 36
    .line 37
    if-eq v8, v9, :cond_8

    .line 38
    .line 39
    const/16 v9, 0x7b

    .line 40
    .line 41
    if-eq v8, v9, :cond_6

    .line 42
    .line 43
    if-eq v8, v10, :cond_5

    .line 44
    .line 45
    const/4 v9, -0x2

    .line 46
    const/4 v12, -0x1

    .line 47
    packed-switch v8, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    :goto_1
    move v9, v11

    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :pswitch_0
    if-nez v4, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 57
    .line 58
    add-int/lit8 v7, v5, -0x1

    .line 59
    .line 60
    aget v7, v4, v7

    .line 61
    .line 62
    if-eq v7, v12, :cond_1

    .line 63
    .line 64
    if-eq v7, v9, :cond_1

    .line 65
    .line 66
    add-int/lit8 v7, v5, 0x1

    .line 67
    .line 68
    const/4 v9, -0x3

    .line 69
    aput v9, v4, v5

    .line 70
    .line 71
    move v4, v2

    .line 72
    move v9, v4

    .line 73
    move v5, v7

    .line 74
    move v7, v9

    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string v1, "You must define characters in a set."

    .line 80
    .line 81
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    if-ge v3, v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string v1, "Escape found at end of pattern!"

    .line 97
    .line 98
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :pswitch_2
    if-eqz v4, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .line 106
    .line 107
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    const/16 v10, 0x5e

    .line 112
    .line 113
    if-ne v8, v10, :cond_4

    .line 114
    .line 115
    sget-object v3, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 116
    .line 117
    add-int/lit8 v8, v5, 0x1

    .line 118
    .line 119
    aput v9, v3, v5

    .line 120
    .line 121
    move v3, v4

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 124
    .line 125
    add-int/lit8 v8, v5, 0x1

    .line 126
    .line 127
    aput v12, v4, v5

    .line 128
    .line 129
    :goto_2
    move v5, v8

    .line 130
    add-int/2addr v3, v11

    .line 131
    move v4, v11

    .line 132
    goto :goto_0

    .line 133
    :cond_5
    if-eqz v6, :cond_d

    .line 134
    .line 135
    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 136
    .line 137
    add-int/lit8 v9, v5, 0x1

    .line 138
    .line 139
    const/4 v12, -0x6

    .line 140
    aput v12, v6, v5

    .line 141
    .line 142
    move v6, v2

    .line 143
    move v5, v9

    .line 144
    move v9, v6

    .line 145
    goto/16 :goto_5

    .line 146
    .line 147
    :cond_6
    if-nez v4, :cond_d

    .line 148
    .line 149
    if-eqz v5, :cond_7

    .line 150
    .line 151
    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 152
    .line 153
    add-int/lit8 v9, v5, -0x1

    .line 154
    .line 155
    aget v9, v6, v9

    .line 156
    .line 157
    invoke-static {v9}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-nez v9, :cond_7

    .line 162
    .line 163
    add-int/lit8 v9, v5, 0x1

    .line 164
    .line 165
    const/4 v12, -0x5

    .line 166
    aput v12, v6, v5

    .line 167
    .line 168
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    move v5, v9

    .line 171
    move v6, v11

    .line 172
    goto :goto_4

    .line 173
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string v1, "Modifier must follow a token."

    .line 176
    .line 177
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_8
    if-nez v4, :cond_d

    .line 182
    .line 183
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 184
    .line 185
    add-int/lit8 v12, v5, 0x1

    .line 186
    .line 187
    const/4 v13, -0x4

    .line 188
    aput v13, v9, v5

    .line 189
    .line 190
    :goto_3
    move v9, v2

    .line 191
    move v5, v12

    .line 192
    goto :goto_5

    .line 193
    :cond_9
    if-nez v4, :cond_d

    .line 194
    .line 195
    if-eqz v5, :cond_a

    .line 196
    .line 197
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 198
    .line 199
    add-int/lit8 v12, v5, -0x1

    .line 200
    .line 201
    aget v12, v9, v12

    .line 202
    .line 203
    invoke-static {v12}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-nez v12, :cond_a

    .line 208
    .line 209
    add-int/lit8 v12, v5, 0x1

    .line 210
    .line 211
    const/4 v13, -0x8

    .line 212
    aput v13, v9, v5

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 216
    .line 217
    const-string v1, "Modifier must follow a token."

    .line 218
    .line 219
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p0

    .line 223
    :cond_b
    if-nez v4, :cond_d

    .line 224
    .line 225
    if-eqz v5, :cond_c

    .line 226
    .line 227
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 228
    .line 229
    add-int/lit8 v12, v5, -0x1

    .line 230
    .line 231
    aget v12, v9, v12

    .line 232
    .line 233
    invoke-static {v12}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    if-nez v12, :cond_c

    .line 238
    .line 239
    add-int/lit8 v12, v5, 0x1

    .line 240
    .line 241
    const/4 v13, -0x7

    .line 242
    aput v13, v9, v5

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 246
    .line 247
    const-string v1, "Modifier must follow a token."

    .line 248
    .line 249
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p0

    .line 253
    :cond_d
    :goto_4
    move v9, v2

    .line 254
    :goto_5
    if-eqz v4, :cond_10

    .line 255
    .line 256
    if-eqz v7, :cond_e

    .line 257
    .line 258
    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 259
    .line 260
    add-int/lit8 v9, v5, 0x1

    .line 261
    .line 262
    aput v8, v7, v5

    .line 263
    .line 264
    move v7, v2

    .line 265
    move v5, v9

    .line 266
    goto/16 :goto_8

    .line 267
    .line 268
    :cond_e
    add-int/lit8 v9, v3, 0x2

    .line 269
    .line 270
    if-ge v9, v1, :cond_f

    .line 271
    .line 272
    add-int/lit8 v10, v3, 0x1

    .line 273
    .line 274
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    .line 275
    .line 276
    .line 277
    move-result v12

    .line 278
    const/16 v13, 0x2d

    .line 279
    .line 280
    if-ne v12, v13, :cond_f

    .line 281
    .line 282
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    const/16 v12, 0x5d

    .line 287
    .line 288
    if-eq v9, v12, :cond_f

    .line 289
    .line 290
    sget-object v3, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 291
    .line 292
    add-int/lit8 v7, v5, 0x1

    .line 293
    .line 294
    aput v8, v3, v5

    .line 295
    .line 296
    move v5, v7

    .line 297
    move v3, v10

    .line 298
    move v7, v11

    .line 299
    goto/16 :goto_8

    .line 300
    .line 301
    :cond_f
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 302
    .line 303
    add-int/lit8 v10, v5, 0x1

    .line 304
    .line 305
    aput v8, v9, v5

    .line 306
    .line 307
    add-int/lit8 v5, v10, 0x1

    .line 308
    .line 309
    aput v8, v9, v10

    .line 310
    .line 311
    goto/16 :goto_8

    .line 312
    .line 313
    :cond_10
    if-eqz v6, :cond_15

    .line 314
    .line 315
    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->indexOf(II)I

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-ltz v8, :cond_14

    .line 320
    .line 321
    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    const/16 v9, 0x2c

    .line 326
    .line 327
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    .line 328
    .line 329
    .line 330
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    if-gez v9, :cond_11

    .line 332
    .line 333
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    move v9, v3

    .line 338
    goto :goto_7

    .line 339
    :cond_11
    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    sub-int/2addr v12, v11

    .line 352
    if-ne v9, v12, :cond_12

    .line 353
    .line 354
    const v3, 0x7fffffff

    .line 355
    .line 356
    .line 357
    :goto_6
    move v9, v3

    .line 358
    move v3, v10

    .line 359
    goto :goto_7

    .line 360
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 361
    .line 362
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    goto :goto_6

    .line 371
    :goto_7
    if-gt v3, v9, :cond_13

    .line 372
    .line 373
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 374
    .line 375
    add-int/lit8 v11, v5, 0x1

    .line 376
    .line 377
    aput v3, v10, v5

    .line 378
    .line 379
    add-int/lit8 v5, v11, 0x1

    .line 380
    .line 381
    aput v9, v10, v11

    .line 382
    .line 383
    move v3, v8

    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 387
    .line 388
    const-string v1, "Range quantifier minimum is greater than maximum"

    .line 389
    .line 390
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    :catch_0
    move-exception p0

    .line 395
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 396
    .line 397
    const-string v2, "Range number format incorrect"

    .line 398
    .line 399
    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    throw v1

    .line 403
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 404
    .line 405
    const-string v1, "Range not ended with \'}\'"

    .line 406
    .line 407
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw p0

    .line 411
    :cond_15
    if-eqz v9, :cond_16

    .line 412
    .line 413
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 414
    .line 415
    add-int/lit8 v10, v5, 0x1

    .line 416
    .line 417
    aput v8, v9, v5

    .line 418
    .line 419
    move v5, v10

    .line 420
    :cond_16
    :goto_8
    add-int/2addr v3, v11

    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 424
    .line 425
    const-string v1, "Pattern is too large!"

    .line 426
    .line 427
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw p0

    .line 431
    :cond_18
    if-nez v4, :cond_19

    .line 432
    .line 433
    sget-object p0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 434
    .line 435
    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 436
    .line 437
    .line 438
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    monitor-exit v0

    .line 440
    return-object p0

    .line 441
    :cond_19
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 442
    .line 443
    const-string v1, "Set was not terminated!"

    .line 444
    .line 445
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 449
    :catchall_0
    move-exception p0

    .line 450
    monitor-exit v0

    .line 451
    throw p0

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const-string v0, "? "

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "ADVANCED: "

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v0, "GLOB: "

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const-string v0, "PREFIX: "

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const-string v0, "LITERAL: "

    .line 27
    .line 28
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "PatternMatcher{"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 39
    .line 40
    const-string/jumbo v2, "}"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/os/PatternMatcher;->mType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
