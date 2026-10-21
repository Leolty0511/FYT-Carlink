.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "SourceFile"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    check-cast p0, Landroid/text/Spanned;

    .line 7
    .line 8
    const-class v0, Landroid/text/style/ReplacementSpan;

    .line 9
    .line 10
    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, v0

    .line 18
    if-ge v1, v2, :cond_3

    .line 19
    .line 20
    aget-object v2, v0, v1

    .line 21
    .line 22
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    aget-object v3, v0, v1

    .line 27
    .line 28
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, p1, :cond_2

    .line 33
    .line 34
    if-le v3, p1, :cond_2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v3

    .line 40
    :goto_1
    move p1, v2

    .line 41
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    and-int/lit16 p3, p3, -0x70f4

    .line 6
    .line 7
    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    and-int/lit16 p3, p3, 0x1000

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    move p3, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move p3, v0

    .line 34
    :goto_0
    invoke-static {p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v2, v1, :cond_3

    .line 39
    .line 40
    move v2, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v2, v0

    .line 43
    :goto_1
    const/4 v3, 0x2

    .line 44
    invoke-static {p2, v3, p4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-ne p4, v1, :cond_4

    .line 49
    .line 50
    move p4, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_4
    move p4, v0

    .line 53
    :goto_2
    if-eqz p3, :cond_7

    .line 54
    .line 55
    if-nez p4, :cond_6

    .line 56
    .line 57
    if-eqz v2, :cond_5

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_6
    :goto_3
    return v0

    .line 66
    :cond_7
    if-eqz p4, :cond_8

    .line 67
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_8

    .line 73
    .line 74
    return v1

    .line 75
    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-eqz p5, :cond_b

    .line 80
    .line 81
    instance-of p4, p1, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz p4, :cond_9

    .line 84
    .line 85
    check-cast p1, Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_4

    .line 92
    :cond_9
    iget-object p1, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter p1

    .line 95
    :try_start_0
    sget-object p4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 96
    .line 97
    if-nez p4, :cond_a

    .line 98
    .line 99
    new-instance p4, Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 102
    .line 103
    .line 104
    sput-object p4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 105
    .line 106
    :cond_a
    sget-object p4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 107
    .line 108
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    move-object p1, p4

    .line 110
    :goto_4
    invoke-static {p2, p3, p1}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    goto :goto_5

    .line 115
    :catchall_0
    move-exception p2

    .line 116
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p2

    .line 118
    :cond_b
    invoke-static {p2, p3}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    :goto_5
    if-eq p3, p1, :cond_c

    .line 123
    .line 124
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result p4

    .line 128
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-interface {p2, p4, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 133
    .line 134
    .line 135
    return v1

    .line 136
    :cond_c
    return v0
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eq p1, v1, :cond_0

    .line 30
    .line 31
    invoke-interface {p2, v1, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    move v1, v0

    .line 12
    move v0, p1

    .line 13
    move p1, v1

    .line 14
    :cond_0
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p2, p1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 4

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
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    if-nez p3, :cond_1

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :cond_1
    if-eqz p3, :cond_3

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ne v0, v1, :cond_3

    .line 24
    .line 25
    :cond_2
    return v2

    .line 26
    :cond_3
    instance-of v1, p1, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_4
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_5

    .line 39
    .line 40
    new-instance p1, Landroid/text/method/WordIterator;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/text/method/WordIterator;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_5
    const/4 v1, -0x1

    .line 46
    if-eqz p3, :cond_6

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-virtual {p1, p2, v0, p3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/text/method/WordIterator;->following(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-ne p1, v1, :cond_8

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {p1, p2, v2, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-ne p1, v1, :cond_7

    .line 74
    .line 75
    move p1, v0

    .line 76
    move v0, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_7
    move v3, v0

    .line 79
    move v0, p1

    .line 80
    move p1, v3

    .line 81
    :cond_8
    :goto_1
    invoke-interface {p2, v0, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    return p1
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-gt p1, v1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    move v2, p1

    .line 7
    move v3, v0

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    :cond_1
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    sub-int/2addr v2, v7

    .line 19
    const/4 v7, 0x4

    .line 20
    const/16 v8, 0xa

    .line 21
    .line 22
    const/4 v9, 0x2

    .line 23
    const/4 v10, 0x7

    .line 24
    const/16 v11, 0xd

    .line 25
    .line 26
    packed-switch v3, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo p1, "state "

    .line 32
    .line 33
    .line 34
    const-string v0, " is unknown"

    .line 35
    .line 36
    invoke-static {p1, v3, v0}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :pswitch_0
    invoke-static {v6}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x2

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_2
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_3
    move v4, v9

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :pswitch_1
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_f

    .line 74
    .line 75
    add-int/lit8 v4, v4, -0x2

    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :pswitch_2
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_f

    .line 84
    .line 85
    add-int/lit8 v4, v4, 0x2

    .line 86
    .line 87
    const/16 v3, 0xb

    .line 88
    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :pswitch_3
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_f

    .line 96
    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    add-int/2addr v3, v5

    .line 104
    add-int/2addr v3, v4

    .line 105
    move v5, v0

    .line 106
    goto :goto_0

    .line 107
    :pswitch_4
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-int/2addr v3, v1

    .line 118
    add-int/2addr v3, v4

    .line 119
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_5

    .line 124
    .line 125
    move v4, v3

    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :cond_4
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_f

    .line 133
    .line 134
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    const/16 v3, 0x9

    .line 139
    .line 140
    goto/16 :goto_7

    .line 141
    .line 142
    :pswitch_5
    sget v3, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    .line 143
    .line 144
    if-ne v6, v3, :cond_f

    .line 145
    .line 146
    const/16 v3, 0x8

    .line 147
    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :pswitch_6
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_6

    .line 155
    .line 156
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    add-int/2addr v3, v4

    .line 161
    :cond_5
    :goto_0
    move v4, v3

    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :cond_6
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_f

    .line 169
    .line 170
    invoke-static {v6}, Landroid/text/format/b;->a(I)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-nez v3, :cond_f

    .line 175
    .line 176
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    goto :goto_2

    .line 181
    :pswitch_7
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_f

    .line 186
    .line 187
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    goto :goto_1

    .line 192
    :pswitch_8
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_7

    .line 197
    .line 198
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    const/4 v3, 0x5

    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :cond_7
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_f

    .line 210
    .line 211
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    goto :goto_2

    .line 216
    :pswitch_9
    invoke-static {v6}, Landroid/text/Emoji;->isKeycapBase(I)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_f

    .line 221
    .line 222
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    :goto_1
    add-int/2addr v3, v5

    .line 227
    goto :goto_2

    .line 228
    :pswitch_a
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_8

    .line 233
    .line 234
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    const/4 v3, 0x3

    .line 239
    goto :goto_7

    .line 240
    :cond_8
    invoke-static {v6}, Landroid/text/Emoji;->isKeycapBase(I)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_f

    .line 245
    .line 246
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    :goto_2
    add-int/2addr v4, v3

    .line 251
    goto :goto_6

    .line 252
    :pswitch_b
    if-ne v6, v11, :cond_f

    .line 253
    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :pswitch_c
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-ne v6, v8, :cond_9

    .line 262
    .line 263
    move v3, v1

    .line 264
    goto :goto_7

    .line 265
    :cond_9
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_a

    .line 270
    .line 271
    const/4 v3, 0x6

    .line 272
    goto :goto_7

    .line 273
    :cond_a
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_b

    .line 278
    .line 279
    :goto_3
    move v3, v8

    .line 280
    goto :goto_7

    .line 281
    :cond_b
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_c

    .line 286
    .line 287
    :goto_4
    move v3, v7

    .line 288
    goto :goto_7

    .line 289
    :cond_c
    sget v3, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    .line 290
    .line 291
    if-ne v6, v3, :cond_d

    .line 292
    .line 293
    move v3, v9

    .line 294
    goto :goto_7

    .line 295
    :cond_d
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_e

    .line 300
    .line 301
    :goto_5
    move v3, v10

    .line 302
    goto :goto_7

    .line 303
    :cond_e
    sget v3, Landroid/text/Emoji;->CANCEL_TAG:I

    .line 304
    .line 305
    if-ne v6, v3, :cond_f

    .line 306
    .line 307
    const/16 v3, 0xc

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_f
    :goto_6
    move v3, v11

    .line 311
    :goto_7
    if-lez v2, :cond_10

    .line 312
    .line 313
    if-ne v3, v11, :cond_1

    .line 314
    .line 315
    :cond_10
    sub-int/2addr p1, v4

    .line 316
    invoke-static {p0, p1, v1}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    return p0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    add-int/lit8 v0, v3, -0x1

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    return v3

    .line 10
    :cond_0
    const/4 v4, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, p2

    .line 13
    move-object v1, p0

    .line 14
    move v2, p1

    .line 15
    move v5, p1

    .line 16
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method private static isVariationSelector(I)Z
    .locals 0

    invoke-static {p0}, Landroid/text/format/b;->v(I)Z

    move-result p0

    return p0
.end method

.method public static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 2

    sget-object v0, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4001

    goto :goto_0

    :cond_1
    const/16 v0, 0x2001

    goto :goto_0

    :cond_2
    const/16 v0, 0x1001

    :goto_0
    if-eqz p1, :cond_3

    const p0, 0x8000

    or-int/2addr v0, p0

    :cond_3
    return v0
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    if-eq p3, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x70

    .line 6
    .line 7
    if-eq p3, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ge v0, p1, :cond_1

    .line 25
    .line 26
    move v2, v0

    .line 27
    move v0, p1

    .line 28
    move p1, v2

    .line 29
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    invoke-interface {p2, p1, v0, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_3
    :goto_0
    return v1
.end method
