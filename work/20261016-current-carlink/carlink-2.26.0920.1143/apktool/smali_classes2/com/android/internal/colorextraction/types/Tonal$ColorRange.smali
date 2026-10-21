.class public Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorRange"
.end annotation


# instance fields
.field private mHue:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mLightness:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSaturation:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public containsColor(FFF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 29
    .line 30
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    return v0

    .line 41
    :cond_2
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method public getCenter()[F
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Float;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Float;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Float;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sub-float/2addr v2, v3

    .line 41
    const/high16 v3, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v2, v3

    .line 44
    add-float/2addr v2, v1

    .line 45
    const/4 v1, 0x0

    .line 46
    aput v2, v0, v1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/Float;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Float;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/Float;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    sub-float/2addr v2, v4

    .line 85
    div-float/2addr v2, v3

    .line 86
    add-float/2addr v2, v1

    .line 87
    const/4 v1, 0x1

    .line 88
    aput v2, v0, v1

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/lang/Float;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Ljava/lang/Float;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    sub-float/2addr v2, v4

    .line 127
    div-float/2addr v2, v3

    .line 128
    add-float/2addr v2, v1

    .line 129
    const/4 v1, 0x2

    .line 130
    aput v2, v0, v1

    .line 131
    .line 132
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const-string v1, "H: %s, S: %s, L %s"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
