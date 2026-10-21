.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# static fields
.field public static final FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    if-ge v2, v0, :cond_6

    .line 8
    .line 9
    const-class v3, Landroid/text/style/ParagraphStyle;

    .line 10
    .line 11
    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-interface {p1, v2, v4, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 20
    .line 21
    const-string v5, " "

    .line 22
    .line 23
    move v6, v1

    .line 24
    move v7, v6

    .line 25
    :goto_1
    array-length v8, v3

    .line 26
    if-ge v6, v8, :cond_3

    .line 27
    .line 28
    aget-object v8, v3, v6

    .line 29
    .line 30
    instance-of v9, v8, Landroid/text/style/AlignmentSpan;

    .line 31
    .line 32
    if-eqz v9, :cond_2

    .line 33
    .line 34
    check-cast v8, Landroid/text/style/AlignmentSpan;

    .line 35
    .line 36
    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    if-ne v7, v8, :cond_0

    .line 44
    .line 45
    const-string v7, "align=\"center\" "

    .line 46
    .line 47
    invoke-static {v7, v5}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 53
    .line 54
    if-ne v7, v8, :cond_1

    .line 55
    .line 56
    const-string v7, "align=\"right\" "

    .line 57
    .line 58
    invoke-static {v7, v5}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const-string v7, "align=\"left\" "

    .line 64
    .line 65
    invoke-static {v7, v5}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    :goto_2
    move v7, v9

    .line 70
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    if-eqz v7, :cond_4

    .line 74
    .line 75
    const-string v3, "<div "

    .line 76
    .line 77
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ">"

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-static {p0, p1, v2, v4, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 89
    .line 90
    .line 91
    if-eqz v7, :cond_5

    .line 92
    .line 93
    const-string v2, "</div>"

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :cond_5
    move v2, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_6
    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 7

    .line 4
    new-instance v4, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v4}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    :try_start_0
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    .line 5
    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance v6, Landroid/text/HtmlToSpannedConverter;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    .line 7
    invoke-virtual {v6}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private static getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sub-int/2addr p2, p1

    invoke-interface {v0, p0, p1, p2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " dir=\"rtl\""

    return-object p0

    :cond_0
    const-string p0, " dir=\"ltr\""

    return-object p0
.end method

.method private static getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    const-string p3, "margin-top:0; margin-bottom:0;"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object p3, v0

    .line 8
    :goto_0
    if-eqz p4, :cond_4

    .line 9
    .line 10
    const-class p4, Landroid/text/style/AlignmentSpan;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [Landroid/text/style/AlignmentSpan;

    .line 17
    .line 18
    array-length p2, p1

    .line 19
    add-int/lit8 p2, p2, -0x1

    .line 20
    .line 21
    :goto_1
    if-ltz p2, :cond_4

    .line 22
    .line 23
    aget-object p4, p1, p2

    .line 24
    .line 25
    invoke-interface {p0, p4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0x33

    .line 30
    .line 31
    and-int/2addr v1, v2

    .line 32
    if-ne v1, v2, :cond_3

    .line 33
    .line 34
    invoke-interface {p4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 39
    .line 40
    if-ne p0, p1, :cond_1

    .line 41
    .line 42
    const-string/jumbo v0, "text-align:start;"

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 47
    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    .line 50
    const-string/jumbo v0, "text-align:center;"

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 55
    .line 56
    if-ne p0, p1, :cond_4

    .line 57
    .line 58
    const-string/jumbo v0, "text-align:end;"

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    :goto_2
    if-nez p3, :cond_5

    .line 66
    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    const-string p0, ""

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p1, " style=\""

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    if-eqz p3, :cond_6

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, " "

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    if-eqz p3, :cond_7

    .line 96
    .line 97
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    if-eqz v0, :cond_8

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_8
    :goto_3
    const-string p1, "\""

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private static withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8

    .line 1
    const-string v0, "<p"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ">"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move v2, p2

    .line 19
    :goto_0
    const-string v3, "</p>\n"

    .line 20
    .line 21
    if-ge v2, p3, :cond_5

    .line 22
    .line 23
    const/16 v4, 0xa

    .line 24
    .line 25
    invoke-static {p1, v4, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-gez v5, :cond_0

    .line 30
    .line 31
    move v5, p3

    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 33
    :goto_1
    if-ge v5, p3, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-ne v7, v4, :cond_1

    .line 40
    .line 41
    add-int/lit8 v6, v6, 0x1

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sub-int v4, v5, v6

    .line 47
    .line 48
    invoke-static {p0, p1, v2, v4}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    if-ne v6, v2, :cond_2

    .line 53
    .line 54
    const-string v2, "<br>\n"

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    const/4 v2, 0x2

    .line 61
    :goto_2
    if-ge v2, v6, :cond_3

    .line 62
    .line 63
    const-string v4, "<br>"

    .line 64
    .line 65
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    if-eq v5, p3, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_3
    move v2, v5

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private static withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-gt p2, p3, :cond_9

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-static {p1, v2, p2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    move v2, p3

    .line 14
    :cond_0
    const-string v3, "</ul>\n"

    .line 15
    .line 16
    if-ne v2, p2, :cond_2

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move v1, v0

    .line 24
    :cond_1
    const-string p2, "<br>\n"

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_2
    const-class v4, Landroid/text/style/ParagraphStyle;

    .line 32
    .line 33
    invoke-interface {p1, p2, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, [Landroid/text/style/ParagraphStyle;

    .line 38
    .line 39
    array-length v5, v4

    .line 40
    move v6, v0

    .line 41
    :goto_1
    const/4 v7, 0x1

    .line 42
    if-ge v6, v5, :cond_4

    .line 43
    .line 44
    aget-object v8, v4, v6

    .line 45
    .line 46
    invoke-interface {p1, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    const/16 v10, 0x33

    .line 51
    .line 52
    and-int/2addr v9, v10

    .line 53
    if-ne v9, v10, :cond_3

    .line 54
    .line 55
    instance-of v8, v8, Landroid/text/style/BulletSpan;

    .line 56
    .line 57
    if-eqz v8, :cond_3

    .line 58
    .line 59
    move v4, v7

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v4, v0

    .line 65
    :goto_2
    const-string v5, ">\n"

    .line 66
    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    const-string v1, "<ul"

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2, v2, v7, v0}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move v1, v7

    .line 87
    :cond_5
    if-eqz v1, :cond_6

    .line 88
    .line 89
    if-nez v4, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move v1, v0

    .line 95
    :cond_6
    if-eqz v4, :cond_7

    .line 96
    .line 97
    const-string v6, "li"

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_7
    const-string v6, "p"

    .line 101
    .line 102
    :goto_3
    const-string v8, "<"

    .line 103
    .line 104
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2, v2}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    xor-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    invoke-static {p1, p2, v2, v4, v7}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v4, ">"

    .line 127
    .line 128
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {p0, p1, p2, v2}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 132
    .line 133
    .line 134
    const-string p2, "</"

    .line 135
    .line 136
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    if-ne v2, p3, :cond_8

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move v1, v0

    .line 153
    :cond_8
    :goto_4
    add-int/lit8 p2, v2, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_9
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 6

    .line 1
    :goto_0
    if-ge p2, p3, :cond_2

    .line 2
    .line 3
    const-class v0, Landroid/text/style/QuoteSpan;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Landroid/text/style/QuoteSpan;

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_1
    if-ge v4, v2, :cond_0

    .line 19
    .line 20
    aget-object v5, v0, v4

    .line 21
    .line 22
    const-string v5, "<blockquote>"

    .line 23
    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p0, p1, p2, v1, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 31
    .line 32
    .line 33
    array-length p2, v0

    .line 34
    :goto_2
    if-ge v3, p2, :cond_1

    .line 35
    .line 36
    aget-object v2, v0, v3

    .line 37
    .line 38
    const-string v2, "</blockquote>\n"

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move p2, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, p1, v1, v0, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8

    .line 1
    :goto_0
    if-ge p2, p3, :cond_1c

    .line 2
    .line 3
    const-class v0, Landroid/text/style/CharacterStyle;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_1
    array-length v4, v0

    .line 18
    const-string v5, "monospace"

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    if-ge v3, v4, :cond_e

    .line 22
    .line 23
    aget-object v4, v0, v3

    .line 24
    .line 25
    instance-of v7, v4, Landroid/text/style/StyleSpan;

    .line 26
    .line 27
    if-eqz v7, :cond_1

    .line 28
    .line 29
    check-cast v4, Landroid/text/style/StyleSpan;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    and-int/lit8 v7, v4, 0x1

    .line 36
    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    const-string v7, "<b>"

    .line 40
    .line 41
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_0
    and-int/lit8 v4, v4, 0x2

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    const-string v4, "<i>"

    .line 49
    .line 50
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_1
    aget-object v4, v0, v3

    .line 54
    .line 55
    instance-of v7, v4, Landroid/text/style/TypefaceSpan;

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    check-cast v4, Landroid/text/style/TypefaceSpan;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    const-string v4, "<tt>"

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_2
    aget-object v4, v0, v3

    .line 77
    .line 78
    instance-of v4, v4, Landroid/text/style/SuperscriptSpan;

    .line 79
    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    const-string v4, "<sup>"

    .line 83
    .line 84
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    :cond_3
    aget-object v4, v0, v3

    .line 88
    .line 89
    instance-of v4, v4, Landroid/text/style/SubscriptSpan;

    .line 90
    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    const-string v4, "<sub>"

    .line 94
    .line 95
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :cond_4
    aget-object v4, v0, v3

    .line 99
    .line 100
    instance-of v4, v4, Landroid/text/style/UnderlineSpan;

    .line 101
    .line 102
    if-eqz v4, :cond_5

    .line 103
    .line 104
    const-string v4, "<u>"

    .line 105
    .line 106
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_5
    aget-object v4, v0, v3

    .line 110
    .line 111
    instance-of v4, v4, Landroid/text/style/StrikethroughSpan;

    .line 112
    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    const-string v4, "<span style=\"text-decoration:line-through;\">"

    .line 116
    .line 117
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :cond_6
    aget-object v4, v0, v3

    .line 121
    .line 122
    instance-of v4, v4, Landroid/text/style/URLSpan;

    .line 123
    .line 124
    const-string v5, "\">"

    .line 125
    .line 126
    if-eqz v4, :cond_7

    .line 127
    .line 128
    const-string v4, "<a href=\""

    .line 129
    .line 130
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    aget-object v4, v0, v3

    .line 134
    .line 135
    check-cast v4, Landroid/text/style/URLSpan;

    .line 136
    .line 137
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_7
    aget-object v4, v0, v3

    .line 148
    .line 149
    instance-of v4, v4, Landroid/text/style/ImageSpan;

    .line 150
    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    const-string p2, "<img src=\""

    .line 154
    .line 155
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    aget-object p2, v0, v3

    .line 159
    .line 160
    check-cast p2, Landroid/text/style/ImageSpan;

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    move p2, v1

    .line 173
    :cond_8
    aget-object v4, v0, v3

    .line 174
    .line 175
    instance-of v5, v4, Landroid/text/style/AbsoluteSizeSpan;

    .line 176
    .line 177
    if-eqz v5, :cond_a

    .line 178
    .line 179
    check-cast v4, Landroid/text/style/AbsoluteSizeSpan;

    .line 180
    .line 181
    invoke-virtual {v4}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    int-to-float v5, v5

    .line 186
    invoke-virtual {v4}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_9

    .line 191
    .line 192
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 205
    .line 206
    div-float/2addr v5, v4

    .line 207
    :cond_9
    new-array v4, v6, [Ljava/lang/Object;

    .line 208
    .line 209
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    aput-object v5, v4, v2

    .line 214
    .line 215
    const-string v5, "<span style=\"font-size:%.0fpx\";>"

    .line 216
    .line 217
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    :cond_a
    aget-object v4, v0, v3

    .line 225
    .line 226
    instance-of v5, v4, Landroid/text/style/RelativeSizeSpan;

    .line 227
    .line 228
    if-eqz v5, :cond_b

    .line 229
    .line 230
    check-cast v4, Landroid/text/style/RelativeSizeSpan;

    .line 231
    .line 232
    invoke-virtual {v4}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    new-array v5, v6, [Ljava/lang/Object;

    .line 237
    .line 238
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    aput-object v4, v5, v2

    .line 243
    .line 244
    const-string v4, "<span style=\"font-size:%.2fem;\">"

    .line 245
    .line 246
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    :cond_b
    aget-object v4, v0, v3

    .line 254
    .line 255
    instance-of v5, v4, Landroid/text/style/ForegroundColorSpan;

    .line 256
    .line 257
    const v7, 0xffffff

    .line 258
    .line 259
    .line 260
    if-eqz v5, :cond_c

    .line 261
    .line 262
    check-cast v4, Landroid/text/style/ForegroundColorSpan;

    .line 263
    .line 264
    invoke-virtual {v4}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    new-array v5, v6, [Ljava/lang/Object;

    .line 269
    .line 270
    and-int/2addr v4, v7

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    aput-object v4, v5, v2

    .line 276
    .line 277
    const-string v4, "<span style=\"color:#%06X;\">"

    .line 278
    .line 279
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    :cond_c
    aget-object v4, v0, v3

    .line 287
    .line 288
    instance-of v5, v4, Landroid/text/style/BackgroundColorSpan;

    .line 289
    .line 290
    if-eqz v5, :cond_d

    .line 291
    .line 292
    check-cast v4, Landroid/text/style/BackgroundColorSpan;

    .line 293
    .line 294
    invoke-virtual {v4}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    new-array v5, v6, [Ljava/lang/Object;

    .line 299
    .line 300
    and-int/2addr v4, v7

    .line 301
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    aput-object v4, v5, v2

    .line 306
    .line 307
    const-string v4, "<span style=\"background-color:#%06X;\">"

    .line 308
    .line 309
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 317
    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :cond_e
    invoke-static {p0, p1, p2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 321
    .line 322
    .line 323
    array-length p2, v0

    .line 324
    sub-int/2addr p2, v6

    .line 325
    :goto_2
    if-ltz p2, :cond_1b

    .line 326
    .line 327
    aget-object v2, v0, p2

    .line 328
    .line 329
    instance-of v2, v2, Landroid/text/style/BackgroundColorSpan;

    .line 330
    .line 331
    const-string v3, "</span>"

    .line 332
    .line 333
    if-eqz v2, :cond_f

    .line 334
    .line 335
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    :cond_f
    aget-object v2, v0, p2

    .line 339
    .line 340
    instance-of v2, v2, Landroid/text/style/ForegroundColorSpan;

    .line 341
    .line 342
    if-eqz v2, :cond_10

    .line 343
    .line 344
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    :cond_10
    aget-object v2, v0, p2

    .line 348
    .line 349
    instance-of v2, v2, Landroid/text/style/RelativeSizeSpan;

    .line 350
    .line 351
    if-eqz v2, :cond_11

    .line 352
    .line 353
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    :cond_11
    aget-object v2, v0, p2

    .line 357
    .line 358
    instance-of v2, v2, Landroid/text/style/AbsoluteSizeSpan;

    .line 359
    .line 360
    if-eqz v2, :cond_12

    .line 361
    .line 362
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    :cond_12
    aget-object v2, v0, p2

    .line 366
    .line 367
    instance-of v2, v2, Landroid/text/style/URLSpan;

    .line 368
    .line 369
    if-eqz v2, :cond_13

    .line 370
    .line 371
    const-string v2, "</a>"

    .line 372
    .line 373
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    :cond_13
    aget-object v2, v0, p2

    .line 377
    .line 378
    instance-of v2, v2, Landroid/text/style/StrikethroughSpan;

    .line 379
    .line 380
    if-eqz v2, :cond_14

    .line 381
    .line 382
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    :cond_14
    aget-object v2, v0, p2

    .line 386
    .line 387
    instance-of v2, v2, Landroid/text/style/UnderlineSpan;

    .line 388
    .line 389
    if-eqz v2, :cond_15

    .line 390
    .line 391
    const-string v2, "</u>"

    .line 392
    .line 393
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    :cond_15
    aget-object v2, v0, p2

    .line 397
    .line 398
    instance-of v2, v2, Landroid/text/style/SubscriptSpan;

    .line 399
    .line 400
    if-eqz v2, :cond_16

    .line 401
    .line 402
    const-string v2, "</sub>"

    .line 403
    .line 404
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    :cond_16
    aget-object v2, v0, p2

    .line 408
    .line 409
    instance-of v2, v2, Landroid/text/style/SuperscriptSpan;

    .line 410
    .line 411
    if-eqz v2, :cond_17

    .line 412
    .line 413
    const-string v2, "</sup>"

    .line 414
    .line 415
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    :cond_17
    aget-object v2, v0, p2

    .line 419
    .line 420
    instance-of v3, v2, Landroid/text/style/TypefaceSpan;

    .line 421
    .line 422
    if-eqz v3, :cond_18

    .line 423
    .line 424
    check-cast v2, Landroid/text/style/TypefaceSpan;

    .line 425
    .line 426
    invoke-virtual {v2}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-eqz v2, :cond_18

    .line 435
    .line 436
    const-string v2, "</tt>"

    .line 437
    .line 438
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    :cond_18
    aget-object v2, v0, p2

    .line 442
    .line 443
    instance-of v3, v2, Landroid/text/style/StyleSpan;

    .line 444
    .line 445
    if-eqz v3, :cond_1a

    .line 446
    .line 447
    check-cast v2, Landroid/text/style/StyleSpan;

    .line 448
    .line 449
    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    and-int/lit8 v3, v2, 0x1

    .line 454
    .line 455
    if-eqz v3, :cond_19

    .line 456
    .line 457
    const-string v3, "</b>"

    .line 458
    .line 459
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    :cond_19
    and-int/lit8 v2, v2, 0x2

    .line 463
    .line 464
    if-eqz v2, :cond_1a

    .line 465
    .line 466
    const-string v2, "</i>"

    .line 467
    .line 468
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    :cond_1a
    add-int/lit8 p2, p2, -0x1

    .line 472
    .line 473
    goto/16 :goto_2

    .line 474
    .line 475
    :cond_1b
    move p2, v1

    .line 476
    goto/16 :goto_0

    .line 477
    .line 478
    :cond_1c
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 8

    .line 1
    :goto_0
    if-ge p2, p3, :cond_9

    .line 2
    .line 3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3c

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "&lt;"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const/16 v1, 0x3e

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const-string v0, "&gt;"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    const/16 v1, 0x26

    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    const-string v0, "&amp;"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    const-string v1, ";"

    .line 40
    .line 41
    const-string v2, "&#"

    .line 42
    .line 43
    const v3, 0xd800

    .line 44
    .line 45
    .line 46
    if-lt v0, v3, :cond_3

    .line 47
    .line 48
    const v4, 0xdfff

    .line 49
    .line 50
    .line 51
    if-gt v0, v4, :cond_3

    .line 52
    .line 53
    const v5, 0xdc00

    .line 54
    .line 55
    .line 56
    if-ge v0, v5, :cond_8

    .line 57
    .line 58
    add-int/lit8 v6, p2, 0x1

    .line 59
    .line 60
    if-ge v6, p3, :cond_8

    .line 61
    .line 62
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-lt v7, v5, :cond_8

    .line 67
    .line 68
    if-gt v7, v4, :cond_8

    .line 69
    .line 70
    sub-int/2addr v0, v3

    .line 71
    shl-int/lit8 p2, v0, 0xa

    .line 72
    .line 73
    const/high16 v0, 0x10000

    .line 74
    .line 75
    or-int/2addr p2, v0

    .line 76
    sub-int/2addr v7, v5

    .line 77
    or-int/2addr p2, v7

    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move p2, v6

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    const/16 v3, 0x7e

    .line 90
    .line 91
    if-gt v0, v3, :cond_7

    .line 92
    .line 93
    const/16 v3, 0x20

    .line 94
    .line 95
    if-ge v0, v3, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    if-ne v0, v3, :cond_6

    .line 99
    .line 100
    :goto_1
    add-int/lit8 v0, p2, 0x1

    .line 101
    .line 102
    if-ge v0, p3, :cond_5

    .line 103
    .line 104
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ne v1, v3, :cond_5

    .line 109
    .line 110
    const-string p2, "&nbsp;"

    .line 111
    .line 112
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    move p2, v0

    .line 116
    goto :goto_1

    .line 117
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_9
    return-void
.end method
