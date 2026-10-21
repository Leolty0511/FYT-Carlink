.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_NORMAL:[C

.field public static final ELLIPSIS_STRING:Ljava/lang/String;

.field static final ELLIPSIS_TWO_DOTS:[C

.field private static final ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LAST_SPAN:I = 0x1a

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    const/16 v2, 0x2026

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-char v2, v1, v3

    .line 8
    .line 9
    sput-object v1, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    .line 10
    .line 11
    new-instance v2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 14
    .line 15
    .line 16
    sput-object v2, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    .line 17
    .line 18
    new-array v0, v0, [C

    .line 19
    .line 20
    const/16 v1, 0x2025

    .line 21
    .line 22
    aput-char v1, v0, v3

    .line 23
    .line 24
    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    .line 25
    .line 26
    new-instance v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v0, Landroid/text/TextUtils$1;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 49
    .line 50
    new-array v0, v3, [Ljava/lang/String;

    .line 51
    .line 52
    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 2
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v7

    .line 3
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v4, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move v5, v8

    move-object/from16 v6, p5

    .line 4
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 5
    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    iget-object v1, v7, Landroid/text/MeasuredText;->mChars:[C

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x2c

    if-ge v3, v8, :cond_2

    .line 7
    aget-char v6, v1, v3

    if-ne v6, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    add-int/2addr v4, v3

    const-string v6, ""

    .line 8
    iget-object v9, v7, Landroid/text/MeasuredText;->mWidths:[F

    .line 9
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v15

    move v10, v2

    move v13, v10

    move v14, v13

    :goto_1
    if-ge v14, v8, :cond_6

    int-to-float v10, v10

    .line 10
    aget v11, v9, v14

    add-float/2addr v10, v11

    float-to-int v12, v10

    .line 11
    aget-char v10, v1, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v10, v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    const-string v10, " "

    if-ne v4, v3, :cond_3

    .line 12
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p4

    :goto_2
    move-object/from16 v17, v11

    goto :goto_3

    .line 13
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v10, v2

    move-object/from16 v3, p4

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :goto_3
    const/16 v18, 0x0

    .line 14
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x0

    move-object v10, v15

    move-object/from16 v11, v17

    move v5, v12

    move/from16 v12, v18

    move/from16 v21, v13

    move/from16 v13, v19

    move/from16 v18, v14

    move-object/from16 v14, p5

    move-object v2, v15

    move-object/from16 v15, v20

    invoke-virtual/range {v10 .. v15}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 15
    iget v10, v2, Landroid/text/MeasuredText;->mLen:I

    const/4 v11, 0x0

    move-object/from16 v12, p1

    invoke-virtual {v2, v12, v10, v11}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    int-to-float v11, v5

    add-float/2addr v11, v10

    cmpg-float v10, v11, p2

    if-gtz v10, :cond_4

    add-int/lit8 v13, v18, 0x1

    move-object/from16 v6, v17

    goto :goto_4

    :cond_4
    move/from16 v13, v21

    goto :goto_4

    :cond_5
    move-object/from16 v3, p4

    move v5, v12

    move/from16 v21, v13

    move/from16 v18, v14

    move-object v2, v15

    move-object/from16 v12, p1

    :goto_4
    add-int/lit8 v14, v18, 0x1

    move-object v15, v2

    move v10, v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v5, 0x2c

    goto/16 :goto_1

    :cond_6
    move/from16 v21, v13

    move-object v2, v15

    .line 16
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 17
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move/from16 v13, v21

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2, v0, v2, v13}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v0
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const-string p0, ""

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    aget-object p0, p0, v1

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    array-length v0, p0

    .line 16
    move v3, v1

    .line 17
    :goto_0
    if-ge v3, v0, :cond_3

    .line 18
    .line 19
    aget-object v4, p0, v3

    .line 20
    .line 21
    instance-of v4, v4, Landroid/text/Spanned;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    move v2, v1

    .line 30
    :goto_1
    if-eqz v2, :cond_6

    .line 31
    .line 32
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    array-length v2, p0

    .line 38
    :goto_2
    if-ge v1, v2, :cond_5

    .line 39
    .line 40
    aget-object v3, p0, v1

    .line 41
    .line 42
    if-nez v3, :cond_4

    .line 43
    .line 44
    const-string v3, "null"

    .line 45
    .line 46
    :cond_4
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_5
    new-instance p0, Landroid/text/SpannedString;

    .line 53
    .line 54
    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    array-length v2, p0

    .line 64
    :goto_3
    if-ge v1, v2, :cond_7

    .line 65
    .line 66
    aget-object v3, p0, v1

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-class p3, Ljava/lang/Object;

    .line 4
    .line 5
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    array-length v1, p3

    .line 11
    if-ge v0, v1, :cond_3

    .line 12
    .line 13
    aget-object v1, p3, v0

    .line 14
    .line 15
    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    aget-object v2, p3, v0

    .line 20
    .line 21
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    aget-object v3, p3, v0

    .line 26
    .line 27
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v1, p1, :cond_1

    .line 32
    .line 33
    move v1, p1

    .line 34
    :cond_1
    if-le v2, p2, :cond_2

    .line 35
    .line 36
    move v2, p2

    .line 37
    :cond_2
    aget-object v4, p3, v0

    .line 38
    .line 39
    sub-int/2addr v1, p1

    .line 40
    add-int/2addr v1, p5

    .line 41
    sub-int/2addr v2, p1

    .line 42
    add-int/2addr v2, p5

    .line 43
    invoke-interface {p4, v4, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    return-void
.end method

.method public static couldAffectRtl(C)Z
    .locals 1

    const/16 v0, 0x590

    if-gt v0, p0, :cond_0

    const/16 v0, 0x8ff

    if-le p0, v0, :cond_6

    :cond_0
    const/16 v0, 0x200e

    if-eq p0, v0, :cond_6

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_6

    const/16 v0, 0x202a

    if-gt v0, p0, :cond_1

    const/16 v0, 0x202e

    if-le p0, v0, :cond_6

    :cond_1
    const/16 v0, 0x2066

    if-gt v0, p0, :cond_2

    const/16 v0, 0x2069

    if-le p0, v0, :cond_6

    :cond_2
    const v0, 0xd800

    if-gt v0, p0, :cond_3

    const v0, 0xdfff

    if-le p0, v0, :cond_6

    :cond_3
    const v0, 0xfb1d

    if-gt v0, p0, :cond_4

    const v0, 0xfdff

    if-le p0, v0, :cond_6

    :cond_4
    const v0, 0xfe70

    if-gt v0, p0, :cond_5

    const v0, 0xfefe

    if-gt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, -0x1

    .line 20
    move v3, v2

    .line 21
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 22
    add-int/2addr v3, v4

    .line 23
    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eq v3, v2, :cond_4

    .line 28
    .line 29
    if-lez v3, :cond_2

    .line 30
    .line 31
    add-int/lit8 v5, v3, -0x1

    .line 32
    .line 33
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eq v5, p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    add-int/2addr v5, v3

    .line 45
    if-ne v5, v0, :cond_3

    .line 46
    .line 47
    return v4

    .line 48
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ne v5, p1, :cond_1

    .line 53
    .line 54
    return v4

    .line 55
    :cond_4
    :goto_1
    return v1
.end method

.method public static doesNotNeedBidi([CII)Z
    .locals 1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_1

    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroid/text/Spanned;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-class v2, Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    array-length v2, v1

    .line 20
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    aget-object v2, v1, v3

    .line 23
    .line 24
    invoke-static {p2}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ": "

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, " "

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, " ("

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v5, "-"

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, ") fl=#"

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p0, ": (no spans)"

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8

    .line 2
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_0

    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    :goto_0
    move-object v7, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v7

    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result p6

    cmpg-float p6, p6, p2

    const/4 v1, 0x0

    if-gtz p6, :cond_1

    if-eqz p5, :cond_0

    .line 6
    invoke-interface {p5, v1, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p0

    .line 8
    :cond_1
    :try_start_1
    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    move p1, v0

    :goto_0
    move p2, v1

    goto :goto_2

    .line 9
    :cond_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, p1, :cond_3

    .line 10
    invoke-virtual {v7, v0, v1, p2}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result p1

    sub-int p1, v0, p1

    goto :goto_0

    .line 11
    :cond_3
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 p6, 0x1

    if-eq p3, p1, :cond_5

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, p1, :cond_4

    goto :goto_1

    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, p2, p1

    .line 12
    invoke-virtual {v7, v0, v1, p1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result p1

    sub-int p1, v0, p1

    .line 13
    invoke-virtual {v7, p1, v0}, Landroid/text/MeasuredText;->measure(II)F

    move-result p3

    sub-float/2addr p2, p3

    .line 14
    invoke-virtual {v7, p1, p6, p2}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result p2

    goto :goto_2

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {v7, v0, p6, p2}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result p2

    move p1, v0

    :goto_2
    if-eqz p5, :cond_6

    .line 16
    invoke-interface {p5, p2, p1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 17
    :cond_6
    iget-object p3, v7, Landroid/text/MeasuredText;->mChars:[C

    .line 18
    instance-of p5, p0, Landroid/text/Spanned;

    if-eqz p5, :cond_7

    move-object p5, p0

    check-cast p5, Landroid/text/Spanned;

    goto :goto_3

    :cond_7
    const/4 p5, 0x0

    :goto_3
    sub-int p6, p1, p2

    sub-int p6, v0, p6

    if-eqz p4, :cond_b

    if-lez p6, :cond_8

    add-int/lit8 p0, p2, 0x1

    .line 19
    invoke-virtual {p7, v1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    aput-char p4, p3, p2

    move p2, p0

    :cond_8
    :goto_4
    if-ge p2, p1, :cond_9

    const p0, 0xfeff

    .line 20
    aput-char p0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 21
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3, v1, v0}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p5, :cond_a

    .line 22
    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p0

    .line 23
    :cond_a
    :try_start_2
    new-instance p6, Landroid/text/SpannableString;

    invoke-direct {p6, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 24
    const-class p3, Ljava/lang/Object;

    const/4 p7, 0x0

    move-object p0, p5

    move p2, v0

    move-object p4, p6

    move p5, p7

    invoke-static/range {p0 .. p5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p6

    :cond_b
    if-nez p6, :cond_c

    :try_start_3
    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p0

    :cond_c
    if-nez p5, :cond_d

    .line 26
    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p6, p4

    invoke-direct {p0, p6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    invoke-virtual {p0, p3, v1, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p1

    .line 29
    invoke-virtual {p0, p3, p1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p0

    .line 32
    :cond_d
    :try_start_5
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 33
    invoke-virtual {p3, p0, v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 34
    invoke-virtual {p3, p7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 35
    invoke-virtual {p3, p0, p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 36
    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p3

    :catchall_0
    move-exception p0

    invoke-static {v7}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw p0
.end method

.method public static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_4

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v2, v3, :cond_4

    .line 19
    .line 20
    instance-of v3, p0, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    instance-of v3, p1, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    move v3, v1

    .line 34
    :goto_0
    if-ge v3, v2, :cond_3

    .line 35
    .line 36
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return v0

    .line 51
    :cond_4
    return v1
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    if-gt v0, v1, :cond_5

    .line 5
    .line 6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge p0, v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x5e

    .line 23
    .line 24
    if-ne v1, v2, :cond_3

    .line 25
    .line 26
    add-int/lit8 v1, p0, 0x1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, v2, :cond_0

    .line 33
    .line 34
    add-int/lit8 p0, p0, 0x2

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    .line 39
    move p0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    .line 48
    .line 49
    .line 50
    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    const-string/jumbo v2, "template requests value ^"

    .line 54
    .line 55
    .line 56
    if-ltz v1, :cond_2

    .line 57
    .line 58
    :try_start_1
    array-length v3, p1

    .line 59
    if-ge v1, v3, :cond_1

    .line 60
    .line 61
    add-int/lit8 v2, p0, 0x2

    .line 62
    .line 63
    aget-object v3, p1, v1

    .line 64
    .line 65
    invoke-virtual {v0, p0, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    .line 67
    .line 68
    aget-object v1, p1, v1

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr p0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, "; only "

    .line 92
    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    array-length p1, p1

    .line 97
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, " provided"

    .line 101
    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_0
    :cond_4
    return-object v0

    .line 140
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    const-string p1, "max of 9 values are supported"

    .line 143
    .line 144
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0
.end method

.method public static firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x1150017

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    and-int/lit16 v1, p2, 0x1000

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x1000

    .line 10
    .line 11
    :cond_1
    and-int/lit16 v1, p2, 0x6000

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    return v0

    .line 16
    :cond_2
    :goto_0
    const/16 v1, 0x27

    .line 17
    .line 18
    const/16 v2, 0x22

    .line 19
    .line 20
    if-lez p1, :cond_4

    .line 21
    .line 22
    add-int/lit8 v3, p1, -0x1

    .line 23
    .line 24
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v3, v2, :cond_3

    .line 29
    .line 30
    if-eq v3, v1, :cond_3

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v4, 0x15

    .line 37
    .line 38
    if-eq v3, v4, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    :goto_1
    move v3, p1

    .line 45
    :goto_2
    if-lez v3, :cond_6

    .line 46
    .line 47
    add-int/lit8 v4, v3, -0x1

    .line 48
    .line 49
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/16 v5, 0x20

    .line 54
    .line 55
    if-eq v4, v5, :cond_5

    .line 56
    .line 57
    const/16 v5, 0x9

    .line 58
    .line 59
    if-ne v4, v5, :cond_6

    .line 60
    .line 61
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_6
    if-eqz v3, :cond_12

    .line 65
    .line 66
    add-int/lit8 v4, v3, -0x1

    .line 67
    .line 68
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/16 v5, 0xa

    .line 73
    .line 74
    if-ne v4, v5, :cond_7

    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_7
    and-int/lit16 p2, p2, 0x4000

    .line 78
    .line 79
    if-nez p2, :cond_9

    .line 80
    .line 81
    if-eq p1, v3, :cond_8

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0x2000

    .line 84
    .line 85
    :cond_8
    return v0

    .line 86
    :cond_9
    if-ne p1, v3, :cond_a

    .line 87
    .line 88
    return v0

    .line 89
    :cond_a
    :goto_3
    if-lez v3, :cond_c

    .line 90
    .line 91
    add-int/lit8 p1, v3, -0x1

    .line 92
    .line 93
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eq p1, v2, :cond_b

    .line 98
    .line 99
    if-eq p1, v1, :cond_b

    .line 100
    .line 101
    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/16 p2, 0x16

    .line 106
    .line 107
    if-eq p1, p2, :cond_b

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_b
    add-int/lit8 v3, v3, -0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_c
    :goto_4
    if-lez v3, :cond_11

    .line 114
    .line 115
    add-int/lit8 p1, v3, -0x1

    .line 116
    .line 117
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/16 p2, 0x2e

    .line 122
    .line 123
    if-eq p1, p2, :cond_d

    .line 124
    .line 125
    const/16 v1, 0x3f

    .line 126
    .line 127
    if-eq p1, v1, :cond_d

    .line 128
    .line 129
    const/16 v1, 0x21

    .line 130
    .line 131
    if-ne p1, v1, :cond_11

    .line 132
    .line 133
    :cond_d
    if-ne p1, p2, :cond_10

    .line 134
    .line 135
    add-int/lit8 v3, v3, -0x2

    .line 136
    .line 137
    :goto_5
    if-ltz v3, :cond_10

    .line 138
    .line 139
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-ne p1, p2, :cond_e

    .line 144
    .line 145
    return v0

    .line 146
    :cond_e
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_f

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_f
    add-int/lit8 v3, v3, -0x1

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_10
    :goto_6
    or-int/lit16 p0, v0, 0x4000

    .line 157
    .line 158
    return p0

    .line 159
    :cond_11
    return v0

    .line 160
    :cond_12
    :goto_7
    or-int/lit16 p0, v0, 0x2000

    .line 161
    .line 162
    return p0
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/String;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-class v1, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    check-cast p0, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-class v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    check-cast p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    instance-of v0, p0, Landroid/text/GetChars;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    check-cast p0, Landroid/text/GetChars;

    .line 40
    .line 41
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_0
    if-ge p1, p2, :cond_4

    .line 46
    .line 47
    add-int/lit8 v0, p4, 0x1

    .line 48
    .line 49
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    aput-char v1, p3, p4

    .line 54
    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    move p4, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_1
    return-void
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroid/net/lowpan/b;->d(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/net/lowpan/b;->z(Landroid/icu/util/ULocale;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    :cond_0
    const-string p0, "debug.force_rtl"

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    :cond_2
    return v0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 9
    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const v1, 0xd800

    .line 18
    .line 19
    .line 20
    if-lt v0, v1, :cond_2

    .line 21
    .line 22
    const v1, 0xdbff

    .line 23
    .line 24
    .line 25
    if-gt v0, v1, :cond_2

    .line 26
    .line 27
    add-int/lit8 v0, p1, 0x1

    .line 28
    .line 29
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const v2, 0xdc00

    .line 34
    .line 35
    .line 36
    if-lt v1, v2, :cond_3

    .line 37
    .line 38
    const v2, 0xdfff

    .line 39
    .line 40
    .line 41
    if-gt v1, v2, :cond_3

    .line 42
    .line 43
    add-int/lit8 v0, p1, 0x2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v0, p1, 0x1

    .line 47
    .line 48
    :cond_3
    :goto_0
    instance-of p1, p0, Landroid/text/Spanned;

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    check-cast p0, Landroid/text/Spanned;

    .line 53
    .line 54
    const-class p1, Landroid/text/style/ReplacementSpan;

    .line 55
    .line 56
    invoke-interface {p0, v0, v0, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, [Landroid/text/style/ReplacementSpan;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    :goto_1
    array-length v2, p1

    .line 64
    if-ge v1, v2, :cond_5

    .line 65
    .line 66
    aget-object v2, p1, v1

    .line 67
    .line 68
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    aget-object v3, p1, v1

    .line 73
    .line 74
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-ge v2, v0, :cond_4

    .line 79
    .line 80
    if-le v3, v0, :cond_4

    .line 81
    .line 82
    move v0, v3

    .line 83
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    return v0
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 10
    .line 11
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const v2, 0xdc00

    .line 16
    .line 17
    .line 18
    if-lt v1, v2, :cond_2

    .line 19
    .line 20
    const v2, 0xdfff

    .line 21
    .line 22
    .line 23
    if-gt v1, v2, :cond_2

    .line 24
    .line 25
    add-int/lit8 v1, p1, -0x2

    .line 26
    .line 27
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const v2, 0xd800

    .line 32
    .line 33
    .line 34
    if-lt v1, v2, :cond_2

    .line 35
    .line 36
    const v2, 0xdbff

    .line 37
    .line 38
    .line 39
    if-gt v1, v2, :cond_2

    .line 40
    .line 41
    add-int/lit8 p1, p1, -0x2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 45
    .line 46
    :goto_0
    instance-of v1, p0, Landroid/text/Spanned;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    check-cast p0, Landroid/text/Spanned;

    .line 51
    .line 52
    const-class v1, Landroid/text/style/ReplacementSpan;

    .line 53
    .line 54
    invoke-interface {p0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, [Landroid/text/style/ReplacementSpan;

    .line 59
    .line 60
    :goto_1
    array-length v2, v1

    .line 61
    if-ge v0, v2, :cond_4

    .line 62
    .line 63
    aget-object v2, v1, v0

    .line 64
    .line 65
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    aget-object v3, v1, v0

    .line 70
    .line 71
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ge v2, p1, :cond_3

    .line 76
    .line 77
    if-le v3, p1, :cond_3

    .line 78
    .line 79
    move p1, v2

    .line 80
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    return p1
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/16 v2, 0x20

    .line 7
    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-gt v3, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :goto_1
    if-le v0, v1, :cond_1

    .line 20
    .line 21
    add-int/lit8 v3, v0, -0x1

    .line 22
    .line 23
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-gt v3, v2, :cond_1

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sub-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public static hasStyleSpan(Landroid/text/Spanned;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v4, Landroid/text/style/CharacterStyle;

    .line 15
    .line 16
    aput-object v4, v3, v1

    .line 17
    .line 18
    const-class v4, Landroid/text/style/ParagraphStyle;

    .line 19
    .line 20
    aput-object v4, v3, v0

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const-class v5, Landroid/text/style/UpdateAppearance;

    .line 24
    .line 25
    aput-object v5, v3, v4

    .line 26
    .line 27
    move v4, v1

    .line 28
    :goto_1
    if-ge v4, v2, :cond_2

    .line 29
    .line 30
    aget-object v5, v3, v4

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, -0x1

    .line 37
    invoke-interface {p0, v7, v6, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-ge v5, v6, :cond_1

    .line 46
    .line 47
    return v0

    .line 48
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    return v1
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_5

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x22

    .line 18
    .line 19
    if-eq v2, v3, :cond_4

    .line 20
    .line 21
    const/16 v3, 0x3c

    .line 22
    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    const/16 v3, 0x3e

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x26

    .line 30
    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    const/16 v3, 0x27

    .line 34
    .line 35
    if-eq v2, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-string v2, "&#39;"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v2, "&amp;"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const-string v2, "&gt;"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const-string v2, "&lt;"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const-string v2, "&quot;"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p0

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 4
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 6

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 7
    instance-of v1, p0, Landroid/text/GetChars;

    const/4 v2, -0x1

    if-nez v1, :cond_3

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/StringBuilder;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 8
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    const/16 v0, 0x1f4

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    :goto_2
    if-ge p2, p3, :cond_7

    add-int/lit16 v1, p2, 0x1f4

    if-le v1, p3, :cond_4

    move v1, p3

    :cond_4
    const/4 v3, 0x0

    .line 10
    invoke-static {p0, p2, v1, v0, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v4, v1, p2

    :goto_3
    if-ge v3, v4, :cond_6

    .line 11
    aget-char v5, v0, v3

    if-ne v5, p1, :cond_5

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    add-int/2addr v3, p2

    return v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move p2, v1

    goto :goto_2

    .line 13
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    return v2
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2

    .line 14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 15
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5

    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    const/4 v1, 0x0

    .line 17
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 18
    :goto_0
    invoke-static {p0, v2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    sub-int v3, p3, v0

    const/4 v4, -0x1

    if-le p2, v3, :cond_1

    return v4

    :cond_1
    if-gez p2, :cond_2

    return v4

    .line 19
    :cond_2
    invoke-static {p0, p2, p1, v1, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    add-int/2addr v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

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

.method public static isGraphic(C)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 3
    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    const/16 v5, 0x13

    if-eq v4, v5, :cond_0

    if-eqz v4, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0xe

    if-eq v4, v5, :cond_0

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isPrintableAscii(C)Z
    .locals 1

    const/16 v0, 0x20

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 4
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 4

    const/4 v0, -0x1

    if-gez p3, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 9
    instance-of v2, p0, Landroid/text/GetChars;

    if-nez v2, :cond_5

    const-class v2, Ljava/lang/StringBuffer;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/lang/StringBuilder;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_4

    .line 10
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_3

    return p3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/16 v1, 0x1f4

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    :goto_2
    if-ge p2, p3, :cond_9

    add-int/lit16 v2, p3, -0x1f4

    if-ge v2, p2, :cond_6

    move v2, p2

    :cond_6
    const/4 v3, 0x0

    .line 12
    invoke-static {p0, v2, p3, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int/2addr p3, v2

    add-int/lit8 p3, p3, -0x1

    :goto_3
    if-ltz p3, :cond_8

    .line 13
    aget-char v3, v1, p3

    if-ne v3, p1, :cond_7

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    add-int/2addr p3, v2

    return p3

    :cond_7
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_8
    move p3, v2

    goto :goto_2

    .line 15
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    return v0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static listEllipsize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/text/TextPaint;FI)Ljava/lang/CharSequence;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    const/4 v2, 0x0

    .line 14
    if-nez p0, :cond_2

    .line 15
    .line 16
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v3, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    new-array v5, v1, [I

    .line 48
    .line 49
    move v6, v2

    .line 50
    :goto_1
    if-ge v6, v1, :cond_4

    .line 51
    .line 52
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-virtual {p0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v7, v1, -0x1

    .line 66
    .line 67
    if-eq v6, v7, :cond_3

    .line 68
    .line 69
    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    aput v7, v5, v6

    .line 77
    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    add-int/lit8 p1, v1, -0x1

    .line 82
    .line 83
    :goto_2
    if-ltz p1, :cond_8

    .line 84
    .line 85
    aget p2, v5, p1

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v4, p2, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 92
    .line 93
    .line 94
    sub-int p2, v1, p1

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    sub-int/2addr p2, v6

    .line 98
    if-lez p2, :cond_6

    .line 99
    .line 100
    if-nez v3, :cond_5

    .line 101
    .line 102
    sget-object p2, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    new-array v6, v6, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    aput-object v7, v6, v2

    .line 112
    .line 113
    invoke-virtual {v3, p5, p2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    :goto_3
    invoke-virtual {p0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    .line 123
    .line 124
    :cond_6
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p3, v4, v2, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    cmpg-float p2, p2, p4

    .line 133
    .line 134
    if-gtz p2, :cond_7

    .line 135
    .line 136
    return-object v4

    .line 137
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    return-object v0
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static obtain(I)[C
    .locals 3

    .line 1
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    array-length v0, v1

    .line 13
    if-ge v0, p0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_1
    return-object v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method

.method public static packRangeInLong(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-interface {p1, p2, v0, v1, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static recycle([C)V
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x3e8

    .line 3
    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 3

    .line 1
    mul-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    if-lt v0, p4, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    add-int v1, p1, p4

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, p1, v1, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 13
    .line 14
    .line 15
    add-int p0, p3, p4

    .line 16
    .line 17
    invoke-static {p2, p3, p0, v0, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 18
    .line 19
    .line 20
    move p0, v2

    .line 21
    :goto_0
    if-ge p0, p4, :cond_1

    .line 22
    .line 23
    aget-char p1, v0, p0

    .line 24
    .line 25
    add-int p2, p0, p4

    .line 26
    .line 27
    aget-char p2, v0, p2

    .line 28
    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    array-length v4, p0

    .line 6
    if-ge v2, v4, :cond_2

    .line 7
    .line 8
    aget-object v4, p0, v2

    .line 9
    .line 10
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-ne v5, v6, :cond_0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    array-length v0, p0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    move v3, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    aput-object v4, v0, v3

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-object p0
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    move v1, p0

    .line 8
    :goto_0
    array-length v2, p1

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ltz v2, :cond_0

    .line 18
    .line 19
    aget-object v3, p1, v1

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    add-int/2addr v4, v2

    .line 26
    const/16 v5, 0x21

    .line 27
    .line 28
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    array-length v1, p1

    .line 35
    if-ge p0, v1, :cond_3

    .line 36
    .line 37
    aget-object v1, p1, p0

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget-object v2, p1, p0

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ltz v1, :cond_2

    .line 50
    .line 51
    aget-object v3, p2, p0

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    return-object v0
.end method

.method public static safeIntern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p2

    .line 4
    move v2, p3

    .line 5
    move v3, p4

    .line 6
    move-object v4, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 8
    .line 9
    .line 10
    instance-of p5, p2, Landroid/text/Spanned;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p5, :cond_0

    .line 14
    .line 15
    check-cast p2, Landroid/text/Spanned;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p2, v0

    .line 19
    :goto_0
    sub-int/2addr p4, p3

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1, p4, v0}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    const/4 p3, 0x0

    .line 28
    const/4 p5, 0x0

    .line 29
    :goto_1
    if-ge p5, p4, :cond_2

    .line 30
    .line 31
    const-class v1, Landroid/text/style/MetricAffectingSpan;

    .line 32
    .line 33
    invoke-interface {p2, p5, p4, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {p2, p5, v2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 42
    .line 43
    invoke-static {v3, p2, v1}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 48
    .line 49
    sub-int p5, v2, p5

    .line 50
    .line 51
    invoke-virtual {p0, p1, v1, p5, v0}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    add-float/2addr p3, p5

    .line 56
    move p5, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move p0, p3

    .line 59
    :goto_2
    return p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object p0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 6
    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Landroid/text/SpannedString;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    new-instance v0, Landroid/text/SpannedString;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p0, Ljava/lang/StringBuffer;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_2
    sub-int v0, p2, p1

    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {p0, p1, p2, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 50
    .line 51
    .line 52
    return-object p0
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    invoke-static {}, Landroid/net/a;->p()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/net/a;->k()Landroid/icu/text/Edits;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    invoke-static {}, Landroid/net/a;->i()Landroid/icu/text/CaseMap$Upper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p0, p1, v1, v0}, Landroid/net/a;->o(Landroid/icu/text/CaseMap$Upper;Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/net/a;->v(Landroid/icu/text/Edits;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    move-object p1, p0

    .line 32
    :cond_0
    return-object p1

    .line 33
    :cond_1
    invoke-static {}, Landroid/net/a;->i()Landroid/icu/text/CaseMap$Upper;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p0, p1, v1, v0}, Landroid/net/a;->n(Landroid/icu/text/CaseMap$Upper;Ljava/util/Locale;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 47
    .line 48
    invoke-static {v0}, Landroid/net/a;->v(Landroid/icu/text/Edits;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_2
    invoke-static {v0}, Landroid/net/a;->j(Landroid/icu/text/Edits;)Landroid/icu/text/Edits$Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    check-cast p1, Landroid/text/Spanned;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    const-class v2, Ljava/lang/Object;

    .line 67
    .line 68
    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    array-length v3, v2

    .line 73
    :goto_0
    if-ge v1, v3, :cond_5

    .line 74
    .line 75
    aget-object v4, v2, v1

    .line 76
    .line 77
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-ne v5, v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-static {p2, v5}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    :goto_1
    if-ne v6, v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-static {p2, v6}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    :goto_2
    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    return-object p0
.end method

.method private static toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroid/net/a;->r(Landroid/icu/text/Edits$Iterator;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/net/a;->b(Landroid/icu/text/Edits$Iterator;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Landroid/net/a;->x(Landroid/icu/text/Edits$Iterator;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-static {p0}, Landroid/net/a;->u(Landroid/icu/text/Edits$Iterator;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Landroid/net/a;->x(Landroid/icu/text/Edits$Iterator;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p0}, Landroid/net/a;->D(Landroid/icu/text/Edits$Iterator;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    add-int/2addr p0, p1

    .line 30
    return p0

    .line 31
    :cond_1
    invoke-static {p0}, Landroid/net/a;->x(Landroid/icu/text/Edits$Iterator;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {p0}, Landroid/net/a;->b(Landroid/icu/text/Edits$Iterator;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    sub-int/2addr p1, p0

    .line 40
    add-int/2addr p1, v0

    .line 41
    return p1
.end method

.method public static trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    instance-of v0, p0, Landroid/text/Spanned;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    return-object p0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 8

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v2, p0

    .line 18
    check-cast v2, Landroid/text/Spanned;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const-class v3, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {v2, v0, p0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    move v3, v0

    .line 31
    :goto_0
    array-length v4, p0

    .line 32
    if-ge v3, v4, :cond_4

    .line 33
    .line 34
    aget-object v4, p0, v3

    .line 35
    .line 36
    instance-of v5, v4, Landroid/text/style/CharacterStyle;

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    move-object v5, v4

    .line 41
    check-cast v5, Landroid/text/style/CharacterStyle;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move-object v5, v4

    .line 49
    :goto_1
    instance-of v6, v5, Landroid/text/ParcelableSpan;

    .line 50
    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    check-cast v5, Landroid/text/ParcelableSpan;

    .line 54
    .line 55
    invoke-interface {v5}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-lt v6, v1, :cond_2

    .line 60
    .line 61
    const/16 v7, 0x1a

    .line 62
    .line 63
    if-le v6, v7, :cond_1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v5, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v2, v4}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v6, "External class \""

    .line 79
    .line 80
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v5, "\" is attempting to use the frameworks-only ParcelableSpan interface"

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const-string v5, "TextUtils"

    .line 104
    .line 105
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    .line 117
    .line 118
    if-eqz p0, :cond_6

    .line 119
    .line 120
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    const/4 p0, 0x0

    .line 129
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_4
    return-void
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
