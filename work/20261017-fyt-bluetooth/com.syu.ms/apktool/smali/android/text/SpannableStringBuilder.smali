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

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mSpanCount:I

.field private mSpanCountBeforeAdd:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 1
    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
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
    .locals 12

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    sub-int v0, p3, p2

    if-ltz v0, :cond_6

    add-int/lit8 v1, v0, 0x1

    .line 5
    invoke-static {v1}, Lu/a;->f(I)I

    move-result v1

    .line 6
    new-array v2, v1, [C

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 7
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, v0

    .line 8
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, p2, p3, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 10
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 11
    invoke-static {v1}, Lu/a;->h(I)I

    move-result v2

    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 13
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 14
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 15
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 16
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    .line 17
    check-cast p1, Landroid/text/Spanned;

    .line 18
    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    move v2, v1

    .line 19
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_5

    .line 20
    aget-object v3, p3, v2

    instance-of v3, v3, Landroid/text/NoCopySpan;

    if-eqz v3, :cond_0

    goto :goto_3

    .line 21
    :cond_0
    aget-object v3, p3, v2

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    .line 22
    aget-object v4, p3, v2

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p2

    .line 23
    aget-object v5, p3, v2

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    if-gez v3, :cond_1

    move v3, v1

    :cond_1
    if-le v3, v0, :cond_2

    move v9, v0

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_1
    if-gez v4, :cond_3

    move v4, v1

    :cond_3
    if-le v4, v0, :cond_4

    move v10, v0

    goto :goto_2

    :cond_4
    move v10, v4

    :goto_2
    const/4 v7, 0x0

    .line 24
    aget-object v8, p3, v2

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    sub-int v12, v6, v8

    sub-int v13, v11, v10

    sub-int v14, v13, v12

    .line 1
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    move/from16 v16, v0

    :goto_0
    const/16 v17, 0x0

    if-ltz v16, :cond_f

    .line 2
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, v16

    .line 3
    iget v1, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v1, :cond_0

    .line 4
    iget v2, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v2

    .line 5
    :cond_0
    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, v16

    if-le v2, v1, :cond_1

    .line 6
    iget v1, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v1

    .line 7
    :cond_1
    iget-object v1, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v16

    const/16 v3, 0x33

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0xa

    if-le v0, v8, :cond_4

    if-gt v0, v6, :cond_4

    move v4, v6

    :goto_1
    if-ge v4, v1, :cond_3

    if-le v4, v6, :cond_2

    add-int/lit8 v5, v4, -0x1

    .line 9
    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v5, v4

    goto :goto_3

    :cond_4
    move v5, v0

    :goto_3
    if-le v2, v8, :cond_7

    if-gt v2, v6, :cond_7

    move v4, v6

    :goto_4
    if-ge v4, v1, :cond_6

    if-le v4, v6, :cond_5

    add-int/lit8 v15, v4, -0x1

    .line 10
    invoke-virtual {v7, v15}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v15

    if-ne v15, v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    move v15, v4

    goto :goto_6

    :cond_7
    move v15, v2

    :goto_6
    if-ne v5, v0, :cond_9

    if-eq v15, v2, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v19, v5

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v1, 0x0

    .line 11
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v0, v16

    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v18, v0, v16

    move-object/from16 v0, p0

    move v3, v5

    move v4, v15

    move/from16 v19, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    :goto_8
    move v2, v15

    move/from16 v0, v19

    :cond_a
    if-ne v0, v8, :cond_b

    const/16 v17, 0x1000

    goto :goto_9

    :cond_b
    add-int v1, v6, v14

    if-ne v0, v1, :cond_c

    const/16 v17, 0x2000

    :cond_c
    :goto_9
    move/from16 v0, v17

    if-ne v2, v8, :cond_d

    or-int/lit16 v0, v0, 0x4000

    goto :goto_a

    :cond_d
    add-int v1, v6, v14

    if-ne v2, v1, :cond_e

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 12
    :cond_e
    :goto_a
    iget-object v1, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v1, v16

    or-int/2addr v0, v2

    aput v0, v1, v16

    add-int/lit8 v16, v16, -0x1

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 13
    :cond_f
    invoke-direct {v7, v6}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 14
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v14, v0, :cond_10

    .line 15
    iget-object v1, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v1, v1

    add-int/2addr v1, v14

    sub-int/2addr v1, v0

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_10
    if-nez v13, :cond_11

    const/4 v13, 0x1

    goto :goto_b

    :cond_11
    move/from16 v13, v17

    :goto_b
    if-lez v12, :cond_14

    move/from16 v0, v17

    .line 16
    :goto_c
    iget v1, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_14

    .line 17
    iget-object v1, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v0

    const/16 v2, 0x21

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    iget-object v1, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v1, v0

    if-lt v2, v8, :cond_13

    aget v2, v1, v0

    iget v3, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v4, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, v3, v4

    if-ge v2, v5, :cond_13

    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v2, v0

    if-lt v5, v8, :cond_13

    aget v5, v2, v0

    add-int/2addr v4, v3

    if-ge v5, v4, :cond_13

    if-nez v13, :cond_12

    aget v1, v1, v0

    if-gt v1, v8, :cond_12

    aget v1, v2, v0

    if-ge v1, v3, :cond_13

    .line 18
    :cond_12
    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    goto :goto_c

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 19
    :cond_14
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v0, v14

    iput v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 20
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v14

    iput v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_15

    .line 21
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "mGapLength < 1"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_15
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {v9, v10, v11, v0, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-lez v12, :cond_17

    .line 23
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v2

    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v2, v2

    if-ne v0, v2, :cond_16

    move v15, v1

    goto :goto_d

    :cond_16
    move/from16 v15, v17

    :goto_d
    move/from16 v12, v17

    .line 24
    :goto_e
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v12, v0, :cond_17

    .line 25
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, v12

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v4, v0, 0x4

    .line 26
    iget-object v6, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v6, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v14

    move v5, v15

    move-object/from16 v16, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v0

    aput v0, v16, v12

    .line 27
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, v12

    and-int/lit8 v4, v0, 0xf

    .line 28
    iget-object v6, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v12

    move-object/from16 v0, p0

    move-object/from16 v16, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v0

    aput v0, v16, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 29
    :cond_17
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iput v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCountBeforeAdd:I

    .line 30
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1b

    .line 31
    move-object v6, v9

    check-cast v6, Landroid/text/Spanned;

    .line 32
    const-class v0, Ljava/lang/Object;

    invoke-interface {v6, v10, v11, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    move/from16 v12, v17

    .line 33
    :goto_f
    array-length v0, v9

    if-ge v12, v0, :cond_1b

    .line 34
    aget-object v0, v9, v12

    invoke-interface {v6, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 35
    aget-object v1, v9, v12

    invoke-interface {v6, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v10, :cond_18

    move v0, v10

    :cond_18
    if-le v1, v11, :cond_19

    move v1, v11

    .line 36
    :cond_19
    aget-object v2, v9, v12

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1a

    const/4 v2, 0x0

    .line 37
    aget-object v3, v9, v12

    sub-int/2addr v0, v10

    add-int v4, v0, v8

    sub-int/2addr v1, v10

    add-int v5, v1, v8

    aget-object v0, v9, v12

    invoke-interface {v6, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4

    const-string v0, " "

    if-lt p3, p2, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    if-gt p3, v1, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " starts before 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ends beyond length "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has end before start"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroid/text/Spanned;

    .line 3
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 4
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    aget-object v3, p1, v2

    .line 6
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private moveGapTo(I)V
    .locals 10

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v2, :cond_2

    sub-int v3, v2, p1

    .line 4
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v5

    sub-int/2addr v2, v3

    invoke-static {v4, p1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    sub-int v3, p1, v2

    .line 5
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, p1

    sub-int/2addr v5, v3

    invoke-static {v4, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :goto_1
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_b

    .line 7
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v2, v1

    .line 8
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v4, v1

    .line 9
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v6, :cond_3

    .line 10
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v7

    :cond_3
    const/4 v7, 0x3

    const/4 v8, 0x2

    if-le v3, p1, :cond_4

    .line 11
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    :goto_2
    add-int/2addr v3, v9

    goto :goto_3

    :cond_4
    if-ne v3, p1, :cond_6

    .line 12
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v9, v1

    and-int/lit16 v9, v9, 0xf0

    shr-int/lit8 v9, v9, 0x4

    if-eq v9, v8, :cond_5

    if-eqz v0, :cond_6

    if-ne v9, v7, :cond_6

    .line 13
    :cond_5
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    goto :goto_2

    :cond_6
    :goto_3
    if-le v5, v6, :cond_7

    .line 14
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    :cond_7
    if-le v5, p1, :cond_8

    .line 15
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    :goto_4
    add-int/2addr v5, v6

    goto :goto_5

    :cond_8
    if-ne v5, p1, :cond_a

    .line 16
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit8 v6, v6, 0xf

    if-eq v6, v8, :cond_9

    if-eqz v0, :cond_a

    if-ne v6, v7, :cond_a

    .line 17
    :cond_9
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    goto :goto_4

    .line 18
    :cond_a
    :goto_5
    aput v3, v2, v1

    .line 19
    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20
    :cond_b
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return-void
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ... "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    invoke-static {v0, v5, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v0, v5, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v0, v5, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 12
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v0, p1

    .line 13
    invoke-direct {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    return-void
.end method

.method private resizeFor(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 2
    invoke-static {p1}, Lu/a;->f(I)I

    move-result p1

    sub-int v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    new-array v3, p1, [C

    .line 4
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    .line 6
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr v0, v4

    sub-int/2addr p1, v4

    invoke-static {v5, v0, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 8
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-ge p1, v1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "mGapLength < 1"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_1
    :goto_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, p1, :cond_4

    .line 11
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, p1, v6

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v1, :cond_2

    aget v0, p1, v6

    add-int/2addr v0, v2

    aput v0, p1, v6

    .line 12
    :cond_2
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, p1, v6

    if-le v0, v1, :cond_3

    aget v0, p1, v6

    add-int/2addr v0, v2

    aput v0, p1, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4

    .line 1
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    .line 1
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4

    .line 1
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCountBeforeAdd:I

    if-ge v1, v2, :cond_b

    .line 2
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v1

    .line 3
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v1

    .line 4
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v5

    :cond_0
    move v9, v2

    if-le v3, v4, :cond_1

    .line 5
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v2

    :cond_1
    move v10, v3

    .line 6
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v2, v1

    add-int v3, p2, p3

    const/4 v4, 0x1

    if-le v9, v3, :cond_2

    if-eqz p3, :cond_5

    sub-int v5, v9, p3

    move v7, v5

    move v5, v4

    goto :goto_2

    :cond_2
    if-lt v9, p1, :cond_5

    if-ne v9, p1, :cond_3

    and-int/lit16 v5, v2, 0x1000

    const/16 v6, 0x1000

    if-eq v5, v6, :cond_5

    :cond_3
    if-ne v9, v3, :cond_4

    and-int/lit16 v5, v2, 0x2000

    const/16 v6, 0x2000

    if-eq v5, v6, :cond_5

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_1
    move v7, v9

    :goto_2
    if-le v10, v3, :cond_6

    if-eqz p3, :cond_8

    sub-int v2, v10, p3

    move v8, v2

    goto :goto_4

    :cond_6
    if-lt v10, p1, :cond_8

    if-ne v10, p1, :cond_7

    and-int/lit16 v6, v2, 0x4000

    const/16 v8, 0x4000

    if-eq v6, v8, :cond_8

    :cond_7
    if-ne v10, v3, :cond_9

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :cond_9
    :goto_3
    move v8, v10

    :goto_4
    if-eqz v4, :cond_a

    .line 7
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v2, v1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 8
    :cond_a
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v2, v1

    const v4, -0xf001

    and-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_b
    :goto_5
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v2, p1, :cond_e

    .line 10
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget p1, p1, v2

    .line 11
    iget-object p2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget p2, p2, v2

    .line 12
    iget p3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, p3, :cond_c

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, v0

    :cond_c
    if-le p2, p3, :cond_d

    .line 13
    iget p3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p2, p3

    .line 14
    :cond_d
    iget-object p3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object p3, p3, v2

    invoke-direct {p0, p3, p1, p2}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 15

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

    const/16 v3, 0xa

    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-eq v4, v8, :cond_1

    add-int/lit8 v8, v4, -0x1

    .line 4
    invoke-virtual {p0, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    and-int/lit8 v8, v0, 0xf

    if-ne v8, v7, :cond_3

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-eq v5, v9, :cond_3

    add-int/lit8 v9, v5, -0x1

    .line 7
    invoke-virtual {p0, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v3, 0x2

    const/4 v9, 0x1

    if-ne v2, v3, :cond_5

    if-ne v8, v9, :cond_5

    if-ne v4, v5, :cond_5

    if-eqz p1, :cond_4

    const-string v0, "SpannableStringBuilder"

    const-string v1, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 10
    :cond_5
    iget v10, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v10, :cond_6

    .line 11
    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    :goto_2
    add-int/2addr v2, v4

    goto :goto_3

    :cond_6
    if-ne v4, v10, :cond_8

    if-eq v2, v3, :cond_7

    if-ne v2, v7, :cond_8

    .line 12
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ne v4, v2, :cond_8

    .line 13
    :cond_7
    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    goto :goto_2

    :cond_8
    move v2, v4

    .line 14
    :goto_3
    iget v10, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v10, :cond_9

    .line 15
    iget v3, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    :goto_4
    add-int/2addr v3, v5

    goto :goto_5

    :cond_9
    if-ne v5, v10, :cond_b

    if-eq v8, v3, :cond_a

    if-ne v8, v7, :cond_b

    .line 16
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ne v5, v3, :cond_b

    .line 17
    :cond_a
    iget v3, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    goto :goto_4

    :cond_b
    move v3, v5

    .line 18
    :goto_5
    iget v7, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 19
    iget-object v8, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v10, 0x0

    move v11, v10

    :goto_6
    if-ge v11, v7, :cond_10

    .line 20
    aget-object v12, v8, v11

    if-ne v12, v1, :cond_f

    .line 21
    iget-object v7, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v8, v7, v11

    .line 22
    iget-object v9, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v10, v9, v11

    .line 23
    iget v12, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v8, v12, :cond_c

    .line 24
    iget v13, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v8, v13

    :cond_c
    if-le v10, v12, :cond_d

    .line 25
    iget v12, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v10, v12

    .line 26
    :cond_d
    aput v2, v7, v11

    .line 27
    aput v3, v9, v11

    .line 28
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v0, v2, v11

    if-eqz p1, :cond_e

    move-object v0, p0

    move-object/from16 v1, p2

    move v2, v8

    move v3, v10

    move/from16 v4, p3

    move/from16 v5, p4

    .line 29
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    :cond_e
    return-void

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 30
    :cond_10
    iget v7, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v8, v7, 0x1

    iget-object v11, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    array-length v11, v11

    if-lt v8, v11, :cond_11

    add-int/2addr v7, v9

    .line 31
    invoke-static {v7}, Lu/a;->h(I)I

    move-result v7

    .line 32
    new-array v8, v7, [Ljava/lang/Object;

    .line 33
    new-array v11, v7, [I

    .line 34
    new-array v12, v7, [I

    .line 35
    new-array v7, v7, [I

    .line 36
    iget-object v13, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v14, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v13, v10, v8, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v13, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v14, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v13, v10, v11, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v13, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v14, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v13, v10, v12, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v13, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v14, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v13, v10, v7, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v8, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 41
    iput-object v11, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 42
    iput-object v12, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 43
    iput-object v7, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 44
    :cond_11
    iget-object v7, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v8, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput-object v1, v7, v8

    .line 45
    iget-object v7, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v7, v8

    .line 46
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v2, v8

    .line 47
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v0, v2, v8

    add-int/2addr v8, v9

    .line 48
    iput v8, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz p1, :cond_12

    .line 49
    invoke-direct {p0, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_12
    return-void
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .locals 3

    if-lt p1, p2, :cond_5

    .line 1
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

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

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

    .line 11
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

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 9
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
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

    move-result v0

    const-string v1, "charAt: "

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_1

    .line 2
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, v1

    aget-char p1, v0, p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char p1, v0, p1

    return p1

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= length "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v1, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public clearSpans()V
    .locals 7

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 3
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v3, v0

    .line 4
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v0

    .line 5
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v5, :cond_0

    .line 6
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v6

    :cond_0
    if-le v4, v5, :cond_1

    .line 7
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    .line 8
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v5, 0x0

    .line 9
    aput-object v5, v1, v0

    .line 10
    invoke-direct {p0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
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

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v1, p3

    const-string v2, "drawText"

    .line 1
    invoke-direct {v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 2
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v4, v1, v3

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    if-lt v3, v2, :cond_1

    .line 4
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v7, v3, v2

    sub-int v8, v1, v3

    move-object/from16 v5, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    sub-int v12, v1, v3

    .line 5
    invoke-static {v12}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    const/4 v11, 0x0

    move-object/from16 v9, p1

    move-object v10, v2

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    .line 7
    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return-void
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move/from16 v3, p2

    move/from16 v1, p3

    move/from16 v5, p4

    move/from16 v2, p5

    const-string v4, "drawTextRun"

    .line 1
    invoke-direct {p0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    sub-int v10, v2, v5

    sub-int v8, v1, v3

    .line 2
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v2, v1, :cond_0

    .line 3
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v1, p1

    move/from16 v3, p2

    move v4, v8

    move/from16 v5, p4

    move v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    if-lt v5, v1, :cond_1

    .line 4
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v7, v3, v1

    add-int v9, v5, v1

    move-object/from16 v5, p1

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0, v5, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v7, v3, v5

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object v6, v1

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    .line 7
    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Landroid/text/Spanned;

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_5

    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v2, v3, :cond_4

    .line 6
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 7
    aget-object v4, v0, v2

    if-ne v3, p0, :cond_1

    if-ne p1, v4, :cond_0

    .line 8
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_0
    return v1

    .line 9
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method public getChars(II[CI)V
    .locals 3

    const-string v0, "getChars"

    .line 1
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 2
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr v0, p1

    invoke-static {v1, p1, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v1

    sub-int p1, v1, p1

    add-int/2addr p4, p1

    sub-int/2addr p2, v1

    invoke-static {v0, v2, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget p1, p1, v0

    .line 5
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_0

    .line 6
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, v0

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget p1, p1, v0

    .line 5
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_0

    .line 6
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, v0

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v3, :cond_0

    .line 1
    invoke-static/range {p3 .. p3}, Lu/a;->d(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 2
    :cond_0
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 3
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 4
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 5
    iget-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 6
    iget-object v8, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 7
    iget v9, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 8
    iget v10, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v11, 0x0

    move-object v13, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v4, :cond_d

    .line 9
    aget v12, v6, v14

    if-le v12, v9, :cond_1

    sub-int/2addr v12, v10

    :cond_1
    if-le v12, v2, :cond_2

    move-object/from16 v17, v6

    goto/16 :goto_3

    :cond_2
    move-object/from16 v17, v6

    .line 10
    aget v6, v7, v14

    if-le v6, v9, :cond_3

    sub-int/2addr v6, v10

    :cond_3
    if-ge v6, v1, :cond_4

    goto :goto_3

    :cond_4
    if-eq v12, v6, :cond_6

    if-eq v1, v2, :cond_6

    if-ne v12, v2, :cond_5

    goto :goto_3

    :cond_5
    if-ne v6, v1, :cond_6

    goto :goto_3

    .line 11
    :cond_6
    aget-object v6, v5, v14

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    if-nez v15, :cond_8

    .line 12
    aget-object v6, v5, v14

    add-int/lit8 v15, v15, 0x1

    move-object v13, v6

    goto :goto_3

    :cond_8
    const/4 v6, 0x1

    if-ne v15, v6, :cond_9

    sub-int v11, v4, v14

    add-int/2addr v11, v6

    .line 13
    invoke-static {v3, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 14
    aput-object v13, v11, v6

    .line 15
    :cond_9
    aget v6, v8, v14

    const/high16 v12, 0xff0000

    and-int/2addr v6, v12

    if-eqz v6, :cond_c

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v15, :cond_b

    .line 16
    aget-object v1, v11, v12

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    const/high16 v16, 0xff0000

    and-int v1, v1, v16

    if-le v6, v1, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    goto :goto_1

    :cond_b
    :goto_2
    add-int/lit8 v1, v12, 0x1

    sub-int v6, v15, v12

    .line 17
    invoke-static {v11, v12, v11, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    aget-object v1, v5, v14

    aput-object v1, v11, v12

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v1, v15, 0x1

    .line 19
    aget-object v6, v5, v14

    aput-object v6, v11, v15

    move v15, v1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move-object/from16 v6, v17

    goto :goto_0

    :cond_d
    if-nez v15, :cond_e

    .line 20
    invoke-static/range {p3 .. p3}, Lu/a;->d(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_e
    const/4 v1, 0x1

    if-ne v15, v1, :cond_f

    .line 21
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 22
    aput-object v13, v1, v2

    return-object v1

    :cond_f
    const/4 v2, 0x0

    .line 23
    array-length v1, v11

    if-ne v15, v1, :cond_10

    return-object v11

    .line 24
    :cond_10
    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 25
    invoke-static {v11, v2, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F
    .locals 11

    move-object v0, p0

    move v3, p1

    move v1, p2

    move v5, p3

    move v2, p4

    sub-int v6, v2, v5

    sub-int v4, v1, v3

    .line 1
    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v1, v7, :cond_0

    .line 2
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v1, p8

    move v3, p1

    move v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v1

    goto :goto_0

    :cond_0
    if-lt v3, v7, :cond_1

    .line 3
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v1

    add-int/2addr v5, v1

    move-object/from16 v1, p8

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v10

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p3, p4, v10, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    move-object/from16 v1, p8

    move-object v2, v10

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 6
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v1

    .line 7
    invoke-static {v10}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return v1
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int v3, p2, p1

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    .line 3
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, p2

    add-int v5, p4, p2

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p1

    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, p2

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v7

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v7, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    const/4 v2, 0x0

    sub-int v5, p4, p1

    move-object v0, p6

    move-object v1, v7

    move v4, p3

    move v6, p5

    .line 6
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p2

    add-int/2addr p1, p2

    .line 7
    invoke-static {v7}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return p1
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 3

    const-string v0, "getTextWidths"

    .line 1
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 2
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, p1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, v1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    goto :goto_0

    :cond_1
    sub-int v0, p2, p1

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 7
    invoke-virtual {p4, v1, v2, v0, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

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

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 3

    const-string v0, "measureText"

    .line 1
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 2
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, v1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    goto :goto_0

    :cond_1
    sub-int v0, p2, p1

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 7
    invoke-virtual {p3, v1, v2, v0}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return p1
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 10

    .line 1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 4
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 5
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 6
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-nez p3, :cond_0

    .line 7
    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_5

    .line 8
    aget v7, v2, v6

    .line 9
    aget v8, v3, v6

    if-le v7, v4, :cond_1

    sub-int/2addr v7, v5

    :cond_1
    if-le v8, v4, :cond_2

    sub-int/2addr v8, v5

    :cond_2
    if-le v7, p1, :cond_3

    if-ge v7, p2, :cond_3

    .line 10
    aget-object v9, v1, v6

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move p2, v7

    :cond_3
    if-le v8, p1, :cond_4

    if-ge v8, p2, :cond_4

    .line 11
    aget-object v7, v1, v6

    invoke-virtual {p3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move p2, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2

    .line 14
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 15
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 16
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

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

    .line 3
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 17

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const-string/jumbo v0, "replace"

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
    sub-int v6, v9, v8

    sub-int v10, v14, v13

    if-nez v6, :cond_2

    if-nez v10, :cond_2

    .line 8
    invoke-static {v12, v13}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v7

    :cond_2
    add-int v0, v8, v6

    .line 9
    const-class v1, Landroid/text/TextWatcher;

    invoke-virtual {v7, v8, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Landroid/text/TextWatcher;

    .line 10
    invoke-direct {v7, v15, v8, v6, v10}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    if-eqz v6, :cond_3

    if-eqz v10, :cond_3

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_1

    :cond_3
    move/from16 v16, v11

    :goto_1
    if-eqz v16, :cond_4

    .line 11
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    .line 12
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    move v5, v0

    goto :goto_2

    :cond_4
    move v5, v11

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v12

    move v4, v13

    move v12, v5

    move v5, v14

    .line 13
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    if-eqz v16, :cond_6

    if-le v11, v8, :cond_5

    if-ge v11, v9, :cond_5

    sub-int/2addr v11, v8

    mul-int/2addr v11, v10

    .line 14
    div-int/2addr v11, v6

    add-int v4, v8, v11

    const/4 v1, 0x0

    .line 15
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v3, v4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    :cond_5
    if-le v12, v8, :cond_6

    if-ge v12, v9, :cond_6

    sub-int v5, v12, v8

    mul-int/2addr v5, v10

    .line 16
    div-int/2addr v5, v6

    add-int v4, v8, v5

    const/4 v1, 0x0

    .line 17
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v3, v4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 18
    :cond_6
    invoke-direct {v7, v15, v8, v6, v10}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 19
    invoke-direct {v7, v15}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    sub-int/2addr v10, v6

    .line 20
    invoke-direct {v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    return-object v7
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    sub-int v0, p2, p1

    .line 1
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 2
    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
