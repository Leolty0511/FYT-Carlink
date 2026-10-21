.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final DATE_TIME_FORMAT_SYMBOLS:Ljava/lang/String; = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

.field private static final SINGLE_QUOTE:C = '\''


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method public static addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    .line 10
    .line 11
    move v1, v0

    .line 12
    :goto_0
    array-length v2, p1

    .line 13
    if-ge v1, v2, :cond_3

    .line 14
    .line 15
    move v2, v0

    .line 16
    :goto_1
    aget-object v3, p1, v1

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    aget-object v3, p1, v1

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {v3}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    return v0

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/4 p0, 0x1

    .line 51
    return p0
.end method

.method public static addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/format/b;->g(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/method/a;->w(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    move v1, v0

    .line 14
    :goto_0
    const/16 v2, 0xa

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    aget-object v2, p1, v1

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-le v2, v3, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    aget-object v2, p1, v1

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return v3
.end method

.method public static addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x1

    .line 10
    move v2, p2

    .line 11
    move v1, v0

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v1, v3, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    const/16 v4, 0x27

    .line 30
    .line 31
    if-ne v3, v4, :cond_2

    .line 32
    .line 33
    xor-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    add-int/lit8 v5, v1, -0x1

    .line 38
    .line 39
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eq v5, v4, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, -0x1

    .line 53
    if-eq v4, v5, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const-string v4, "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eq v4, v5, :cond_4

    .line 63
    .line 64
    return v0

    .line 65
    :cond_4
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    return p2
.end method

.method public static addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p2

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    aget-object v2, p2, v1

    .line 7
    .line 8
    invoke-static {p0, p1, v2, p3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public static collectionToArray(Ljava/util/Collection;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [C

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Character;

    .line 23
    .line 24
    add-int/lit8 v3, v1, 0x1

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    aput-char v2, v0, v1

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public static ok([CC)Z
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    :goto_0
    if-ltz v0, :cond_1

    .line 5
    .line 6
    aget-char v2, p0, v0

    .line 7
    .line 8
    if-ne v2, p1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    move p5, p2

    .line 6
    :goto_0
    if-ge p5, p3, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result p6

    .line 12
    invoke-static {p4, p6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    .line 13
    .line 14
    .line 15
    move-result p6

    .line 16
    if-nez p6, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 p5, p5, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    if-ne p5, p3, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_2
    sub-int p6, p3, p2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p6, v0, :cond_3

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 35
    .line 36
    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 37
    .line 38
    .line 39
    sub-int/2addr p5, p2

    .line 40
    sub-int/2addr p6, v0

    .line 41
    :goto_2
    if-lt p6, p5, :cond_5

    .line 42
    .line 43
    invoke-interface {p1, p6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p4, p2}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_4

    .line 52
    .line 53
    add-int/lit8 p2, p6, 0x1

    .line 54
    .line 55
    invoke-virtual {v1, p6, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_4
    add-int/lit8 p6, p6, -0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    return-object v1
.end method

.method public abstract getAcceptedChars()[C
.end method

.method public lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 1

    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result p1

    return p1
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-ltz v2, :cond_0

    .line 19
    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 23
    .line 24
    .line 25
    move v0, v1

    .line 26
    move v2, v0

    .line 27
    :cond_1
    if-eqz p4, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v3, v1

    .line 35
    :goto_0
    if-eqz p4, :cond_3

    .line 36
    .line 37
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_3
    const/4 v4, 0x1

    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    if-eqz v3, :cond_6

    .line 45
    .line 46
    if-eq v2, v0, :cond_4

    .line 47
    .line 48
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 49
    .line 50
    .line 51
    :cond_4
    int-to-char p1, v3

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p2, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 60
    .line 61
    .line 62
    return v4

    .line 63
    :cond_5
    const/16 v5, 0x30

    .line 64
    .line 65
    if-ne v3, v5, :cond_6

    .line 66
    .line 67
    if-ne v1, v4, :cond_6

    .line 68
    .line 69
    if-ne v2, v0, :cond_6

    .line 70
    .line 71
    if-lez v0, :cond_6

    .line 72
    .line 73
    sub-int/2addr v2, v4

    .line 74
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-ne v1, v5, :cond_6

    .line 79
    .line 80
    const/16 p1, 0x2b

    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p2, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 90
    .line 91
    .line 92
    return v4

    .line 93
    :cond_6
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 94
    .line 95
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1
.end method
