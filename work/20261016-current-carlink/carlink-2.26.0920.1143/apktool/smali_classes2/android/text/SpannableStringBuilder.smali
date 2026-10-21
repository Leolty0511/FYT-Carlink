.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_ADDED:I = 0x800

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"

.field private static final sCachedIntBuffer:[[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCachedIntBuffer"
    .end annotation
.end field


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWaterMark:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanInsertCount:I

.field private mSpanMax:[I

.field private mSpanOrder:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 3
    .line 4
    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, [[I

    .line 19
    .line 20
    sput-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    .line 21
    .line 22
    return-void

    :array_0
    .array-data 4
        0x6
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 14

    move-object v7, p0

    move-object v0, p1

    move/from16 v8, p2

    move/from16 v1, p3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v2, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    sub-int v9, v1, v8

    if-ltz v9, :cond_7

    .line 5
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v2

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 6
    iput v9, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 7
    array-length v3, v2

    sub-int/2addr v3, v9

    iput v3, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v10, 0x0

    .line 8
    invoke-static {p1, v8, v1, v2, v10}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 9
    iput v10, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 10
    iput v10, v7, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 11
    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 12
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 13
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 14
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 15
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 16
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 17
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_6

    .line 18
    move-object v11, v0

    check-cast v11, Landroid/text/Spanned;

    .line 19
    const-class v0, Ljava/lang/Object;

    invoke-interface {v11, v8, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move v13, v10

    .line 20
    :goto_0
    array-length v0, v12

    if-ge v13, v0, :cond_5

    .line 21
    aget-object v0, v12, v13

    instance-of v1, v0, Landroid/text/NoCopySpan;

    if-eqz v1, :cond_0

    goto :goto_3

    .line 22
    :cond_0
    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, v8

    .line 23
    aget-object v1, v12, v13

    invoke-interface {v11, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, v8

    .line 24
    aget-object v2, v12, v13

    invoke-interface {v11, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-gez v0, :cond_1

    move v0, v10

    :cond_1
    if-le v0, v9, :cond_2

    move v3, v9

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    if-gez v1, :cond_3

    move v1, v10

    :cond_3
    if-le v1, v9, :cond_4

    move v4, v9

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    const/4 v1, 0x0

    .line 25
    aget-object v2, v12, v13

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 26
    :cond_5
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_6
    return-void

    .line 27
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private calcMax(I)I
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 16
    .line 17
    if-ge p1, v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 20
    .line 21
    aget v2, v2, p1

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 42
    .line 43
    aput v1, v0, p1

    .line 44
    .line 45
    return v1
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    move/from16 v11, p4

    .line 10
    .line 11
    move/from16 v12, p5

    .line 12
    .line 13
    sub-int v13, v9, v8

    .line 14
    .line 15
    sub-int v14, v12, v11

    .line 16
    .line 17
    sub-int v15, v14, v13

    .line 18
    .line 19
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    sub-int/2addr v0, v6

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    move/from16 v17, v0

    .line 26
    .line 27
    move/from16 v0, v16

    .line 28
    .line 29
    :goto_0
    if-ltz v17, :cond_10

    .line 30
    .line 31
    iget-object v1, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 32
    .line 33
    aget v1, v1, v17

    .line 34
    .line 35
    iget v2, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 36
    .line 37
    if-le v1, v2, :cond_0

    .line 38
    .line 39
    iget v3, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 40
    .line 41
    sub-int/2addr v1, v3

    .line 42
    :cond_0
    iget-object v3, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 43
    .line 44
    aget v3, v3, v17

    .line 45
    .line 46
    if-le v3, v2, :cond_1

    .line 47
    .line 48
    iget v2, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 49
    .line 50
    sub-int/2addr v3, v2

    .line 51
    :cond_1
    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 52
    .line 53
    aget v2, v2, v17

    .line 54
    .line 55
    const/16 v4, 0x33

    .line 56
    .line 57
    and-int/2addr v2, v4

    .line 58
    if-ne v2, v4, :cond_b

    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/16 v4, 0xa

    .line 65
    .line 66
    if-le v1, v8, :cond_4

    .line 67
    .line 68
    if-gt v1, v9, :cond_4

    .line 69
    .line 70
    move v5, v9

    .line 71
    :goto_1
    if-ge v5, v2, :cond_3

    .line 72
    .line 73
    if-le v5, v9, :cond_2

    .line 74
    .line 75
    add-int/lit8 v6, v5, -0x1

    .line 76
    .line 77
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ne v6, v4, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_2
    move v6, v5

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move v6, v1

    .line 91
    :goto_3
    if-le v3, v8, :cond_7

    .line 92
    .line 93
    if-gt v3, v9, :cond_7

    .line 94
    .line 95
    move v5, v9

    .line 96
    :goto_4
    if-ge v5, v2, :cond_8

    .line 97
    .line 98
    if-le v5, v9, :cond_5

    .line 99
    .line 100
    move/from16 v19, v2

    .line 101
    .line 102
    add-int/lit8 v2, v5, -0x1

    .line 103
    .line 104
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-ne v2, v4, :cond_6

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    move/from16 v19, v2

    .line 112
    .line 113
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    move/from16 v2, v19

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_7
    move v5, v3

    .line 119
    :cond_8
    :goto_5
    if-ne v6, v1, :cond_a

    .line 120
    .line 121
    if-eq v5, v3, :cond_9

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_9
    move v3, v5

    .line 125
    move v1, v6

    .line 126
    const/4 v10, 0x1

    .line 127
    goto :goto_7

    .line 128
    :cond_a
    :goto_6
    const/4 v1, 0x0

    .line 129
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 130
    .line 131
    aget-object v2, v0, v17

    .line 132
    .line 133
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 134
    .line 135
    aget v19, v0, v17

    .line 136
    .line 137
    const/16 v20, 0x1

    .line 138
    .line 139
    move-object/from16 v0, p0

    .line 140
    .line 141
    move v3, v6

    .line 142
    move v4, v5

    .line 143
    move/from16 v21, v5

    .line 144
    .line 145
    move/from16 v5, v19

    .line 146
    .line 147
    move/from16 v18, v6

    .line 148
    .line 149
    const/4 v10, 0x1

    .line 150
    move/from16 v6, v20

    .line 151
    .line 152
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 153
    .line 154
    .line 155
    move v0, v10

    .line 156
    move/from16 v1, v18

    .line 157
    .line 158
    move/from16 v3, v21

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_b
    move v10, v6

    .line 162
    :goto_7
    if-ne v1, v8, :cond_c

    .line 163
    .line 164
    const/16 v1, 0x1000

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_c
    add-int v2, v9, v15

    .line 168
    .line 169
    if-ne v1, v2, :cond_d

    .line 170
    .line 171
    const/16 v1, 0x2000

    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_d
    move/from16 v1, v16

    .line 175
    .line 176
    :goto_8
    if-ne v3, v8, :cond_e

    .line 177
    .line 178
    or-int/lit16 v1, v1, 0x4000

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_e
    add-int v2, v9, v15

    .line 182
    .line 183
    if-ne v3, v2, :cond_f

    .line 184
    .line 185
    const v2, 0x8000

    .line 186
    .line 187
    .line 188
    or-int/2addr v1, v2

    .line 189
    :cond_f
    :goto_9
    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 190
    .line 191
    aget v3, v2, v17

    .line 192
    .line 193
    or-int/2addr v1, v3

    .line 194
    aput v1, v2, v17

    .line 195
    .line 196
    add-int/lit8 v17, v17, -0x1

    .line 197
    .line 198
    move v6, v10

    .line 199
    move-object/from16 v10, p3

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_10
    move v10, v6

    .line 204
    if-eqz v0, :cond_11

    .line 205
    .line 206
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 207
    .line 208
    .line 209
    :cond_11
    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 210
    .line 211
    .line 212
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 213
    .line 214
    if-lt v15, v0, :cond_12

    .line 215
    .line 216
    iget-object v1, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 217
    .line 218
    array-length v1, v1

    .line 219
    add-int/2addr v1, v15

    .line 220
    sub-int/2addr v1, v0

    .line 221
    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 222
    .line 223
    .line 224
    :cond_12
    if-nez v14, :cond_13

    .line 225
    .line 226
    move v14, v10

    .line 227
    goto :goto_a

    .line 228
    :cond_13
    move/from16 v14, v16

    .line 229
    .line 230
    :goto_a
    if-lez v13, :cond_14

    .line 231
    .line 232
    :goto_b
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 233
    .line 234
    if-lez v0, :cond_14

    .line 235
    .line 236
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    invoke-direct {v7, v8, v9, v14, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_14

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_14
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 248
    .line 249
    add-int/2addr v0, v15

    .line 250
    iput v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 251
    .line 252
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 253
    .line 254
    sub-int/2addr v0, v15

    .line 255
    iput v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 256
    .line 257
    if-ge v0, v10, :cond_15

    .line 258
    .line 259
    new-instance v0, Ljava/lang/Exception;

    .line 260
    .line 261
    const-string v1, "mGapLength < 1"

    .line 262
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    :cond_15
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 270
    .line 271
    move-object/from16 v9, p3

    .line 272
    .line 273
    move v1, v10

    .line 274
    invoke-static {v9, v11, v12, v0, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 275
    .line 276
    .line 277
    if-lez v13, :cond_18

    .line 278
    .line 279
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 280
    .line 281
    iget v2, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 282
    .line 283
    add-int/2addr v0, v2

    .line 284
    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 285
    .line 286
    array-length v2, v2

    .line 287
    if-ne v0, v2, :cond_16

    .line 288
    .line 289
    move v10, v1

    .line 290
    goto :goto_c

    .line 291
    :cond_16
    move/from16 v10, v16

    .line 292
    .line 293
    :goto_c
    move/from16 v13, v16

    .line 294
    .line 295
    :goto_d
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 296
    .line 297
    if-ge v13, v0, :cond_17

    .line 298
    .line 299
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 300
    .line 301
    aget v0, v0, v13

    .line 302
    .line 303
    and-int/lit16 v0, v0, 0xf0

    .line 304
    .line 305
    shr-int/lit8 v4, v0, 0x4

    .line 306
    .line 307
    iget-object v6, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 308
    .line 309
    aget v1, v6, v13

    .line 310
    .line 311
    move-object/from16 v0, p0

    .line 312
    .line 313
    move/from16 v2, p1

    .line 314
    .line 315
    move v3, v15

    .line 316
    move v5, v10

    .line 317
    move-object/from16 v17, v6

    .line 318
    .line 319
    move v6, v14

    .line 320
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    aput v0, v17, v13

    .line 325
    .line 326
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 327
    .line 328
    aget v0, v0, v13

    .line 329
    .line 330
    and-int/lit8 v4, v0, 0xf

    .line 331
    .line 332
    iget-object v6, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 333
    .line 334
    aget v1, v6, v13

    .line 335
    .line 336
    move-object/from16 v0, p0

    .line 337
    .line 338
    move-object/from16 v17, v6

    .line 339
    .line 340
    move v6, v14

    .line 341
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    aput v0, v17, v13

    .line 346
    .line 347
    add-int/lit8 v13, v13, 0x1

    .line 348
    .line 349
    goto :goto_d

    .line 350
    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 351
    .line 352
    .line 353
    :cond_18
    instance-of v0, v9, Landroid/text/Spanned;

    .line 354
    .line 355
    if-eqz v0, :cond_1d

    .line 356
    .line 357
    check-cast v9, Landroid/text/Spanned;

    .line 358
    .line 359
    const-class v0, Ljava/lang/Object;

    .line 360
    .line 361
    invoke-interface {v9, v11, v12, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    move/from16 v13, v16

    .line 366
    .line 367
    :goto_e
    array-length v0, v10

    .line 368
    if-ge v13, v0, :cond_1c

    .line 369
    .line 370
    aget-object v0, v10, v13

    .line 371
    .line 372
    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    aget-object v1, v10, v13

    .line 377
    .line 378
    invoke-interface {v9, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-ge v0, v11, :cond_19

    .line 383
    .line 384
    move v0, v11

    .line 385
    :cond_19
    if-le v1, v12, :cond_1a

    .line 386
    .line 387
    move v1, v12

    .line 388
    :cond_1a
    aget-object v2, v10, v13

    .line 389
    .line 390
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-gez v2, :cond_1b

    .line 395
    .line 396
    sub-int/2addr v0, v11

    .line 397
    add-int v3, v0, v8

    .line 398
    .line 399
    sub-int/2addr v1, v11

    .line 400
    add-int v4, v1, v8

    .line 401
    .line 402
    aget-object v0, v10, v13

    .line 403
    .line 404
    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    or-int/lit16 v5, v0, 0x800

    .line 409
    .line 410
    const/4 v1, 0x0

    .line 411
    aget-object v2, v10, v13

    .line 412
    .line 413
    const/4 v6, 0x0

    .line 414
    move-object/from16 v0, p0

    .line 415
    .line 416
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 417
    .line 418
    .line 419
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    .line 420
    .line 421
    goto :goto_e

    .line 422
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 423
    .line 424
    .line 425
    :cond_1d
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    if-lt p3, p2, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gt p2, v1, :cond_0

    .line 10
    .line 11
    if-le p3, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "checkRange "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", Text: "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "SpannableStringBuilder"

    .line 46
    .line 47
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    new-instance v1, Ljava/lang/Throwable;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    const-string v2, "Throw"

    .line 65
    .line 66
    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :cond_1
    if-ltz p2, :cond_2

    .line 70
    .line 71
    if-ltz p3, :cond_2

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 75
    .line 76
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const-string p3, " starts before 0"

    .line 85
    .line 86
    invoke-static {p1, p2, p3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 95
    .line 96
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, " ends beyond length "

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v2

    .line 123
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 124
    .line 125
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const-string p3, " has end before start"

    .line 134
    .line 135
    invoke-static {p1, p2, p3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v1
.end method

.method private static checkSortBuffer([II)[I
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    return-object p0

    .line 8
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private final compareSpans(II[I[I)I
    .locals 1

    .line 1
    aget v0, p3, p1

    .line 2
    .line 3
    aget p3, p3, p2

    .line 4
    .line 5
    if-ne v0, p3, :cond_0

    .line 6
    .line 7
    aget p1, p4, p1

    .line 8
    .line 9
    aget p2, p4, p2

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Integer;->compare(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .locals 5

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 10
    .line 11
    aget v2, v2, v1

    .line 12
    .line 13
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 14
    .line 15
    if-le v2, v3, :cond_0

    .line 16
    .line 17
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 18
    .line 19
    sub-int/2addr v2, v3

    .line 20
    :cond_0
    if-lt v2, p1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 29
    .line 30
    if-ge p4, v2, :cond_7

    .line 31
    .line 32
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 33
    .line 34
    aget v2, v2, p4

    .line 35
    .line 36
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 37
    .line 38
    if-le v2, v3, :cond_2

    .line 39
    .line 40
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 41
    .line 42
    sub-int/2addr v2, v4

    .line 43
    :cond_2
    if-gt v2, p2, :cond_7

    .line 44
    .line 45
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 46
    .line 47
    aget v4, v4, p4

    .line 48
    .line 49
    if-le v4, v3, :cond_3

    .line 50
    .line 51
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 52
    .line 53
    sub-int/2addr v4, v3

    .line 54
    :cond_3
    if-lt v4, p1, :cond_6

    .line 55
    .line 56
    if-eq v2, v4, :cond_4

    .line 57
    .line 58
    if-eq p1, p2, :cond_4

    .line 59
    .line 60
    if-eq v2, p2, :cond_6

    .line 61
    .line 62
    if-eq v4, p1, :cond_6

    .line 63
    .line 64
    :cond_4
    const-class v2, Ljava/lang/Object;

    .line 65
    .line 66
    if-eq v2, p3, :cond_5

    .line 67
    .line 68
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 69
    .line 70
    aget-object v2, v2, p4

    .line 71
    .line 72
    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    :cond_6
    if-eqz v0, :cond_7

    .line 81
    .line 82
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    add-int/2addr v1, p1

    .line 91
    :cond_7
    return v1
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move/from16 v12, p2

    .line 6
    .line 7
    move-object/from16 v13, p3

    .line 8
    .line 9
    move/from16 v14, p4

    .line 10
    .line 11
    move-object/from16 v15, p5

    .line 12
    .line 13
    and-int/lit8 v16, v14, 0x1

    .line 14
    .line 15
    if-eqz v16, :cond_1

    .line 16
    .line 17
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget-object v0, v10, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 22
    .line 23
    aget v0, v0, v4

    .line 24
    .line 25
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 26
    .line 27
    if-le v0, v1, :cond_0

    .line 28
    .line 29
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    :cond_0
    if-lt v0, v11, :cond_1

    .line 33
    .line 34
    move-object/from16 v0, p0

    .line 35
    .line 36
    move/from16 v1, p1

    .line 37
    .line 38
    move/from16 v2, p2

    .line 39
    .line 40
    move-object/from16 v3, p3

    .line 41
    .line 42
    move-object/from16 v5, p5

    .line 43
    .line 44
    move-object/from16 v6, p6

    .line 45
    .line 46
    move-object/from16 v7, p7

    .line 47
    .line 48
    move/from16 v8, p8

    .line 49
    .line 50
    move/from16 v9, p9

    .line 51
    .line 52
    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move/from16 v0, p8

    .line 58
    .line 59
    :goto_0
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 60
    .line 61
    if-lt v14, v1, :cond_2

    .line 62
    .line 63
    return v0

    .line 64
    :cond_2
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 65
    .line 66
    aget v1, v1, v14

    .line 67
    .line 68
    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 69
    .line 70
    if-le v1, v2, :cond_3

    .line 71
    .line 72
    iget v3, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 73
    .line 74
    sub-int/2addr v1, v3

    .line 75
    :cond_3
    if-gt v1, v12, :cond_d

    .line 76
    .line 77
    iget-object v3, v10, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 78
    .line 79
    aget v3, v3, v14

    .line 80
    .line 81
    if-le v3, v2, :cond_4

    .line 82
    .line 83
    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 84
    .line 85
    sub-int/2addr v3, v2

    .line 86
    :cond_4
    if-lt v3, v11, :cond_b

    .line 87
    .line 88
    if-eq v1, v3, :cond_5

    .line 89
    .line 90
    if-eq v11, v12, :cond_5

    .line 91
    .line 92
    if-eq v1, v12, :cond_b

    .line 93
    .line 94
    if-eq v3, v11, :cond_b

    .line 95
    .line 96
    :cond_5
    const-class v1, Ljava/lang/Object;

    .line 97
    .line 98
    if-eq v1, v13, :cond_6

    .line 99
    .line 100
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 101
    .line 102
    aget-object v1, v1, v14

    .line 103
    .line 104
    invoke-virtual {v13, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_b

    .line 109
    .line 110
    :cond_6
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 111
    .line 112
    aget v1, v1, v14

    .line 113
    .line 114
    const/high16 v2, 0xff0000

    .line 115
    .line 116
    and-int/2addr v1, v2

    .line 117
    if-eqz p9, :cond_7

    .line 118
    .line 119
    aput v1, p6, v0

    .line 120
    .line 121
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 122
    .line 123
    aget v1, v1, v14

    .line 124
    .line 125
    aput v1, p7, v0

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    if-eqz v1, :cond_a

    .line 129
    .line 130
    const/4 v3, 0x0

    .line 131
    :goto_1
    if-ge v3, v0, :cond_9

    .line 132
    .line 133
    aget-object v4, v15, v3

    .line 134
    .line 135
    invoke-virtual {v10, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    and-int/2addr v4, v2

    .line 140
    if-le v1, v4, :cond_8

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_9
    :goto_2
    add-int/lit8 v1, v3, 0x1

    .line 147
    .line 148
    sub-int v2, v0, v3

    .line 149
    .line 150
    invoke-static {v15, v3, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    :goto_3
    move v3, v0

    .line 155
    :goto_4
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 156
    .line 157
    aget-object v1, v1, v14

    .line 158
    .line 159
    aput-object v1, v15, v3

    .line 160
    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 162
    .line 163
    :cond_b
    move v8, v0

    .line 164
    array-length v0, v15

    .line 165
    if-ge v8, v0, :cond_c

    .line 166
    .line 167
    if-eqz v16, :cond_c

    .line 168
    .line 169
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    move-object/from16 v0, p0

    .line 174
    .line 175
    move/from16 v1, p1

    .line 176
    .line 177
    move/from16 v2, p2

    .line 178
    .line 179
    move-object/from16 v3, p3

    .line 180
    .line 181
    move-object/from16 v5, p5

    .line 182
    .line 183
    move-object/from16 v6, p6

    .line 184
    .line 185
    move-object/from16 v7, p7

    .line 186
    .line 187
    move/from16 v9, p9

    .line 188
    .line 189
    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    goto :goto_5

    .line 194
    :cond_c
    move v0, v8

    .line 195
    :cond_d
    :goto_5
    return v0
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p0, Landroid/text/Spanned;

    .line 7
    .line 8
    const-class v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    move v2, v1

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    aget-object v3, p1, v2

    .line 19
    .line 20
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/16 v4, 0x21

    .line 25
    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v1
.end method

.method private invalidateIndex(I)V
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    return-void
.end method

.method private isInvalidParagraph(II)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private static leftChild(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p0, v0

    return p0
.end method

.method private moveGapTo(I)V
    .locals 10

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v0, v1

    .line 16
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 17
    .line 18
    if-ge p1, v2, :cond_2

    .line 19
    .line 20
    sub-int v3, v2, p1

    .line 21
    .line 22
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 23
    .line 24
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 25
    .line 26
    add-int/2addr v2, v5

    .line 27
    sub-int/2addr v2, v3

    .line 28
    invoke-static {v4, p1, v4, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    sub-int v3, p1, v2

    .line 33
    .line 34
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 35
    .line 36
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 37
    .line 38
    add-int/2addr v5, p1

    .line 39
    sub-int/2addr v5, v3

    .line 40
    invoke-static {v4, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 44
    .line 45
    if-eqz v2, :cond_c

    .line 46
    .line 47
    :goto_2
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 48
    .line 49
    if-ge v1, v2, :cond_b

    .line 50
    .line 51
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 52
    .line 53
    aget v3, v2, v1

    .line 54
    .line 55
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 56
    .line 57
    aget v5, v4, v1

    .line 58
    .line 59
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 60
    .line 61
    if-le v3, v6, :cond_3

    .line 62
    .line 63
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 64
    .line 65
    sub-int/2addr v3, v7

    .line 66
    :cond_3
    const/4 v7, 0x3

    .line 67
    const/4 v8, 0x2

    .line 68
    if-le v3, p1, :cond_4

    .line 69
    .line 70
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 71
    .line 72
    :goto_3
    add-int/2addr v3, v9

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    if-ne v3, p1, :cond_6

    .line 75
    .line 76
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 77
    .line 78
    aget v9, v9, v1

    .line 79
    .line 80
    and-int/lit16 v9, v9, 0xf0

    .line 81
    .line 82
    shr-int/lit8 v9, v9, 0x4

    .line 83
    .line 84
    if-eq v9, v8, :cond_5

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    if-ne v9, v7, :cond_6

    .line 89
    .line 90
    :cond_5
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_6
    :goto_4
    if-le v5, v6, :cond_7

    .line 94
    .line 95
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 96
    .line 97
    sub-int/2addr v5, v6

    .line 98
    :cond_7
    if-le v5, p1, :cond_8

    .line 99
    .line 100
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 101
    .line 102
    :goto_5
    add-int/2addr v5, v6

    .line 103
    goto :goto_6

    .line 104
    :cond_8
    if-ne v5, p1, :cond_a

    .line 105
    .line 106
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 107
    .line 108
    aget v6, v6, v1

    .line 109
    .line 110
    and-int/lit8 v6, v6, 0xf

    .line 111
    .line 112
    if-eq v6, v8, :cond_9

    .line 113
    .line 114
    if-eqz v0, :cond_a

    .line 115
    .line 116
    if-ne v6, v7, :cond_a

    .line 117
    .line 118
    :cond_9
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_a
    :goto_6
    aput v3, v2, v1

    .line 122
    .line 123
    aput v5, v4, v1

    .line 124
    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 133
    .line 134
    .line 135
    :cond_c
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 136
    .line 137
    return-void
.end method

.method private nextSpanTransitionRec(IILjava/lang/Class;I)I
    .locals 4

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 10
    .line 11
    aget v2, v2, v1

    .line 12
    .line 13
    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-le v2, p1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 24
    .line 25
    if-ge p4, v1, :cond_3

    .line 26
    .line 27
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 28
    .line 29
    aget v1, v1, p4

    .line 30
    .line 31
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 36
    .line 37
    aget v2, v2, p4

    .line 38
    .line 39
    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-le v1, p1, :cond_1

    .line 44
    .line 45
    if-ge v1, p2, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 48
    .line 49
    aget-object v3, v3, p4

    .line 50
    .line 51
    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    move p2, v1

    .line 58
    :cond_1
    if-le v2, p1, :cond_2

    .line 59
    .line 60
    if-ge v2, p2, :cond_2

    .line 61
    .line 62
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 63
    .line 64
    aget-object v3, v3, p4

    .line 65
    .line 66
    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    move p2, v2

    .line 73
    :cond_2
    if-ge v1, p2, :cond_3

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    :cond_3
    return p2
.end method

.method private static obtain(I)[I
    .locals 5

    .line 1
    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    array-length v1, v0

    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ltz v1, :cond_2

    .line 10
    .line 11
    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    .line 12
    .line 13
    aget-object v4, v4, v1

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    array-length v4, v4

    .line 18
    if-lt v4, p0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-ne v3, v2, :cond_1

    .line 22
    .line 23
    move v3, v1

    .line 24
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move v1, v3

    .line 28
    :goto_1
    const/4 v3, 0x0

    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    .line 32
    .line 33
    aget-object v4, v2, v1

    .line 34
    .line 35
    aput-object v3, v2, v1

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {v3, p0}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method private static recycle([I)V
    .locals 5

    .line 1
    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-ge v1, v3, :cond_2

    .line 9
    .line 10
    aget-object v3, v2, v1

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    array-length v4, p0

    .line 15
    array-length v3, v3

    .line 16
    if-le v4, v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    aput-object p0, v2, v1

    .line 23
    .line 24
    :cond_2
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const-string v1, " ... "

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    invoke-static {v0, p0, v1, p1, v2}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private removeSpan(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 2
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p1

    .line 3
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, p1

    .line 4
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v5

    :cond_0
    if-le v3, v4, :cond_1

    .line 5
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 6
    :cond_1
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v4, v5

    .line 7
    invoke-static {v0, v5, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v0, v5, v0, p1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 9
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v0, v5, v0, p1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 10
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v0, v5, v0, p1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 11
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    invoke-static {v0, v5, v0, p1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 12
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 13
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 14
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v4, 0x0

    aput-object v4, p1, v0

    .line 15
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 16
    invoke-direct {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    return-void
.end method

.method private removeSpansForChange(IIZI)Z
    .locals 7

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 7
    .line 8
    aget v2, v2, p4

    .line 9
    .line 10
    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lt v2, p1, :cond_0

    .line 15
    .line 16
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-ge p4, v2, :cond_4

    .line 31
    .line 32
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 33
    .line 34
    aget v2, v2, p4

    .line 35
    .line 36
    const/16 v4, 0x21

    .line 37
    .line 38
    and-int/2addr v2, v4

    .line 39
    if-ne v2, v4, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 42
    .line 43
    aget v2, v2, p4

    .line 44
    .line 45
    if-lt v2, p1, :cond_2

    .line 46
    .line 47
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 48
    .line 49
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 50
    .line 51
    add-int v6, v4, v5

    .line 52
    .line 53
    if-ge v2, v6, :cond_2

    .line 54
    .line 55
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 56
    .line 57
    aget v6, v6, p4

    .line 58
    .line 59
    if-lt v6, p1, :cond_2

    .line 60
    .line 61
    add-int/2addr v5, v4

    .line 62
    if-ge v6, v5, :cond_2

    .line 63
    .line 64
    if-nez p3, :cond_1

    .line 65
    .line 66
    if-gt v2, p1, :cond_1

    .line 67
    .line 68
    if-ge v6, v4, :cond_2

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 71
    .line 72
    iget-object p2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 73
    .line 74
    aget-object p2, p2, p4

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p4}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 80
    .line 81
    .line 82
    return v1

    .line 83
    :cond_2
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 84
    .line 85
    aget v2, v2, p4

    .line 86
    .line 87
    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-gt v2, p2, :cond_3

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    .line 96
    .line 97
    .line 98
    move-result p4

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    move v1, v3

    .line 107
    :goto_0
    return v1

    .line 108
    :cond_4
    return v3
.end method

.method private resizeFor(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    if-gt v1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 18
    .line 19
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 23
    .line 24
    .line 25
    array-length v1, p1

    .line 26
    sub-int v2, v1, v0

    .line 27
    .line 28
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 29
    .line 30
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 31
    .line 32
    add-int/2addr v4, v5

    .line 33
    sub-int v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 36
    .line 37
    sub-int/2addr v0, v4

    .line 38
    sub-int/2addr v1, v4

    .line 39
    invoke-static {v5, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 43
    .line 44
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 45
    .line 46
    add-int/2addr p1, v2

    .line 47
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    if-ge p1, v0, :cond_1

    .line 51
    .line 52
    new-instance p1, Ljava/lang/Exception;

    .line 53
    .line 54
    const-string v0, "mGapLength < 1"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    :goto_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 67
    .line 68
    if-ge v3, p1, :cond_4

    .line 69
    .line 70
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 71
    .line 72
    aget v0, p1, v3

    .line 73
    .line 74
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 75
    .line 76
    if-le v0, v1, :cond_2

    .line 77
    .line 78
    add-int/2addr v0, v2

    .line 79
    aput v0, p1, v3

    .line 80
    .line 81
    :cond_2
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 82
    .line 83
    aget v0, p1, v3

    .line 84
    .line 85
    if-le v0, v1, :cond_3

    .line 86
    .line 87
    add-int/2addr v0, v2

    .line 88
    aput v0, p1, v3

    .line 89
    .line 90
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 98
    .line 99
    .line 100
    :cond_5
    return-void
.end method

.method private resolveGap(I)I
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private restoreInvariants()V
    .locals 13

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    :goto_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 12
    .line 13
    aget v2, v1, v0

    .line 14
    .line 15
    add-int/lit8 v3, v0, -0x1

    .line 16
    .line 17
    aget v1, v1, v3

    .line 18
    .line 19
    if-ge v2, v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v1, v1, v0

    .line 24
    .line 25
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 26
    .line 27
    aget v3, v3, v0

    .line 28
    .line 29
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 30
    .line 31
    aget v4, v4, v0

    .line 32
    .line 33
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 34
    .line 35
    aget v5, v5, v0

    .line 36
    .line 37
    move v6, v0

    .line 38
    :cond_1
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 39
    .line 40
    add-int/lit8 v8, v6, -0x1

    .line 41
    .line 42
    aget-object v9, v7, v8

    .line 43
    .line 44
    aput-object v9, v7, v6

    .line 45
    .line 46
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 47
    .line 48
    aget v10, v9, v8

    .line 49
    .line 50
    aput v10, v9, v6

    .line 51
    .line 52
    iget-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 53
    .line 54
    aget v11, v10, v8

    .line 55
    .line 56
    aput v11, v10, v6

    .line 57
    .line 58
    iget-object v11, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 59
    .line 60
    aget v12, v11, v8

    .line 61
    .line 62
    aput v12, v11, v6

    .line 63
    .line 64
    iget-object v12, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 65
    .line 66
    aget v8, v12, v8

    .line 67
    .line 68
    aput v8, v12, v6

    .line 69
    .line 70
    add-int/lit8 v6, v6, -0x1

    .line 71
    .line 72
    if-lez v6, :cond_2

    .line 73
    .line 74
    add-int/lit8 v8, v6, -0x1

    .line 75
    .line 76
    aget v8, v9, v8

    .line 77
    .line 78
    if-lt v2, v8, :cond_1

    .line 79
    .line 80
    :cond_2
    aput-object v1, v7, v6

    .line 81
    .line 82
    aput v2, v9, v6

    .line 83
    .line 84
    aput v3, v10, v6

    .line 85
    .line 86
    aput v4, v11, v6

    .line 87
    .line 88
    aput v5, v12, v6

    .line 89
    .line 90
    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 104
    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 113
    .line 114
    :cond_5
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 115
    .line 116
    :goto_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 117
    .line 118
    if-ge v0, v1, :cond_8

    .line 119
    .line 120
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 121
    .line 122
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 123
    .line 124
    aget-object v2, v2, v0

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/lang/Integer;

    .line 131
    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eq v1, v0, :cond_7

    .line 139
    .line 140
    :cond_6
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 141
    .line 142
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 143
    .line 144
    aget-object v2, v2, v0

    .line 145
    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v1, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_8
    const v0, 0x7fffffff

    .line 157
    .line 158
    .line 159
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 160
    .line 161
    return-void
.end method

.method private static rightChild(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p0, v0

    return p0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 3
    .line 4
    add-int/lit8 v1, v1, 0x1

    .line 5
    .line 6
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 24
    .line 25
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 3
    .line 4
    add-int/lit8 v1, v1, 0x1

    .line 5
    .line 6
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 24
    .line 25
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4

    .line 1
    const-class v0, Landroid/text/SpanWatcher;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroid/text/SpanWatcher;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    .line 1
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-class v2, Landroid/text/SpanWatcher;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Landroid/text/SpanWatcher;

    .line 24
    .line 25
    array-length v1, v0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_0

    .line 28
    .line 29
    aget-object v3, v0, v2

    .line 30
    .line 31
    move-object v4, p0

    .line 32
    move-object v5, p1

    .line 33
    move v6, p2

    .line 34
    move v7, p3

    .line 35
    move v8, p4

    .line 36
    move v9, p5

    .line 37
    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4

    .line 1
    const-class v0, Landroid/text/SpanWatcher;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroid/text/SpanWatcher;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 3
    .line 4
    add-int/lit8 v1, v1, 0x1

    .line 5
    .line 6
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 24
    .line 25
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_c

    .line 6
    .line 7
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    and-int/lit16 v3, v2, 0x800

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 18
    .line 19
    aget v3, v3, v1

    .line 20
    .line 21
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 22
    .line 23
    aget v4, v4, v1

    .line 24
    .line 25
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 26
    .line 27
    if-le v3, v5, :cond_1

    .line 28
    .line 29
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 30
    .line 31
    sub-int/2addr v3, v6

    .line 32
    :cond_1
    move v10, v3

    .line 33
    if-le v4, v5, :cond_2

    .line 34
    .line 35
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 36
    .line 37
    sub-int/2addr v4, v3

    .line 38
    :cond_2
    move v11, v4

    .line 39
    add-int v3, p2, p3

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    if-le v10, v3, :cond_3

    .line 43
    .line 44
    if-eqz p3, :cond_6

    .line 45
    .line 46
    sub-int v5, v10, p3

    .line 47
    .line 48
    move v8, v5

    .line 49
    move v5, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    if-lt v10, p1, :cond_6

    .line 52
    .line 53
    if-ne v10, p1, :cond_4

    .line 54
    .line 55
    and-int/lit16 v5, v2, 0x1000

    .line 56
    .line 57
    const/16 v6, 0x1000

    .line 58
    .line 59
    if-eq v5, v6, :cond_6

    .line 60
    .line 61
    :cond_4
    if-ne v10, v3, :cond_5

    .line 62
    .line 63
    and-int/lit16 v5, v2, 0x2000

    .line 64
    .line 65
    const/16 v6, 0x2000

    .line 66
    .line 67
    if-eq v5, v6, :cond_6

    .line 68
    .line 69
    :cond_5
    move v5, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_6
    move v5, v0

    .line 72
    :goto_1
    move v8, v10

    .line 73
    :goto_2
    if-le v11, v3, :cond_7

    .line 74
    .line 75
    if-eqz p3, :cond_9

    .line 76
    .line 77
    sub-int v2, v11, p3

    .line 78
    .line 79
    move v9, v2

    .line 80
    goto :goto_4

    .line 81
    :cond_7
    if-lt v11, p1, :cond_9

    .line 82
    .line 83
    if-ne v11, p1, :cond_8

    .line 84
    .line 85
    and-int/lit16 v6, v2, 0x4000

    .line 86
    .line 87
    const/16 v7, 0x4000

    .line 88
    .line 89
    if-eq v6, v7, :cond_9

    .line 90
    .line 91
    :cond_8
    if-ne v11, v3, :cond_a

    .line 92
    .line 93
    const v3, 0x8000

    .line 94
    .line 95
    .line 96
    and-int/2addr v2, v3

    .line 97
    if-eq v2, v3, :cond_9

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_9
    move v4, v5

    .line 101
    :cond_a
    :goto_3
    move v9, v11

    .line 102
    :goto_4
    if-eqz v4, :cond_b

    .line 103
    .line 104
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 105
    .line 106
    aget-object v7, v2, v1

    .line 107
    .line 108
    move-object v6, p0

    .line 109
    invoke-direct/range {v6 .. v11}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 110
    .line 111
    .line 112
    :cond_b
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 113
    .line 114
    aget v3, v2, v1

    .line 115
    .line 116
    const v4, -0xf001

    .line 117
    .line 118
    .line 119
    and-int/2addr v3, v4

    .line 120
    aput v3, v2, v1

    .line 121
    .line 122
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_c
    :goto_6
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 126
    .line 127
    if-ge v0, p1, :cond_10

    .line 128
    .line 129
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 130
    .line 131
    aget p2, p1, v0

    .line 132
    .line 133
    and-int/lit16 p3, p2, 0x800

    .line 134
    .line 135
    if-eqz p3, :cond_f

    .line 136
    .line 137
    and-int/lit16 p2, p2, -0x801

    .line 138
    .line 139
    aput p2, p1, v0

    .line 140
    .line 141
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 142
    .line 143
    aget p1, p1, v0

    .line 144
    .line 145
    iget-object p2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 146
    .line 147
    aget p2, p2, v0

    .line 148
    .line 149
    iget p3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 150
    .line 151
    if-le p1, p3, :cond_d

    .line 152
    .line 153
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 154
    .line 155
    sub-int/2addr p1, v1

    .line 156
    :cond_d
    if-le p2, p3, :cond_e

    .line 157
    .line 158
    iget p3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 159
    .line 160
    sub-int/2addr p2, p3

    .line 161
    :cond_e
    iget-object p3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 162
    .line 163
    aget-object p3, p3, v0

    .line 164
    .line 165
    invoke-direct {p0, p3, p1, p2}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_10
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;IIIZ)V
    .locals 14

    move-object v6, p0

    move-object/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v0, p5

    const-string/jumbo v2, "setSpan"

    .line 2
    invoke-direct {p0, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    .line 3
    invoke-direct {p0, v4, v2}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v3

    const-string v7, ")"

    const-string v8, " follows "

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    if-nez p6, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PARAGRAPH span must start at paragraph boundary ("

    .line 5
    invoke-static {v1, v4, v8}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v4, -0x1

    .line 6
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v3, v0, 0xf

    .line 7
    invoke-direct {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez p6, :cond_2

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PARAGRAPH span must end at paragraph boundary ("

    .line 9
    invoke-static {v1, v5, v8}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v5, -0x1

    .line 10
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    if-ne v3, v9, :cond_5

    if-ne v4, v5, :cond_5

    if-eqz p1, :cond_4

    const-string v0, "SpannableStringBuilder"

    const-string v1, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 12
    :cond_5
    iget v8, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v10, 0x3

    if-le v4, v8, :cond_6

    .line 13
    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    goto :goto_0

    :cond_6
    if-ne v4, v8, :cond_8

    if-eq v2, v7, :cond_7

    if-ne v2, v10, :cond_8

    .line 14
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ne v4, v2, :cond_8

    .line 15
    :cond_7
    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    :goto_0
    add-int/2addr v2, v4

    goto :goto_1

    :cond_8
    move v2, v4

    .line 16
    :goto_1
    iget v8, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v8, :cond_9

    .line 17
    iget v3, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    goto :goto_2

    :cond_9
    if-ne v5, v8, :cond_b

    if-eq v3, v7, :cond_a

    if-ne v3, v10, :cond_b

    .line 18
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ne v5, v3, :cond_b

    .line 19
    :cond_a
    iget v3, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    :goto_2
    add-int/2addr v3, v5

    goto :goto_3

    :cond_b
    move v3, v5

    .line 20
    :goto_3
    iget-object v8, v6, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v8, :cond_f

    .line 21
    invoke-virtual {v8, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_f

    .line 22
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 23
    iget-object v8, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v9, v8, v7

    .line 24
    iget-object v10, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v11, v10, v7

    .line 25
    iget v12, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v9, v12, :cond_c

    .line 26
    iget v13, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v9, v13

    :cond_c
    if-le v11, v12, :cond_d

    .line 27
    iget v12, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v11, v12

    .line 28
    :cond_d
    aput v2, v8, v7

    .line 29
    aput v3, v10, v7

    .line 30
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v0, v2, v7

    if-eqz p1, :cond_e

    .line 31
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    move-object v0, p0

    move-object/from16 v1, p2

    move v2, v9

    move v3, v11

    move/from16 v4, p3

    move/from16 v5, p4

    .line 32
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    :cond_e
    return-void

    .line 33
    :cond_f
    iget-object v8, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v10, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v8, v10, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 34
    iget-object v8, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v10, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v8, v10, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 35
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v8, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v2, v8, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 36
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v3, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 37
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v2, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v3, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 38
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 39
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v0, v9

    iput v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 40
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    add-int/2addr v0, v9

    iput v0, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 41
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    mul-int/2addr v0, v7

    add-int/2addr v0, v9

    .line 42
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v2, v2

    if-ge v2, v0, :cond_10

    .line 43
    new-array v0, v0, [I

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    :cond_10
    if-eqz p1, :cond_11

    .line 44
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 45
    invoke-direct {p0, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_11
    return-void
.end method

.method private final siftDown(I[Ljava/lang/Object;I[I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[I[I)V"
        }
    .end annotation

    .line 1
    mul-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    :goto_0
    if-ge v0, p3, :cond_2

    .line 6
    .line 7
    add-int/lit8 v1, p3, -0x1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_0
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ltz v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    aget-object v1, p2, p1

    .line 28
    .line 29
    aget-object v2, p2, v0

    .line 30
    .line 31
    aput-object v2, p2, p1

    .line 32
    .line 33
    aput-object v1, p2, v0

    .line 34
    .line 35
    aget v1, p4, p1

    .line 36
    .line 37
    aget v2, p4, v0

    .line 38
    .line 39
    aput v2, p4, p1

    .line 40
    .line 41
    aput v1, p4, v0

    .line 42
    .line 43
    aget v1, p5, p1

    .line 44
    .line 45
    aget v2, p5, v0

    .line 46
    .line 47
    aput v2, p5, p1

    .line 48
    .line 49
    aput v1, p5, v0

    .line 50
    .line 51
    mul-int/lit8 p1, v0, 0x2

    .line 52
    .line 53
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    move v3, v0

    .line 56
    move v0, p1

    .line 57
    move p1, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method private final sort([Ljava/lang/Object;[I[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    .line 1
    array-length v6, p1

    .line 2
    div-int/lit8 v0, v6, 0x2

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    move v7, v0

    .line 7
    :goto_0
    if-ltz v7, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move v1, v7

    .line 11
    move-object v2, p1

    .line 12
    move v3, v6

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v7, v7, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 v6, v6, -0x1

    .line 22
    .line 23
    :goto_1
    if-lez v6, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget-object v1, p1, v0

    .line 27
    .line 28
    aget-object v2, p1, v6

    .line 29
    .line 30
    aput-object v2, p1, v0

    .line 31
    .line 32
    aput-object v1, p1, v6

    .line 33
    .line 34
    aget v1, p2, v0

    .line 35
    .line 36
    aget v2, p2, v6

    .line 37
    .line 38
    aput v2, p2, v0

    .line 39
    .line 40
    aput v1, p2, v6

    .line 41
    .line 42
    aget v1, p3, v0

    .line 43
    .line 44
    aget v2, p3, v6

    .line 45
    .line 46
    aput v2, p3, v0

    .line 47
    .line 48
    aput v1, p3, v6

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    move-object v0, p0

    .line 52
    move-object v2, p1

    .line 53
    move v3, v6

    .line 54
    move-object v4, p2

    .line 55
    move-object v5, p3

    .line 56
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v6, v6, -0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method private treeRoot()I
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .locals 3

    if-lt p1, p2, :cond_5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, v0, v1

    if-ge p1, v2, :cond_5

    const/4 v2, 0x2

    if-ne p4, v2, :cond_1

    if-nez p6, :cond_0

    if-le p1, p2, :cond_5

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-ne p4, v2, :cond_2

    if-eqz p5, :cond_5

    add-int/2addr v0, v1

    return v0

    :cond_2
    if-nez p6, :cond_4

    sub-int p3, v0, p3

    if-ge p1, p3, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return p2

    :cond_5
    return p1
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 7
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v4, 0x0

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 12
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 10
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "charAt: "

    .line 6
    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    if-ge p1, v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 16
    .line 17
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 18
    .line 19
    add-int/2addr p1, v1

    .line 20
    aget-char p1, v0, p1

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 24
    .line 25
    aget-char p1, v0, p1

    .line 26
    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v3, " >= length "

    .line 31
    .line 32
    invoke-static {v1, p1, v3, v0}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v2

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 41
    .line 42
    const-string v2, " < 0"

    .line 43
    .line 44
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public clear()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 3
    .line 4
    .line 5
    move-result v2

    .line 6
    const-string v3, ""

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 16
    .line 17
    return-void
.end method

.method public clearSpans()V
    .locals 7

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    :goto_0
    if-ltz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object v2, v1, v0

    .line 10
    .line 11
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 12
    .line 13
    aget v3, v3, v0

    .line 14
    .line 15
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 16
    .line 17
    aget v4, v4, v0

    .line 18
    .line 19
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 20
    .line 21
    if-le v3, v5, :cond_0

    .line 22
    .line 23
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 24
    .line 25
    sub-int/2addr v3, v6

    .line 26
    :cond_0
    if-le v4, v5, :cond_1

    .line 27
    .line 28
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 29
    .line 30
    sub-int/2addr v4, v5

    .line 31
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    aput-object v5, v1, v0

    .line 35
    .line 36
    invoke-direct {p0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 47
    .line 48
    .line 49
    :cond_3
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 51
    .line 52
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 6

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 3
    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_0
    return-object p1
.end method

.method public drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    const-string v2, "drawText"

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 13
    .line 14
    if-gt v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 17
    .line 18
    sub-int v4, v1, v3

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    move/from16 v3, p2

    .line 23
    .line 24
    move/from16 v5, p4

    .line 25
    .line 26
    move/from16 v6, p5

    .line 27
    .line 28
    move-object/from16 v7, p6

    .line 29
    .line 30
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-lt v3, v2, :cond_1

    .line 35
    .line 36
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 37
    .line 38
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 39
    .line 40
    add-int v7, v3, v2

    .line 41
    .line 42
    sub-int v8, v1, v3

    .line 43
    .line 44
    move-object/from16 v5, p1

    .line 45
    .line 46
    move/from16 v9, p4

    .line 47
    .line 48
    move/from16 v10, p5

    .line 49
    .line 50
    move-object/from16 v11, p6

    .line 51
    .line 52
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sub-int v12, v1, v3

    .line 57
    .line 58
    invoke-static {v12}, Landroid/text/TextUtils;->obtain(I)[C

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 64
    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    move-object/from16 v9, p1

    .line 68
    .line 69
    move-object v10, v2

    .line 70
    move/from16 v13, p4

    .line 71
    .line 72
    move/from16 v14, p5

    .line 73
    .line 74
    move-object/from16 v15, p6

    .line 75
    .line 76
    invoke-virtual/range {v9 .. v15}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v3, p2

    .line 3
    .line 4
    move/from16 v1, p3

    .line 5
    .line 6
    move/from16 v5, p4

    .line 7
    .line 8
    move/from16 v2, p5

    .line 9
    .line 10
    const-string v4, "drawTextRun"

    .line 11
    .line 12
    invoke-direct {p0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    sub-int v10, v2, v5

    .line 16
    .line 17
    sub-int v8, v1, v3

    .line 18
    .line 19
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 20
    .line 21
    if-gt v2, v1, :cond_0

    .line 22
    .line 23
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    move/from16 v3, p2

    .line 28
    .line 29
    move v4, v8

    .line 30
    move/from16 v5, p4

    .line 31
    .line 32
    move v6, v10

    .line 33
    move/from16 v7, p6

    .line 34
    .line 35
    move/from16 v8, p7

    .line 36
    .line 37
    move/from16 v9, p8

    .line 38
    .line 39
    move-object/from16 v10, p9

    .line 40
    .line 41
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-lt v5, v1, :cond_1

    .line 46
    .line 47
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 48
    .line 49
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 50
    .line 51
    add-int v7, v3, v1

    .line 52
    .line 53
    add-int v9, v5, v1

    .line 54
    .line 55
    move-object/from16 v5, p1

    .line 56
    .line 57
    move/from16 v11, p6

    .line 58
    .line 59
    move/from16 v12, p7

    .line 60
    .line 61
    move/from16 v13, p8

    .line 62
    .line 63
    move-object/from16 v14, p9

    .line 64
    .line 65
    invoke-virtual/range {v5 .. v14}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->obtain(I)[C

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0, v5, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 75
    .line 76
    .line 77
    sub-int v7, v3, v5

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    move-object/from16 v5, p1

    .line 81
    .line 82
    move-object v6, v1

    .line 83
    move/from16 v11, p6

    .line 84
    .line 85
    move/from16 v12, p7

    .line 86
    .line 87
    move/from16 v13, p8

    .line 88
    .line 89
    move-object/from16 v14, p9

    .line 90
    .line 91
    invoke-virtual/range {v5 .. v14}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    check-cast p1, Landroid/text/Spanned;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-class v2, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 33
    .line 34
    array-length v3, v0

    .line 35
    if-ne v2, v3, :cond_5

    .line 36
    .line 37
    move v2, v1

    .line 38
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 39
    .line 40
    if-ge v2, v3, :cond_4

    .line 41
    .line 42
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 43
    .line 44
    aget-object v3, v3, v2

    .line 45
    .line 46
    aget-object v4, v0, v2

    .line 47
    .line 48
    if-ne v3, p0, :cond_1

    .line 49
    .line 50
    if-ne p1, v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-ne v5, v6, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v5, v6, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eq v3, v4, :cond_2

    .line 81
    .line 82
    :cond_0
    return v1

    .line 83
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-ne v5, v6, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-ne v5, v6, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eq v3, v4, :cond_2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    :goto_1
    return v1

    .line 124
    :cond_4
    const/4 p1, 0x1

    .line 125
    return p1

    .line 126
    :cond_5
    return v1
.end method

.method public getChars(II[CI)V
    .locals 3

    .line 1
    const-string v0, "getChars"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 7
    .line 8
    if-gt p2, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 11
    .line 12
    sub-int/2addr p2, p1

    .line 13
    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-lt p1, v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 20
    .line 21
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 22
    .line 23
    add-int/2addr v1, p1

    .line 24
    sub-int/2addr p2, p1

    .line 25
    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 30
    .line 31
    sub-int/2addr v0, p1

    .line 32
    invoke-static {v1, p1, p3, p4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 36
    .line 37
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 38
    .line 39
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    sub-int p1, v1, p1

    .line 43
    .line 44
    add-int/2addr p1, p4

    .line 45
    sub-int/2addr p2, v1

    .line 46
    invoke-static {v0, v2, p3, p1, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    aget p1, v0, p1

    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    return v1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    aget v1, v0, p1

    .line 23
    .line 24
    :goto_0
    return v1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    aget p1, v0, p1

    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    return v1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;Z)[TT;"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v3, p3

    if-nez v3, :cond_0

    .line 2
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget v0, v10, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    move v1, p1

    move/from16 v2, p2

    invoke-direct {p0, p1, v2, v3, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [Ljava/lang/Object;

    if-eqz p4, :cond_3

    .line 7
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v4

    goto :goto_0

    :cond_3
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    move-object v12, v4

    if-eqz p4, :cond_4

    .line 8
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_1
    move-object v13, v0

    .line 9
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    if-eqz p4, :cond_5

    .line 10
    invoke-direct {p0, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    .line 11
    invoke-static {v12}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 12
    invoke-static {v13}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    :cond_5
    return-object v11
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v3, p1

    .line 3
    move v1, p2

    .line 4
    move v5, p3

    .line 5
    move v2, p4

    .line 6
    sub-int v6, v2, v5

    .line 7
    .line 8
    sub-int v4, v1, v3

    .line 9
    .line 10
    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 11
    .line 12
    if-gt v1, v7, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 15
    .line 16
    move-object/from16 v1, p8

    .line 17
    .line 18
    move v3, p1

    .line 19
    move v5, p3

    .line 20
    move/from16 v7, p5

    .line 21
    .line 22
    move-object/from16 v8, p6

    .line 23
    .line 24
    move/from16 v9, p7

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-lt v3, v7, :cond_1

    .line 32
    .line 33
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 34
    .line 35
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 36
    .line 37
    add-int/2addr v3, v1

    .line 38
    add-int/2addr v5, v1

    .line 39
    move-object/from16 v1, p8

    .line 40
    .line 41
    move/from16 v7, p5

    .line 42
    .line 43
    move-object/from16 v8, p6

    .line 44
    .line 45
    move/from16 v9, p7

    .line 46
    .line 47
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, p3, p4, v10, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 58
    .line 59
    .line 60
    sub-int/2addr v3, v5

    .line 61
    const/4 v5, 0x0

    .line 62
    move-object/from16 v1, p8

    .line 63
    .line 64
    move-object v2, v10

    .line 65
    move/from16 v7, p5

    .line 66
    .line 67
    move-object/from16 v8, p6

    .line 68
    .line 69
    move/from16 v9, p7

    .line 70
    .line 71
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v10}, Landroid/text/TextUtils;->recycle([C)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return v1
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sub-int v3, p2, p1

    .line 2
    .line 3
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 4
    .line 5
    if-gt p2, v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 8
    .line 9
    move-object v0, p6

    .line 10
    move v2, p1

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    move v6, p5

    .line 14
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-lt p1, v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 22
    .line 23
    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 24
    .line 25
    add-int v2, p1, p2

    .line 26
    .line 27
    add-int v5, p4, p2

    .line 28
    .line 29
    move-object v0, p6

    .line 30
    move v4, p3

    .line 31
    move v6, p5

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 37
    .line 38
    sub-int/2addr p1, p2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, v7, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    sub-int v5, p4, p1

    .line 50
    .line 51
    move-object v0, p6

    .line 52
    move-object v1, v7

    .line 53
    move v4, p3

    .line 54
    move v6, p5

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    add-int/2addr p1, p2

    .line 60
    invoke-static {v7}, Landroid/text/TextUtils;->recycle([C)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return p1
.end method

.method public getTextWatcherDepth()I
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 3

    .line 1
    const-string v0, "getTextWidths"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 7
    .line 8
    if-gt p2, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 11
    .line 12
    sub-int/2addr p2, p1

    .line 13
    invoke-virtual {p4, v0, p1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-lt p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 21
    .line 22
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 23
    .line 24
    add-int/2addr v1, p1

    .line 25
    sub-int/2addr p2, p1

    .line 26
    invoke-virtual {p4, v0, v1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sub-int v0, p2, p1

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4, v1, v2, v0, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 16
    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    if-eq v2, p0, :cond_0

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v0, v3

    .line 32
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/2addr v3, v0

    .line 39
    mul-int/lit8 v3, v3, 0x1f

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v0, v3

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v0, v2

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 3

    .line 1
    const-string v0, "measureText"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 7
    .line 8
    if-gt p2, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 11
    .line 12
    sub-int/2addr p2, p1

    .line 13
    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-lt p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 21
    .line 22
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 23
    .line 24
    add-int/2addr v1, p1

    .line 25
    sub-int/2addr p2, p1

    .line 26
    invoke-virtual {p3, v0, v1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sub-int v0, p2, p1

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v1, v2, v0}, Landroid/graphics/Paint;->measureText([CII)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return p1
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    if-nez p3, :cond_1

    .line 7
    .line 8
    const-class p3, Ljava/lang/Object;

    .line 9
    .line 10
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 1

    .line 17
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    .line 3
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const-string v0, "replace"

    .line 4
    invoke-direct {v7, v0, v8, v9}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 5
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v10, v0

    const/4 v11, 0x0

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move v15, v11

    :goto_0
    if-ge v15, v10, :cond_1

    .line 6
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v0, v15

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move-object v12, v0

    move v14, v1

    move v13, v11

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    sub-int v10, v9, v8

    sub-int v15, v14, v13

    if-nez v10, :cond_2

    if-nez v15, :cond_2

    .line 8
    invoke-static {v12, v13}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v7

    :cond_2
    add-int v0, v8, v10

    .line 9
    const-class v1, Landroid/text/TextWatcher;

    invoke-virtual {v7, v8, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/text/TextWatcher;

    .line 10
    invoke-direct {v7, v6, v8, v10, v15}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    const/16 v16, 0x1

    if-eqz v10, :cond_3

    if-eqz v15, :cond_3

    move/from16 v17, v16

    goto :goto_1

    :cond_3
    move/from16 v17, v11

    :goto_1
    if-eqz v17, :cond_4

    .line 11
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 12
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    move v5, v0

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v11

    move v5, v4

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v12

    move v12, v4

    move v4, v13

    move v13, v5

    move v5, v14

    .line 13
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    if-eqz v17, :cond_9

    if-le v13, v8, :cond_6

    if-ge v13, v9, :cond_6

    sub-int v5, v13, v8

    int-to-long v0, v5

    int-to-long v2, v15

    mul-long/2addr v0, v2

    int-to-long v2, v10

    .line 14
    div-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    add-int v4, v8, v2

    const/4 v1, 0x0

    .line 15
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move v3, v4

    move-object v13, v6

    move v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move/from16 v11, v16

    goto :goto_3

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_6
    move-object v13, v6

    :goto_3
    if-le v12, v8, :cond_8

    if-ge v12, v9, :cond_8

    sub-int v4, v12, v8

    int-to-long v0, v4

    int-to-long v2, v15

    mul-long/2addr v0, v2

    int-to-long v2, v10

    .line 17
    div-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_7

    add-int v4, v8, v2

    const/4 v1, 0x0

    .line 18
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v3, v4

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    goto :goto_4

    .line 19
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_8
    move/from16 v16, v11

    :goto_4
    if-eqz v16, :cond_a

    .line 20
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    goto :goto_5

    :cond_9
    move-object v13, v6

    .line 21
    :cond_a
    :goto_5
    invoke-direct {v7, v13, v8, v10, v15}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 22
    invoke-direct {v7, v13}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    sub-int/2addr v15, v10

    .line 23
    invoke-direct {v7, v8, v9, v15}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    return-object v7
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [C

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
