.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object;

.field static DEBUG:Z = false

.field private static INVALID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    sput v0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 7
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    xor-int/lit8 p1, p2, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    xor-int/lit8 p1, p2, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    return-void
.end method

.method private ensureDefaultComposingSpans()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 15
    .line 16
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [I

    .line 34
    .line 35
    const v2, 0x1010230

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput v2, v1, v3

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    instance-of v0, v1, Landroid/text/Spanned;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    move-object v0, v1

    .line 59
    check-cast v0, Landroid/text/Spanned;

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-class v2, Ljava/lang/Object;

    .line 66
    .line 67
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method private static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz p1, :cond_9

    .line 6
    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-gez p2, :cond_1

    .line 11
    .line 12
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    move v1, v0

    .line 17
    :goto_1
    if-nez p2, :cond_2

    .line 18
    .line 19
    return p1

    .line 20
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    if-gez p1, :cond_4

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 27
    .line 28
    return p0

    .line 29
    :cond_3
    return v0

    .line 30
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_5

    .line 41
    .line 42
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 43
    .line 44
    return p0

    .line 45
    :cond_5
    add-int/lit8 p2, p2, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_6
    invoke-static {v2}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_7

    .line 53
    .line 54
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_7
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_8

    .line 62
    .line 63
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 64
    .line 65
    return p0

    .line 66
    :cond_8
    const/4 v1, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_9
    :goto_2
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 69
    .line 70
    return p0
.end method

.method private static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz p1, :cond_9

    .line 6
    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-gez p2, :cond_1

    .line 11
    .line 12
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_0
    move v2, v1

    .line 17
    :goto_1
    if-nez p2, :cond_2

    .line 18
    .line 19
    return p1

    .line 20
    :cond_2
    if-lt p1, v0, :cond_4

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 25
    .line 26
    return p0

    .line 27
    :cond_3
    return v0

    .line 28
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v2, :cond_6

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_5

    .line 39
    .line 40
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 41
    .line 42
    return p0

    .line 43
    :cond_5
    add-int/lit8 p2, p2, -0x1

    .line 44
    .line 45
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_6
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_7

    .line 53
    .line 54
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_7
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_8

    .line 64
    .line 65
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 66
    .line 67
    return p0

    .line 68
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_9
    :goto_2
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 73
    .line 74
    return p0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1

    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1

    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-class v1, Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    :goto_0
    if-ltz v1, :cond_1

    .line 23
    .line 24
    aget-object v2, v0, v1

    .line 25
    .line 26
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    and-int/lit16 v3, v3, 0x100

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget-boolean v3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 20
    .line 21
    const-string v4, " to "

    .line 22
    .line 23
    const-string v5, "BaseInputConnection"

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v6, "Composing span: "

    .line 30
    .line 31
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    if-ge v2, v1, :cond_2

    .line 51
    .line 52
    move v10, v2

    .line 53
    move v2, v1

    .line 54
    move v1, v10

    .line 55
    :cond_2
    const/4 v3, -0x1

    .line 56
    const/4 v6, 0x0

    .line 57
    if-eq v1, v3, :cond_3

    .line 58
    .line 59
    if-eq v2, v3, :cond_3

    .line 60
    .line 61
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-gez v1, :cond_4

    .line 74
    .line 75
    move v1, v6

    .line 76
    :cond_4
    if-gez v2, :cond_5

    .line 77
    .line 78
    move v2, v6

    .line 79
    :cond_5
    if-ge v2, v1, :cond_6

    .line 80
    .line 81
    move v10, v2

    .line 82
    move v2, v1

    .line 83
    move v1, v10

    .line 84
    :cond_6
    :goto_0
    if-eqz p3, :cond_9

    .line 85
    .line 86
    instance-of v3, p1, Landroid/text/Spannable;

    .line 87
    .line 88
    if-nez v3, :cond_8

    .line 89
    .line 90
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 91
    .line 92
    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 99
    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    move p1, v6

    .line 103
    :goto_1
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 104
    .line 105
    array-length v8, v7

    .line 106
    if-ge p1, v8, :cond_7

    .line 107
    .line 108
    aget-object v7, v7, p1

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    const/16 v9, 0x121

    .line 115
    .line 116
    invoke-interface {v3, v7, v6, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 p1, p1, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    move-object p1, v3

    .line 123
    goto :goto_2

    .line 124
    :cond_8
    move-object v3, p1

    .line 125
    check-cast v3, Landroid/text/Spannable;

    .line 126
    .line 127
    :goto_2
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 128
    .line 129
    .line 130
    :cond_9
    sget-boolean v3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 131
    .line 132
    if-eqz v3, :cond_a

    .line 133
    .line 134
    const-string v3, "Replacing from "

    .line 135
    .line 136
    const-string v7, " with \""

    .line 137
    .line 138
    invoke-static {v3, v1, v4, v2, v7}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, "\", composing="

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p3, ", type="

    .line 154
    .line 155
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-static {v5, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_a
    sget-boolean p3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 177
    .line 178
    const/4 v3, 0x2

    .line 179
    const-string v4, "  "

    .line 180
    .line 181
    if-eqz p3, :cond_b

    .line 182
    .line 183
    new-instance p3, Landroid/util/LogPrinter;

    .line 184
    .line 185
    invoke-direct {p3, v3, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v7, "Current text:"

    .line 189
    .line 190
    invoke-virtual {p3, v7}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v0, p3, v4}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v7, "Composing text:"

    .line 197
    .line 198
    invoke-virtual {p3, v7}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {p1, p3, v4}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_b
    if-lez p2, :cond_c

    .line 205
    .line 206
    add-int/lit8 p3, v2, -0x1

    .line 207
    .line 208
    add-int/2addr p3, p2

    .line 209
    goto :goto_3

    .line 210
    :cond_c
    add-int p3, p2, v1

    .line 211
    .line 212
    :goto_3
    if-gez p3, :cond_d

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_d
    move v6, p3

    .line 216
    :goto_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-le v6, p2, :cond_e

    .line 221
    .line 222
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    :cond_e
    invoke-static {v0, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 230
    .line 231
    .line 232
    sget-boolean p1, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 233
    .line 234
    if-eqz p1, :cond_f

    .line 235
    .line 236
    new-instance p1, Landroid/util/LogPrinter;

    .line 237
    .line 238
    invoke-direct {p1, v3, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string p2, "Final text:"

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0, p1, v4}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_f
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method private sendCurrentText()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/4 v2, 0x1

    .line 20
    if-ne v1, v2, :cond_5

    .line 21
    .line 22
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 32
    .line 33
    :cond_2
    new-array v1, v2, [C

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-interface {v0, v3, v2, v1, v3}, Landroid/text/GetChars;->getChars(II[CI)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    :goto_0
    array-length v2, v1

    .line 48
    if-ge v3, v2, :cond_4

    .line 49
    .line 50
    sget-boolean v2, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "Sending: "

    .line 57
    .line 58
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    aget-object v4, v1, v3

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v4, "BaseInputConnection"

    .line 71
    .line 72
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_3
    aget-object v2, v1, v3

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 78
    .line 79
    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    new-instance v1, Landroid/view/KeyEvent;

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    const/4 v8, -0x1

    .line 98
    const/4 v9, 0x0

    .line 99
    move-object v4, v1

    .line 100
    invoke-direct/range {v4 .. v9}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 107
    .line 108
    .line 109
    :cond_6
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 7

    .line 2
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x121

    if-eqz v0, :cond_2

    .line 3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 4
    aget-object v3, v0, v2

    .line 5
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    .line 6
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    and-int/lit16 v5, v4, 0x133

    if-eq v5, v1, :cond_1

    .line 8
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    and-int/lit8 v4, v4, -0x34

    or-int/lit16 v4, v4, 0x100

    or-int/lit8 v4, v4, 0x21

    invoke-interface {p0, v3, v5, v6, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public closeConnection()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "commitText "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BaseInputConnection"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 8

    .line 1
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "deleteSurroundingText "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " / "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "BaseInputConnection"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-le v2, v3, :cond_2

    .line 52
    .line 53
    move v7, v3

    .line 54
    move v3, v2

    .line 55
    move v2, v7

    .line 56
    :cond_2
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ge v5, v4, :cond_3

    .line 65
    .line 66
    move v7, v5

    .line 67
    move v5, v4

    .line 68
    move v4, v7

    .line 69
    :cond_3
    const/4 v6, -0x1

    .line 70
    if-eq v4, v6, :cond_5

    .line 71
    .line 72
    if-eq v5, v6, :cond_5

    .line 73
    .line 74
    if-ge v4, v2, :cond_4

    .line 75
    .line 76
    move v2, v4

    .line 77
    :cond_4
    if-le v5, v3, :cond_5

    .line 78
    .line 79
    move v3, v5

    .line 80
    :cond_5
    if-lez p1, :cond_7

    .line 81
    .line 82
    sub-int p1, v2, p1

    .line 83
    .line 84
    if-gez p1, :cond_6

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    move v1, p1

    .line 88
    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 89
    .line 90
    .line 91
    sub-int v1, v2, v1

    .line 92
    .line 93
    :cond_7
    if-lez p2, :cond_9

    .line 94
    .line 95
    sub-int/2addr v3, v1

    .line 96
    add-int/2addr p2, v3

    .line 97
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-le p2, p1, :cond_8

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    :cond_8
    invoke-interface {v0, v3, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 108
    .line 109
    .line 110
    :cond_9
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 111
    .line 112
    .line 113
    const/4 p1, 0x1

    .line 114
    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 8

    .line 1
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "deleteSurroundingText "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " / "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "BaseInputConnection"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-le v2, v3, :cond_2

    .line 52
    .line 53
    move v7, v3

    .line 54
    move v3, v2

    .line 55
    move v2, v7

    .line 56
    :cond_2
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ge v5, v4, :cond_3

    .line 65
    .line 66
    move v7, v5

    .line 67
    move v5, v4

    .line 68
    move v4, v7

    .line 69
    :cond_3
    const/4 v6, -0x1

    .line 70
    if-eq v4, v6, :cond_5

    .line 71
    .line 72
    if-eq v5, v6, :cond_5

    .line 73
    .line 74
    if-ge v4, v2, :cond_4

    .line 75
    .line 76
    move v2, v4

    .line 77
    :cond_4
    if-le v5, v3, :cond_5

    .line 78
    .line 79
    move v3, v5

    .line 80
    :cond_5
    if-ltz v2, :cond_7

    .line 81
    .line 82
    if-ltz v3, :cond_7

    .line 83
    .line 84
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {v0, v2, p1}, Landroid/view/inputmethod/BaseInputConnection;->findIndexBackward(Ljava/lang/CharSequence;II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 93
    .line 94
    if-eq p1, v4, :cond_7

    .line 95
    .line 96
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-static {v0, v3, p2}, Landroid/view/inputmethod/BaseInputConnection;->findIndexForward(Ljava/lang/CharSequence;II)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    sget v1, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 105
    .line 106
    if-eq p2, v1, :cond_7

    .line 107
    .line 108
    sub-int v1, v2, p1

    .line 109
    .line 110
    if-lez v1, :cond_6

    .line 111
    .line 112
    invoke-interface {v0, p1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 113
    .line 114
    .line 115
    :cond_6
    sub-int p1, p2, v3

    .line 116
    .line 117
    if-lez p1, :cond_7

    .line 118
    .line 119
    sub-int/2addr v3, v1

    .line 120
    sub-int/2addr p2, v1

    .line 121
    invoke-interface {v0, v3, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 122
    .line 123
    .line 124
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 125
    .line 126
    .line 127
    const/4 p1, 0x1

    .line 128
    return p1
.end method

.method public endBatchEdit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BaseInputConnection"

    .line 6
    .line 7
    const-string v1, "finishComposingText"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-le v1, v2, :cond_2

    .line 23
    .line 24
    move v1, v2

    .line 25
    :cond_2
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 22
    .line 23
    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-le v2, v3, :cond_1

    .line 18
    .line 19
    move v4, v3

    .line 20
    move v3, v2

    .line 21
    move v2, v4

    .line 22
    :cond_1
    if-ne v2, v3, :cond_2

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_2
    and-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_3
    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-le v1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v2

    .line 21
    :goto_0
    if-gez v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :cond_2
    add-int v2, v1, p1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-le v2, v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sub-int/2addr p1, v1

    .line 37
    :cond_3
    and-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    if-eqz p2, :cond_4

    .line 40
    .line 41
    add-int/2addr p1, v1

    .line 42
    invoke-interface {v0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_4
    add-int/2addr p1, v1

    .line 48
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-le v1, v2, :cond_1

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_1
    if-gtz v1, :cond_2

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_2
    if-le p1, v1, :cond_3

    .line 26
    .line 27
    move p1, v1

    .line 28
    :cond_3
    and-int/lit8 p2, p2, 0x1

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    sub-int p1, v1, p1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_4
    sub-int p1, v1, p1

    .line 40
    .line 41
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v12

    .line 5
    new-instance p1, Landroid/view/KeyEvent;

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/16 v6, 0x42

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, -0x1

    .line 13
    const/4 v10, 0x0

    .line 14
    const/16 v11, 0x16

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    move-wide v1, v12

    .line 18
    move-wide v3, v12

    .line 19
    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroid/view/KeyEvent;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const/4 v5, 0x1

    .line 32
    move-object v0, p1

    .line 33
    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 11
    .line 12
    .line 13
    if-le p1, p2, :cond_0

    .line 14
    .line 15
    move v5, p2

    .line 16
    move p2, p1

    .line 17
    move p1, v5

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-gez p1, :cond_1

    .line 24
    .line 25
    move p1, v2

    .line 26
    :cond_1
    if-gez p2, :cond_2

    .line 27
    .line 28
    move p2, v2

    .line 29
    :cond_2
    if-le p1, v1, :cond_3

    .line 30
    .line 31
    move p1, v1

    .line 32
    :cond_3
    if-le p2, v1, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    move v1, p2

    .line 36
    :goto_0
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 40
    .line 41
    const/16 v3, 0x121

    .line 42
    .line 43
    if-eqz p2, :cond_5

    .line 44
    .line 45
    :goto_1
    iget-object p2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 46
    .line 47
    array-length v4, p2

    .line 48
    if-ge v2, v4, :cond_5

    .line 49
    .line 50
    aget-object p2, p2, v2

    .line 51
    .line 52
    invoke-interface {v0, p2, p1, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    sget-object p2, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {v0, p2, p1, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 67
    .line 68
    .line 69
    :cond_6
    const/4 p1, 0x1

    .line 70
    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "setComposingText "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BaseInputConnection"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 26
    .line 27
    .line 28
    return v0
.end method

.method public setSelection(II)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "setSelection "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "BaseInputConnection"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    if-gt p1, v1, :cond_4

    .line 46
    .line 47
    if-gt p2, v1, :cond_4

    .line 48
    .line 49
    if-ltz p1, :cond_4

    .line 50
    .line 51
    if-gez p2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    if-ne p1, p2, :cond_3

    .line 55
    .line 56
    const/16 v1, 0x800

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_0
    return v2
.end method
