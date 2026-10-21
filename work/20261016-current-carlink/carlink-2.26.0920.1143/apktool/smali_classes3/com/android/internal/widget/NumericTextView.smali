.class public Lcom/android/internal/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D

.field private static final RADIX:I = 0xa


# instance fields
.field private mCount:I

.field private mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 6
    .line 7
    const/16 p2, 0x63

    .line 8
    .line 9
    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Landroid/util/StateSet;->get(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private handleKeyUp(I)Z
    .locals 6

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 8
    .line 9
    if-lez p1, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 12
    .line 13
    div-int/lit8 v0, v0, 0xa

    .line 14
    .line 15
    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 16
    .line 17
    sub-int/2addr p1, v2

    .line 18
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 28
    .line 29
    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 30
    .line 31
    if-ge v0, v3, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->numericKeyCodeToInt(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 38
    .line 39
    mul-int/lit8 v0, v0, 0xa

    .line 40
    .line 41
    add-int/2addr v0, p1

    .line 42
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 43
    .line 44
    if-gt v0, p1, :cond_1

    .line 45
    .line 46
    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 47
    .line 48
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 49
    .line 50
    add-int/2addr p1, v2

    .line 51
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 52
    .line 53
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 54
    .line 55
    if-lez p1, :cond_2

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "%0"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 65
    .line 66
    const-string v3, "d"

    .line 67
    .line 68
    invoke-static {p1, v0, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-array v0, v2, [Ljava/lang/Object;

    .line 73
    .line 74
    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    aput-object v3, v0, v1

    .line 81
    .line 82
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string p1, ""

    .line 88
    .line 89
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 97
    .line 98
    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 99
    .line 100
    if-lt v0, v3, :cond_3

    .line 101
    .line 102
    move v3, v2

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move v3, v1

    .line 105
    :goto_2
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 106
    .line 107
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 108
    .line 109
    if-ge v4, v5, :cond_4

    .line 110
    .line 111
    mul-int/lit8 v4, v0, 0xa

    .line 112
    .line 113
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 114
    .line 115
    if-le v4, v5, :cond_5

    .line 116
    .line 117
    :cond_4
    move v1, v2

    .line 118
    :cond_5
    invoke-interface {p1, p0, v0, v3, v1}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    .line 119
    .line 120
    .line 121
    :cond_6
    return v2

    .line 122
    :cond_7
    return v1
.end method

.method private static isKeyCodeNumeric(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

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

.method private static numericKeyCodeToInt(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x7

    return p0
.end method

.method private updateDisplayedValue()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "%0"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 13
    .line 14
    const-string v2, "d"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "%d"

    .line 22
    .line 23
    :goto_0
    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private updateMinimumWidth()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 9
    .line 10
    if-ge v2, v4, :cond_1

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v5, "%0"

    .line 15
    .line 16
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 20
    .line 21
    const-string v6, "d"

    .line 22
    .line 23
    invoke-static {v4, v5, v6}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x1

    .line 28
    new-array v5, v5, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    aput-object v6, v5, v1

    .line 35
    .line 36
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-le v4, v3, :cond_0

    .line 51
    .line 52
    move v3, v4

    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    return-object v0
.end method

.method public final getRangeMaximum()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    return v0
.end method

.method public final getRangeMinimum()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    return v0
.end method

.method public final getShowLeadingZeroes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    return v0
.end method

.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    const-string p2, ""

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 9
    .line 10
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 14
    .line 15
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    .line 33
    .line 34
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 47
    .line 48
    iget p2, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 49
    .line 50
    if-ge p1, p2, :cond_2

    .line 51
    .line 52
    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 53
    .line 54
    :cond_2
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget p2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 64
    .line 65
    const/4 p3, 0x1

    .line 66
    invoke-interface {p1, p0, p2, p3, p3}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x43

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x43

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumericTextView;->handleKeyUp(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public final setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    return-void
.end method

.method public final setRange(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 6
    .line 7
    :cond_0
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 8
    .line 9
    if-eq p1, p2, :cond_1

    .line 10
    .line 11
    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 12
    .line 13
    int-to-double p1, p2

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    sget-wide v0, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    .line 19
    .line 20
    div-double/2addr p1, v0

    .line 21
    double-to-int p1, p1

    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateMinimumWidth()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
