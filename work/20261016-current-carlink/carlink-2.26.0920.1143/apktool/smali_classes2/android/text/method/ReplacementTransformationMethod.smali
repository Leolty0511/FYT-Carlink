.class public abstract Landroid/text/method/ReplacementTransformationMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;,
        Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOriginal()[C
.end method

.method public abstract getReplacement()[C
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getOriginal()[C

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getReplacement()[C

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, p1, Landroid/text/Editable;

    .line 10
    .line 11
    if-nez v1, :cond_4

    .line 12
    .line 13
    array-length v1, p2

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    aget-char v4, p2, v3

    .line 19
    .line 20
    invoke-static {p1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ltz v4, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x1

    .line 31
    :goto_1
    if-eqz v2, :cond_2

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    instance-of v1, p1, Landroid/text/Spannable;

    .line 35
    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    instance-of v1, p1, Landroid/text/Spanned;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    new-instance v1, Landroid/text/SpannedString;

    .line 43
    .line 44
    new-instance v2, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    .line 45
    .line 46
    check-cast p1, Landroid/text/Spanned;

    .line 47
    .line 48
    invoke-direct {v2, p1, p2, v0}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_3
    new-instance v1, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    .line 56
    .line 57
    invoke-direct {v1, p1, p2, v0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_4
    instance-of v1, p1, Landroid/text/Spanned;

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    new-instance v1, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    .line 70
    .line 71
    check-cast p1, Landroid/text/Spanned;

    .line 72
    .line 73
    invoke-direct {v1, p1, p2, v0}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_5
    new-instance v1, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    .line 78
    .line 79
    invoke-direct {v1, p1, p2, v0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    .line 80
    .line 81
    .line 82
    return-object v1
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
