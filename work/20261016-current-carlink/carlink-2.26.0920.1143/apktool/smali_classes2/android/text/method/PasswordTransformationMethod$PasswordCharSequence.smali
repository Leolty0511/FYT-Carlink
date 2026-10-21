.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/text/Spanned;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    check-cast v0, Landroid/text/Spanned;

    .line 8
    .line 9
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lt p1, v2, :cond_0

    .line 20
    .line 21
    if-ge p1, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-class v2, Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 42
    .line 43
    :goto_0
    array-length v2, v1

    .line 44
    if-ge v3, v2, :cond_2

    .line 45
    .line 46
    aget-object v2, v1, v3

    .line 47
    .line 48
    invoke-static {v2}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ltz v2, :cond_1

    .line 57
    .line 58
    aget-object v2, v1, v3

    .line 59
    .line 60
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    aget-object v4, v1, v3

    .line 65
    .line 66
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-lt p1, v2, :cond_1

    .line 71
    .line 72
    if-ge p1, v4, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 75
    .line 76
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1

    .line 81
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1
.end method

.method public getChars(II[CI)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 7
    .line 8
    instance-of v1, v0, Landroid/text/Spanned;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroid/text/Spanned;

    .line 14
    .line 15
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const-class v5, Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 30
    .line 31
    invoke-interface {v0, v2, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 36
    .line 37
    array-length v5, v4

    .line 38
    new-array v6, v5, [I

    .line 39
    .line 40
    new-array v7, v5, [I

    .line 41
    .line 42
    move v8, v2

    .line 43
    :goto_0
    if-ge v8, v5, :cond_2

    .line 44
    .line 45
    aget-object v9, v4, v8

    .line 46
    .line 47
    invoke-static {v9}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-ltz v9, :cond_0

    .line 56
    .line 57
    aget-object v9, v4, v8

    .line 58
    .line 59
    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    aput v9, v6, v8

    .line 64
    .line 65
    aget-object v9, v4, v8

    .line 66
    .line 67
    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    aput v9, v7, v8

    .line 72
    .line 73
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v3, -0x1

    .line 77
    const/4 v6, 0x0

    .line 78
    move v5, v2

    .line 79
    move v1, v3

    .line 80
    move-object v7, v6

    .line 81
    :cond_2
    move v0, p1

    .line 82
    :goto_1
    if-ge v0, p2, :cond_7

    .line 83
    .line 84
    if-lt v0, v3, :cond_3

    .line 85
    .line 86
    if-lt v0, v1, :cond_6

    .line 87
    .line 88
    :cond_3
    move v4, v2

    .line 89
    :goto_2
    if-ge v4, v5, :cond_5

    .line 90
    .line 91
    aget v8, v6, v4

    .line 92
    .line 93
    if-lt v0, v8, :cond_4

    .line 94
    .line 95
    aget v8, v7, v4

    .line 96
    .line 97
    if-ge v0, v8, :cond_4

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move v4, v2

    .line 105
    :goto_3
    if-nez v4, :cond_6

    .line 106
    .line 107
    sub-int v4, v0, p1

    .line 108
    .line 109
    add-int/2addr v4, p4

    .line 110
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    aput-char v8, p3, v4

    .line 115
    .line 116
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
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
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

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
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
