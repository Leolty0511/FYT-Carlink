.class Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TonalPalette"
.end annotation


# instance fields
.field final h:[F

.field final l:[F

.field final maxHue:F

.field final minHue:F

.field final s:[F


# direct methods
.method public constructor <init>([F[F[F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    array-length v1, p2

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    array-length v0, p2

    .line 9
    array-length v1, p3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    .line 17
    .line 18
    array-length p2, p1

    .line 19
    const/high16 p3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 20
    .line 21
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, p2, :cond_0

    .line 25
    .line 26
    aget v2, p1, v1

    .line 27
    .line 28
    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput p3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 40
    .line 41
    iput v0, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "All arrays should have the same size. h: "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " s: "

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " l: "

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method
