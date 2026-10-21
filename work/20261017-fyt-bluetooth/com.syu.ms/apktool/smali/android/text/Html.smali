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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 3

    .line 2
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    :try_start_0
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    .line 3
    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance v1, Landroid/text/HtmlToSpannedConverter;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 5
    invoke-virtual {v1}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 4

    sub-int v0, p2, p1

    .line 1
    invoke-static {v0}, Lu/a;->e(I)I

    move-result v1

    new-array v1, v1, [B

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {p0, p1, p2, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 p0, 0x2

    .line 4
    invoke-static {p0, v2, v1, v0, v3}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const-string p0, "<p dir=\"ltr\">"

    return-object p0

    :cond_0
    const-string p0, "<p dir=\"rtl\">"

    return-object p0
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {v0, p0}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 7

    .line 1
    invoke-static {p1, p2, p3}, Landroid/text/Html;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    :goto_0
    if-ge v3, p3, :cond_3

    const/16 p2, 0xa

    .line 2
    invoke-static {p1, p2, v3, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    if-gez v0, :cond_0

    move v0, p3

    :cond_0
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v0, p3, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sub-int v4, v0, v5

    if-ne v0, p3, :cond_2

    const/4 p2, 0x1

    move v6, p2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    .line 4
    invoke-static/range {v1 .. v6}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    move v3, v0

    goto :goto_0

    :cond_3
    const-string p1, "</p>\n"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 7

    .line 1
    const-class v0, Landroid/text/style/QuoteSpan;

    :goto_0
    if-ge p2, p3, :cond_2

    .line 2
    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 3
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    const-string v6, "<blockquote>"

    .line 5
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, v1}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 7
    array-length p2, v2

    :goto_2
    if-ge v4, p2, :cond_1

    aget-object v3, v2, v4

    const-string v3, "</blockquote>\n"

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move p2, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 11

    .line 1
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 3
    invoke-interface {p1, v3, v1, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 4
    invoke-interface {p1, v3, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ParagraphStyle;

    const-string v6, " "

    move v7, v2

    move v8, v7

    .line 5
    :goto_1
    array-length v9, v5

    if-ge v7, v9, :cond_3

    .line 6
    aget-object v9, v5, v7

    instance-of v9, v9, Landroid/text/style/AlignmentSpan;

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    .line 7
    aget-object v8, v5, v7

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v8

    .line 8
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_0

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move v8, v10

    goto :goto_3

    .line 10
    :cond_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_1

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 12
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    const-string v5, "<div "

    .line 13
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    invoke-static {p0, p1, v3, v4}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v8, :cond_5

    const-string v3, "</div>"

    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move v3, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1
    const-class v4, Landroid/text/style/CharacterStyle;

    move/from16 v5, p2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_18

    .line 2
    invoke-interface {v1, v5, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    .line 3
    invoke-interface {v1, v5, v7, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/CharacterStyle;

    const/4 v9, 0x0

    .line 4
    :goto_1
    array-length v10, v8

    const-string v11, "monospace"

    if-ge v9, v10, :cond_c

    .line 5
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/StyleSpan;

    if-eqz v10, :cond_1

    .line 6
    aget-object v10, v8, v9

    check-cast v10, Landroid/text/style/StyleSpan;

    invoke-virtual {v10}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v10

    and-int/lit8 v12, v10, 0x1

    if-eqz v12, :cond_0

    const-string v12, "<b>"

    .line 7
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    const-string v10, "<i>"

    .line 8
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/TypefaceSpan;

    if-eqz v10, :cond_2

    .line 10
    aget-object v10, v8, v9

    check-cast v10, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v10}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "<tt>"

    .line 12
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/SuperscriptSpan;

    if-eqz v10, :cond_3

    const-string v10, "<sup>"

    .line 14
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/SubscriptSpan;

    if-eqz v10, :cond_4

    const-string v10, "<sub>"

    .line 16
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_4
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/UnderlineSpan;

    if-eqz v10, :cond_5

    const-string v10, "<u>"

    .line 18
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_5
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/StrikethroughSpan;

    if-eqz v10, :cond_6

    const-string v10, "<strike>"

    .line 20
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_6
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/URLSpan;

    const-string v11, "\">"

    if-eqz v10, :cond_7

    const-string v10, "<a href=\""

    .line 22
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    aget-object v10, v8, v9

    check-cast v10, Landroid/text/style/URLSpan;

    invoke-virtual {v10}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_7
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/ImageSpan;

    if-eqz v10, :cond_8

    const-string v5, "<img src=\""

    .line 26
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    aget-object v5, v8, v9

    check-cast v5, Landroid/text/style/ImageSpan;

    invoke-virtual {v5}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 29
    :cond_8
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v12, 0x6

    if-eqz v10, :cond_9

    const-string v10, "<font size =\""

    .line 30
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    aget-object v10, v8, v9

    check-cast v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v10}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v10

    div-int/2addr v10, v12

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_9
    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/text/style/ForegroundColorSpan;

    if-eqz v10, :cond_b

    const-string v10, "<font color =\"#"

    .line 34
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    aget-object v10, v8, v9

    check-cast v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v10}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    const/high16 v13, 0x1000000

    add-int/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 36
    :goto_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v12, :cond_a

    .line 37
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 38
    :cond_a
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 40
    :cond_c
    invoke-static {p0, v1, v5, v7}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 41
    array-length v5, v8

    sub-int/2addr v5, v6

    :goto_3
    if-ltz v5, :cond_17

    .line 42
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/ForegroundColorSpan;

    const-string v9, "</font>"

    if-eqz v6, :cond_d

    .line 43
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_d
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v6, :cond_e

    .line 45
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_e
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_f

    const-string v6, "</a>"

    .line 47
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_f
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/StrikethroughSpan;

    if-eqz v6, :cond_10

    const-string v6, "</strike>"

    .line 49
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_10
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_11

    const-string v6, "</u>"

    .line 51
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_11
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/SubscriptSpan;

    if-eqz v6, :cond_12

    const-string v6, "</sub>"

    .line 53
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_12
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/SuperscriptSpan;

    if-eqz v6, :cond_13

    const-string v6, "</sup>"

    .line 55
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_13
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/TypefaceSpan;

    if-eqz v6, :cond_14

    .line 57
    aget-object v6, v8, v5

    check-cast v6, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v6}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "</tt>"

    .line 59
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_14
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/text/style/StyleSpan;

    if-eqz v6, :cond_16

    .line 61
    aget-object v6, v8, v5

    check-cast v6, Landroid/text/style/StyleSpan;

    invoke-virtual {v6}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v6

    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_15

    const-string v9, "</b>"

    .line 62
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_16

    const-string v6, "</i>"

    .line 63
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3

    :cond_17
    move v5, v7

    goto/16 :goto_0

    :cond_18
    if-eqz p5, :cond_19

    const-string v1, ""

    goto :goto_4

    .line 64
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "</p>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Landroid/text/Html;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-ne v3, v6, :cond_1a

    const-string v1, "<br>\n"

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1a
    const/4 v2, 0x2

    if-ne v3, v2, :cond_1b

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1b
    :goto_5
    if-ge v2, v3, :cond_1c

    const-string v4, "<br>"

    .line 67
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 68
    :cond_1c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 8

    :goto_0
    if-ge p2, p3, :cond_9

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    const-string v0, "&lt;"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    const-string v0, "&gt;"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    const-string v0, "&amp;"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v1, ";"

    const-string v2, "&#"

    const v3, 0xd800

    if-lt v0, v3, :cond_3

    const v4, 0xdfff

    if-gt v0, v4, :cond_3

    const v5, 0xdc00

    if-ge v0, v5, :cond_8

    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_8

    .line 5
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    if-gt v7, v4, :cond_8

    const/high16 p2, 0x10000

    sub-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0xa

    or-int/2addr p2, v0

    sub-int/2addr v7, v5

    or-int/2addr p2, v7

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v6

    goto :goto_3

    :cond_3
    const/16 v3, 0x7e

    if-gt v0, v3, :cond_7

    const/16 v3, 0x20

    if-ge v0, v3, :cond_4

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_6

    :goto_1
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_5

    .line 7
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_5

    const-string p2, "&nbsp;"

    .line 8
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v0

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 11
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
